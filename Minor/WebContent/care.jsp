<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hire Caretakers</title>
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
    
<div style="width:69%; height:200px; position:absolute; left:220px; top:200px;">

<table width="100%" align="center" border="2px">


	<tr align="center"> 	
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>Name</strong></h3></td>
    <td width="150px"><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>Work</strong></h3></td>
    <td width="170px"><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>Contact Number</strong></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><strong>Address</strong></h3></td>
    </tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("select * from caretaker");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	
String nm=rs.getString(1);
String wrk=rs.getString(2);
String cont=rs.getString(3);
String add=rs.getString(4);

%>
    <tr> 	
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><%=nm %></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><%=wrk %></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><%=cont %></h3></td>
    <td><h3 style="font-family: 'Quicksand';font-size: 20px;"><%=add %></h3></td>
    </tr>
   
 
<% }
  
}catch(SQLException e)
{
	e.printStackTrace();
}

%>
</table> 
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
