<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Portal</title>
</head>
<body>

<% 

	String admnm=request.getParameter("aNm");
	String admdob=request.getParameter("aDob");
	String admgndr=request.getParameter("aGndr");
	String admqua=request.getParameter("aQua");
	String admcntct=request.getParameter("aContct");
	String admemail=request.getParameter("aEmail");
	String admadd=request.getParameter("aAdd");
	String admlog=request.getParameter("aLog");
	String admpas=request.getParameter("aPass");
	String admrpas=request.getParameter("aRpass");
		
	if(admpas.equals(admrpas))
	{
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("insert into regadmin values(?,?,?,?,?,?,?,?,?)");
		pst.setString(1, admnm);
		pst.setString(2, admdob);
		pst.setString(3, admgndr);
		pst.setString(4, admqua);
		pst.setString(5, admcntct);
		pst.setString(6, admemail);
		pst.setString(7, admadd);
		pst.setString(8, admlog);
		pst.setString(9, admpas);
		
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