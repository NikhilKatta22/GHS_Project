<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Suggestions and Feedback</title>
</head>
<body>
	<%
	String sugg = request.getParameter("sugg");
	String stdep = request.getParameter("department");
	String fname=(String)session.getAttribute("userid");
	String hno = (String) session.getAttribute("hno");
	try {
		Connection con = Connect.getCon();
		Statement st = con.createStatement();
		String sid = "";
		ResultSet rs1 = st.executeQuery("select nvl(max(sid),0)+1 from suggfeedback");
		if (rs1.next()) {
			sid = rs1.getString(1);
		}
		ResultSet rs = st.executeQuery("select to_char(Sysdate,'dd-mon-yy')from dual");
		String date = "";
		if (rs.next()) {
			date = rs.getString(1);
		}
		System.out.println(sid);
		System.out.println(hno);
		System.out.println(sugg);
		System.out.println(stdep);
		System.out.println(date);
		int no = st.executeUpdate("insert into suggfeedback values(" + sid + ",'"+ sugg + "','" + hno + "','" + stdep + "','" + date + "')");
		out.println("<center><br><h1>Success</h1><br><p>" + fname	+ " you have successfully sent your feedback </p> <p><a href='SuggestionsFeedback.jsp'>submit another ?</a></p><p><a href='UserModule.jsp'>Go to User Module</a></p></center>");
	} catch (Exception e) {
		out.println(e);
	}
	%>
</body>
</html>