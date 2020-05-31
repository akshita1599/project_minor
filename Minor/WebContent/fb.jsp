<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<% 

	String em=request.getParameter("fbEm");
	String fb=request.getParameter("feedback");
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("insert into feedback values(?,?)");
		pst.setString(1, em);
		pst.setString(2, fb);
		int r=pst.executeUpdate();
		if(r>0)
		{%>
		<script type ="text/javascript">
		alert("Feedback Uploaded");
		window.location.href="home.jsp";
		</script>
		<%}
		else
	{%>

		<script type ="text/javascript">
		alert("Oops..!!!!! Something went wrong");
		window.location.href="home.jsp";
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