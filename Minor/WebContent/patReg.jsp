<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Portal</title>
</head>
<body>

<% 

	String patnm=request.getParameter("pNm");
	String patlog=request.getParameter("pLog");
	String patpass=request.getParameter("pPass");
	String patrpass=request.getParameter("pRpass");
	String patage=request.getParameter("pAge");
	String patmar=request.getParameter("pMar");
	String pathus=request.getParameter("pHnm");
	String patcon=request.getParameter("pContact");
	String patemail=request.getParameter("pEmail");
	String patecon=request.getParameter("pEmcon");
	String patadd=request.getParameter("pAdd");
	String pataller=request.getParameter("pAller");
	String patmed=request.getParameter("pMed");
	String patalco=request.getParameter("pAlco");
	String patsmoke=request.getParameter("pSmoke");
	String patmedhis=request.getParameter("pMedhis");
	String patsurhis=request.getParameter("pSurhis");
	String patfammed=request.getParameter("pFammed");
	
	if(patpass.equals(patrpass))
	{
		
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		System.out.print("driver loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		System.out.print("connected.....");
		PreparedStatement pst=con.prepareStatement("insert into regpatient (pName,pLogID,pPsw,pAge,pMarital,pHusNm, pContct,pEmail,pEmer,pAddress,pAller,pMedi,pAlco,pSmoke,pMediHis,pSurHis,pFamHis)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, patnm);
		pst.setString(2, patlog);
		pst.setString(3, patpass);
		pst.setString(4, patage);
		pst.setString(5, patmar);
		pst.setString(6, pathus);
		pst.setString(7, patcon);
		pst.setString(8, patemail);
		pst.setString(9, patecon);
		pst.setString(10, patadd);
		pst.setString(11, pataller);
		pst.setString(12, patmed);
		pst.setString(13, patalco);
		pst.setString(14, patsmoke);
		pst.setString(15, patmedhis);
		pst.setString(16, patsurhis);
		pst.setString(17, patfammed);
		
		int r=pst.executeUpdate();
	
		if(r>0)
		{%>
		<script type ="text/javascript">
		alert("registerd successfully");
		window.location.href="home.jsp";
		</script>
		<%}
		else
	{%>

		<script type ="text/javascript">
		alert("password incorrect");
		window.location.href="register.jsp";
		</script>
		<%}
	}
	catch(SQLException e)
	{
		System.out.println(e);
	}
}
%>

</body>
</html>