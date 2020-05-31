<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caretaker</title>
</head>
<body>
<% 

	String nm=request.getParameter("nm");
	String wrk=request.getParameter("work");
	String cont=request.getParameter("cont");
	String add=request.getParameter("address");

	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("insert into caretaker values(?,?,?,?)");
		pst.setString(1, nm);
		pst.setString(2, wrk);
		pst.setString(3, cont);
		pst.setString(4, add);
		int r=pst.executeUpdate();
		
		if(r>0)
		{%>
		<script type ="text/javascript">
		alert("inserted successfully");
		window.location.href="admin.jsp";
		</script>
		<%}
		else
	{%>

		<script type ="text/javascript">
		alert("data insertion failed");
		window.location.href="caretaker.jsp";
		</script>
		<%}
	}
	catch(SQLException e)
	{
		System.out.println(e);
	}
	
%>
</body>
</html>