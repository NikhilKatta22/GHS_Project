<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align=center>
		<%
		String dname = (String) session.getAttribute("dname");
		String ack = request.getParameter("ack");
		String thno = request.getParameter("thno");

		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String no = "";
			ResultSet rs = st.executeQuery("select nvl(max(ackno),0)+1 from ack");
			if (rs.next()) {
				no = rs.getString(1);
			}
			int n = st.executeUpdate(
			"insert into ack (ackno,acknowledgment,thno,fdept)values(" + no+ ",'" + ack + "','" + thno + "','" + dname + "')");
			out.println("<center><br><h1>Sent Successfully</h1> <br><p>Want to send another one <a href='SendAcknowledgment.jsp'>Click here!</a></p><p><br><a href='DepartmentWelcome.jsp' style='border:2px solid black;color:white;background:black;text-decoration:none;border-radius:10px;'>Return to Department Module</a></p></center>");
		} catch (Exception e) {
			out.println(e);
		}
		%>
	
</body>
</html>