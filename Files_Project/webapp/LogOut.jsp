<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
session.setAttribute("userid", null);
session.setAttribute("password",null);
session.setAttribute("hno", null);
session.setAttribute("s1", null);
session.setAttribute("dname", null);
session.setAttribute("id",null);
session.invalidate();
response.sendRedirect("Home.jsp");
%>
</body>
</html>