<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Portal</title>
</head>
<body>
<%
String docid=(String)session.getAttribute("dLog");
String nm=request.getParameter("dNm");
String dob=request.getParameter("dDob");
String gndr=request.getParameter("dGndr");
String add=request.getParameter("dAdd");
String cli=request.getParameter("dCliadd");
String hos=request.getParameter("dHosadd");
String exp=request.getParameter("dExp");
String qua=request.getParameter("dQua");
String mob=request.getParameter("dMob");
String lnd=request.getParameter("dLand");
String email=request.getParameter("dEmail");
String spe=request.getParameter("dSpe");
String fee=request.getParameter("dFee");
String tfr=request.getParameter("dTfr");
String tTo=request.getParameter("dTto");

try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("update regdoctor set dNm=?,dDob=?,dGndr=?,dAddress=?,dCliAdd=?,dHosAdd=?,dExp=?,dQual=?,dMob=?,dLndlin=?,dEmail=?,dSpeQ=?,dFee=?,dTfrom=?,dTto=? where dLog=?");
pst.setString(1, nm);
pst.setString(2, dob);
pst.setString(3, gndr);
pst.setString(4, add);
pst.setString(5, cli);
pst.setString(6, hos);
pst.setString(7, exp);
pst.setString(8, qua);
pst.setString(9, mob);
pst.setString(10, lnd);
pst.setString(11, email);
pst.setString(12, spe);
pst.setString(13, fee);
pst.setString(14, tfr);
pst.setString(15, tTo);
pst.setString(16, docid);

int r=pst.executeUpdate();
if(r>0)
{%>
<script type ="text/javascript">
alert("Profile Updated");
window.location.href="doc.jsp";
</script>
<%}
else
{%>

<script type ="text/javascript">
alert("Updation Failed");
window.location.href="updtDoc.jsp";
</script>
<%}
}
catch(SQLException e)
{
	e.printStackTrace();
}
%>
</body>
</html>