<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align=center>
		<%
		String s1 = request.getParameter("department");

		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int no = st.executeUpdate(
			"delete from departmentlogin where deptname='" + s1 + "'");
			out.println("<center><br><h3>Dropped department successfully</h3> <br><p><a style='color:white;border:2px solid black;background:black;text-decoration:none;border-radius:10px;' href='ManageDepartments.jsp'>Go back</a></p><center>");

		} catch (Exception e) {
			out.println(e);
		}
		%>
	
</body>
</html>