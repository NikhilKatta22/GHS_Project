<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String sugg = request.getParameter("sugg");
	String stdep = request.getParameter("stdep");
	String fname=(String)session.getAttribute("userid");
	String hno = (String) session.getAttribute("hno");
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String uname = "wethree";
		String password = "proj";
		Connection con = DriverManager.getConnection(url, uname, password);
		Statement st = con.createStatement();
		String sid = "";
		ResultSet rs1 = st
		.executeQuery("select nvl(max(sid),0)+1 from suggfeedback");
		if (rs1.next()) {
			sid = rs1.getString(1);
		}
		ResultSet rs = st
		.executeQuery("select to_char(Sysdate,'dd-mon-yy')from dual");
		String date = "";
		if (rs.next()) {
			date = rs.getString(1);
		}
		System.out.println(sid);
		System.out.println(hno);
		System.out.println(sugg);
		System.out.println(stdep);
		System.out.println(date);
		int no = st.executeUpdate("insert into suggfeedback values(" + sid + ",'"
		+ sugg + "','" + hno + "','" + stdep + "','" + date + "')");

		out.println("<font color=green size=6>" + fname
		+ " you have successfully sent your feedback</font>");
	} catch (Exception e) {
		out.println(e);
	}
	%>
</body>
</html>
