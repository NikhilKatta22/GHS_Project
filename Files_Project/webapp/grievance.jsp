<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grievance Register</title>
</head>
<body>
	<%
	String hno = (String) session.getAttribute("hno");
	String dname = request.getParameter("department");
	String prob = request.getParameter("prob");
	String category = request.getParameter("catg");	
	try {
		Connection con = Connect.getCon();
		Statement st = con.createStatement();
		String date = "";
		ResultSet rs = st.executeQuery("select to_char(Sysdate,'dd-mon-yy')from dual");
		if (rs.next()) {
			date = rs.getString(1);
		}
		String gid = "";
		ResultSet rs1 = st.executeQuery("select nvl(max(gid),0)+1 from grievance");
		if (rs1.next()) {
			gid = rs1.getString(1);
		}
		
		int no = st.executeUpdate(
		"insert into grievance(gid,hno,dname,day,problem,category) values("
				+ gid + ",'" + hno + "','" + dname + "','" + date + "','"
				+ prob + "','" + category + "')");
		//response.setHeader("Cache-Control","no-store,no-store,must-revalidate");
		    session.setAttribute("gid", gid);
			response.sendRedirect("Success.html");
			
	} catch (Exception e) {
		out.println(e);
	}
	%>
</body>
</html>