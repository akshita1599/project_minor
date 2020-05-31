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

	String adLog=request.getParameter("aid");	
	String adPsw=request.getParameter("apwd");
	
	try{

		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro", "root", "root");
		
		PreparedStatement pst=con.prepareStatement("select aNm from regadmin where aLog=? and aPass=?");
		pst.setString(1, adLog);
		pst.setString(2, adPsw);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("aLog", adLog);
			session.setAttribute("aNm", rs.getString(1));
			response.sendRedirect("admin.jsp");
		}

		else
		{%>

		<script type ="text/javascript">
		alert("password incorrect");
		window.location.href="login.jsp";
		</script>
		<%}
		
	}catch(ClassNotFoundException|SQLException e)
	{
		out.print(e);
	}	

%>

</body>
</html>