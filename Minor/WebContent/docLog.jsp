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

	String dcLog=request.getParameter("did");	
	String dcPsw=request.getParameter("dpwd");
	
	try{

		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro", "root", "root");
		
		PreparedStatement pst=con.prepareStatement("select dNm,dID from regdoctor where dLog=? and dPass=?");
		pst.setString(1, dcLog);
		pst.setString(2, dcPsw);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("dLog", dcLog);
			session.setAttribute("dNm", rs.getString(1));
			session.setAttribute("docID", rs.getString(2));
			response.sendRedirect("doc.jsp");
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