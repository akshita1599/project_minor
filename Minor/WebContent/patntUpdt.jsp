<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Patient Portal</title>
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
String ptid=(String)session.getAttribute("pLogID");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("select pName,pAge,pMarital,pHusNm,pContct,pEmail,pEmer,pAddress,pAller,pMedi,pAlco,pSmoke,pMediHis,pSurHis,pFamHis from regpatient where pLogID=?");
pst.setString(1, ptid);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
%>

<form action="update.jsp">
<table align="center">

<% 

String nm=rs.getString(1);
String age=rs.getString(2);
String mar=rs.getString(3);
String hus=rs.getString(4);
String cont=rs.getString(5);
String email=rs.getString(6);
String econ=rs.getString(7);
String add=rs.getString(8);
String aller=rs.getString(9);
String med=rs.getString(10);
String alco=rs.getString(11);
String smoke=rs.getString(12);
String medhis=rs.getString(13);
String surhis=rs.getString(14);
String fammed=rs.getString(15);	
%>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Patient Name</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pNm" value="<%=nm %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Age</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pAge" value="<%=age %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Marital Status</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pMar" value="married"/>Married</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pMar" value="unmarried"/>Unmarried</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Husband/ Father Name</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pHnm" value="<%=hus %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Contact Number</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pContact" value="<%=cont %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Email ID</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pEmail" value="<%=email %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Emergency Contact Number</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pEmcon" value="<%=econ %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Address</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="text" name="pAdd" value="<%=add %>"/></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Allergy</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pAller" value="yes"/>yes</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pAller" value="no"/>no</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Medication</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pMed" value="yes"/>yes</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pMed" value="no"/>no</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Alcoholic</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pAlco" value="yes"/>yes</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pAlco" value="no"/>no</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Smoker</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pSmoke" value="yes"/>yes</h3>
<h3 style="font-family: 'Quicksand';font-size: 20px;"><input type="radio" name="pSmoke" value="no"/>no</h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Medical History</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><textarea name="pMedhis"><%=medhis %></textarea></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Surgical History</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><textarea name="pSurhis"><%=surhis %></textarea></h3></td>
</tr>

<tr>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;">Family Medical History</h3></td>
<td><h3 style="font-family: 'Quicksand';font-size: 20px;"><textarea name="pFammed"><%=fammed %></textarea></h3></td>
</tr>

<tr>
<td colspan="2" align="center"><h3 style="font-family: 'Quicksand';font-size: 30px;"><button class="button">Update Profile</button></h3></td>
</tr>

<% }
  else
{  %>

<h2>No Data Found</h2>

<% 
}
}catch(SQLException e)
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
