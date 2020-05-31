<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment</title>
</head>
<body>
<% 

	String drId=(String)session.getAttribute("id");
	String Pid=(String)session.getAttribute("ptntID");
	String tm=request.getParameter("time");
	String dt=request.getParameter("date");

	
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("update regpatient set pAppdate=?,pApTime=?,docID=? where pPatId="+Pid+"");
		pst.setString(1, dt);
		pst.setString(2, tm);
		pst.setString(3, drId);
		
		int r=pst.executeUpdate();
	
		if(r>0)
		{%>
		<script type ="text/javascript">
		alert("Appointment Taken");
		window.location.href="doctor.jsp";
		</script>
		<%}
		else
	{%>

		<script type ="text/javascript">
		alert("Appointment Not Given");
		window.location.href="takeApp.jsp";
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