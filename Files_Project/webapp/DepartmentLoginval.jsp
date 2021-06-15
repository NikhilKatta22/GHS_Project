<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Login Verification</title>
</head>
<body>
	<%
    String s1 = request.getParameter("departmentid");
	String s2 = request.getParameter("pass");
	String s3 = request.getParameter("department");
	try {
		Connection con = Connect.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st
		.executeQuery("select deptname from departmentlogin where deptid="
				+ s1 + " and password='" + s2 + "'");
		String dname = "";
		String dhname = "";
		if (rs.next()) {
			dname = rs.getString(1);			
			session.setAttribute("s1", s1);
			session.setAttribute("dname", dname);
			//session.setAttribute("dhname", dhname);

			if (s3.equals(dname)) {

		          response.sendRedirect("DepartmentWelcome.jsp");
			}

		}
	} catch (Exception e) {
		out.println(e);
	}
	%>
</body>
</html>