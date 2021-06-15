<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>	
<%@ page import="grev.Connect" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modify</title>
</head>
<body>
	<table align=center>
		<%
		try {
			String s1 = (String) session.getAttribute("s1");
			String duid = request.getParameter("duid");
			String pwd = request.getParameter("pwd");
			String dhname = request.getParameter("dhname");
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int i = st.executeUpdate("update departmentlogin set password='" + pwd+ "',depthead='" + dhname +"' where deptname='" + s1 + "'");
			out.println("<center><h2> you have succesfully modified your details</h2> <p><a style='color:white;border:2px solid black;background:black;text-decoration:none;border-radius:10px;' href='ManageDepartments.jsp'>Go back</a></p><center>");
		} catch (Exception e) {
			out.println(e);
		}
		%>
	</table>
</body>
</html>