<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<%
String id=(String)session.getAttribute("pLogID");
String nm=request.getParameter("pNm");
String ag=request.getParameter("pAge");
String mr=request.getParameter("pMar");
String hnm=request.getParameter("pHnm");
String cntct=request.getParameter("pContact");
String mail=request.getParameter("pEmail");
String econ=request.getParameter("pEmcon");
String add=request.getParameter("pAdd");
String alr=request.getParameter("pAller");
String med=request.getParameter("pMed");
String alco=request.getParameter("pAlco");
String smo=request.getParameter("pSmoke");
String mhis=request.getParameter("pMedhis");
String shis=request.getParameter("pSurhis");
String fhis=request.getParameter("pFammed");

try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
PreparedStatement pst=con.prepareStatement("update regpatient set pName=?,pAge=?,pMarital=?,pHusNm=?,pContct=?,pEmail=?,pEmer=?,pAddress=?,pAller=?,pMedi=?,pAlco=?,pSmoke=?,pMediHis=?,pSurHis=?,pFamHis=? where pLogID=?");
pst.setString(1, nm);
pst.setString(2, ag);
pst.setString(3, mr);
pst.setString(4, hnm);
pst.setString(5, cntct);
pst.setString(6, mail);
pst.setString(7, econ);
pst.setString(8, add);
pst.setString(9, alr);
pst.setString(10, med);
pst.setString(11, alco);
pst.setString(12, smo);
pst.setString(13, mhis);
pst.setString(14, shis);
pst.setString(15, fhis);
pst.setString(16, id);

int r=pst.executeUpdate();
if(r>0)
{%>
<script type ="text/javascript">
alert("Profile Updated");
window.location.href="patient.jsp";
</script>
<%}
else
{%>

<script type ="text/javascript">
alert("Updation Failed");
window.location.href="patntUpdt.jsp";
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