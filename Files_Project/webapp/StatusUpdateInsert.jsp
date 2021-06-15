<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import ="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
	String gid = (String) session.getAttribute("gid");
	String status = request.getParameter("status");
	String doc = request.getParameter("doc");

	try {
		Connection con=Connect.getCon();
		Statement st = con.createStatement();
		String date = "";
		int no = st.executeUpdate("update grievance set status='" + status+ "', doc='" + doc + "' where gid=" + gid);
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>