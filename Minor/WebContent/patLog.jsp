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

	String ptLog=request.getParameter("pid");	
	String ptPsw=request.getParameter("ppwd");
	
	try{

		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro", "root", "root");
		
		PreparedStatement pst=con.prepareStatement("select pName,pPatId from regpatient where pLogID=? and pPsw=?");
		pst.setString(1, ptLog);
		pst.setString(2, ptPsw);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("pLogID", ptLog);
			session.setAttribute("pNm", rs.getString(1));
			session.setAttribute("ptntID", rs.getString(2));
			response.sendRedirect("patient.jsp");
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