<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Doctor Portal</title>
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
	<h3 style="padding-left:25px; font-family: 'Quicksand'; font-size: 27px;"><strong>Motherhood Healthcare Portal</strong></h3>
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
		<a href="logout.jsp"><div class="five"><strong>Logout</strong></div>
		</a>
</div>

</div>
<div style="width:60%; height:700px; position:absolute; top:200px; left:300px; font-family: 'Quicksand';font-size: 23px;">
<%
String docid=(String)session.getAttribute("dLog");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("select dNm,dDob,dGndr,dAddress,dCliAdd,dHosAdd,dExp,dQual,dMob,dLndlin,dEmail,dSpeQ,dFee,dTfrom,dTto from regdoctor where dLog=?");
pst.setString(1, docid);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
%>

<form action="docUp.jsp">
<table align="center">
<% 

String nm=rs.getString(1);
String dob=rs.getString(2);
String gndr=rs.getString(3);
String add=rs.getString(4);
String cliAd=rs.getString(5);
String hosAd=rs.getString(6);
String exp=rs.getString(7);
String qul=rs.getString(8);
String mob=rs.getString(9);
String ll=rs.getString(10);
String mail=rs.getString(11);
String sQul=rs.getString(12);
String fee=rs.getString(13);
String tfr=rs.getString(14);
String tTo=rs.getString(15);
%>


<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Name</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dNm" value="<%=nm %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Date of Birth</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="date" name="dDob" value="<%=dob %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Gender</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="dGndr" value="male"/>male</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="dGndr" value="female"/>female</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Address</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dAdd" value="<%=add %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Clinic Address</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dCliadd" value="<%=cliAd %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Hospital Address</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dHosadd" value="<%=hosAd %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Experience</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dExp" value="<%=exp %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Qualification</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dQua" value="<%=qul %>"/></h3></td>
</tr>
        
<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Mobile Number</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dMob" value="<%=mob %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Landline Number</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dLand" value="<%=ll %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Email</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dEmail" value="<%=mail %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Special Achievement</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dSpe" value="<%=sQul %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Fee</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="dFee" value="<%=fee %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Timing</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="time" name="dTfr" value="<%=tfr %>"/></h3>
&nbsp to &nbsp <h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="time" name="dTto" value="<%=tTo %>"/></h3></td>
</tr>

<tr>
<td colspan="2" align="center"><h3 style="font-family: 'Quicksand';font-size: 30px;"><button class="button">Update Profile</button></h3></td>
</tr>

<% 
}
else
{ 
%>

<h2>No Data Found</h2>

<% 
}
}
catch(SQLException e)
{
	e.printStackTrace();
}

%>
</table>
</form>
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
