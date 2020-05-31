<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prescription</title>
</head>
<body>

<% 

	String md=request.getParameter("med");
	String dig=request.getParameter("digno");
	String patID=request.getParameter("ptID");
		
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minorpro","root","root");
		PreparedStatement pst=con.prepareStatement("insert into prescription(medicins,diagnosis,patientID) values(?,?,?)");
		pst.setString(1, md);
		pst.setString(2, dig);
		pst.setString(3, patID);
		
		int r=pst.executeUpdate();
	
		if(r>0)
		{%>
		<script type ="text/javascript">
		alert("prescription uploaded");
		window.location.href="doc.jsp";
		</script>
		<%}
		else
	{%>

		<script type ="text/javascript">
		alert("prescription upload failed");
		window.location.href="givPrs.jsp";
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