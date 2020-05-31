<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Doctors & Appointment</title>

<link rel="stylesheet" href="ext.css" type="text/css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dancing+Script">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
  
<style>



</style>
  
</head>

<body>
<div class="bodyDiv">

<div class="top2">
	<h3 style="padding-left:25px; font-family: 'Quicksand';font-size: 27px;"><strong>Motherhood Healthcare Portal</strong></h3>
	<div class="icon">
		<ul>
    		<li><a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
  			<li><a href="https://twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
       		<li><a href="https://www.linkedin.com/feed/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
       		<li><a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
       		<li><a href="https://www.google.com/"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
   		</ul>
	</div>
</div>
<div class="top">
<div class="topImg">
	<a href="home.jsp"><img src="images/Screenshot.png" width="100%" height="100%"></a>
</div>
		<a href="diet.jsp"><div class="one"><strong>Diet Plan</strong></div>
		</a>
		<a href="tips.jsp"><div class="two"><strong>Health Tips</strong></div>
		</a>
		<a href="doctor.jsp"><div class="three"><strong>Doctors & Appointment</strong></div>
		</a>
		<a href="care.jsp"><div class="four"><strong>Hire for Care</strong></div>
		</a>
		<a href="login.jsp"><div class="five"><strong>Login</strong></div>
		</a>
    	<a href="register.jsp"><div class="six"><strong>Register</strong></div>
    	</a>
</div>
<div class="tbl">
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("select dNm,dCliAdd,dQual,dID,dFee,dTfrom,dTto from regdoctor");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<table width="100%" height="100%" align="center">

<% 

String nm=rs.getString(1);
String cli=rs.getString(2);
String qul=rs.getString(3);
String id=rs.getString(4);
String fee=rs.getString(5);
String tfr=rs.getString(6);
String tTo=rs.getString(7);

%>

	<tr>
    <%-- <td rowspan="9" width="300px" align="center">image</td> --%>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>NAME : </strong><%=nm %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>DOCTOR ID : </strong><%=id %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>QUALIFICATION : </strong><%=qul %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>CLINIK ADDRESS : </strong><%=cli %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>TIMING : </strong><%=tfr %> &nbsp to &nbsp <%=tTo %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>FEE : </strong><%=fee %></h3></td>
    </tr>
    
    <tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong><a href="docDetails.jsp?dID=<%=id %>">MORE DETAILS</a></strong></h3></td>
    </tr>
    
    <tr>
    <td align="right"><a href="takeApp.jsp"><button class="app"><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>Take Appointment</strong></h3></button></a></td>
    </tr>

	<tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"></h3></td>
    </tr>

	<tr>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"></h3></td>
    </tr>

</table>  
<% }
  
}catch(SQLException e)
{
	e.printStackTrace();
}

%>
</div>  
    
<div class="bottom"></div>
	<div class="about">
    	<h3 align="right" style="font-family: 'Quicksand';font-size: 23px;">
        	<strong>ABOUT US :-</strong><br>
            Motherhood Healthcare Website & Patient Record Management
        </h3>
    </div>
    
    <div class="contact">
    	<h3 align="left" style="font-family: 'Quicksand';font-size: 23px;">
        	<strong>CONTACT US :-</strong><br>
            Mob.- 9993706681, 9039444603<br>
            Email - akuchhattri14@gmail.com,
            akshitapargir15@gmail.com
        </h3>
    </div>
</div>
</body>
</html>
