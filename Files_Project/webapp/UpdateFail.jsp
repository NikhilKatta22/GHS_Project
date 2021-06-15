<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateFail</title>
</head>
<body>
<%
String gid = (String) session.getAttribute("gid");
out.println("No such complaint with the id:"+gid);
out.println("check the Grievances <a href='ViewComplaints.jsp'>View Grievance</a>");
%>
</body>
</html>