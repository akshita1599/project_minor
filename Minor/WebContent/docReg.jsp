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

	String docnm=request.getParameter("dNm");
	String docdob=request.getParameter("dDob");
	String docgndr=request.getParameter("dGndr");
	String docadd=request.getParameter("dAdd");
	String doccli=request.getParameter("dCliadd");
	String dochos=request.getParameter("dHosadd");
	String docexp=request.getParameter("dExp");
	String docqua=request.getParameter("dQua");
	String docmob=request.getParameter("dMob");
	String doclnd=request.getParameter("dLand");
	String docemail=request.getParameter("dEmail");
	String docspe=request.getParameter("dSpe");
	String doclog=request.getParameter("dLog");
	String docpas=request.getParameter("dPass");
	String docrpas=request.getParameter("dRpass");
	String docfee=request.getParameter("dFee");
	String docTfr=request.getParameter("dTfr");
	String docTto=request.getParameter("dTto");
		
	if(docpas.equals(docrpas))
	{
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("insert into regdoctor (dNm,dDob,dGndr,dAddress,dCliAdd,dHosAdd,dExp,dQual,dMob,dLndlin,dEmail,dSpeQ,dLog,dPass,dFee,dTfrom,dTto)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, docnm);
		pst.setString(2, docdob);
		pst.setString(3, docgndr);
		pst.setString(4, docadd);
		pst.setString(5, doccli);
		pst.setString(6, dochos);
		pst.setString(7, docexp);
		pst.setString(8, docqua);
		pst.setString(9, docmob);
		pst.setString(10, doclnd);
		pst.setString(11, docemail);
		pst.setString(12, docspe);
		pst.setString(13, doclog);
		pst.setString(14, docpas);
		pst.setString(15, docfee);
		pst.setString(16, docTfr);
		pst.setString(17, docTto);
		
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
		alert("password doesn't match");
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