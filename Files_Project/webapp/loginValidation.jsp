<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<%
String userid = request.getParameter("uname");
String pwd = request.getParameter("pass");
String hno = request.getParameter("hno");
Connection con = Connect.getCon();
Statement st = con.createStatement();

ResultSet rs;
rs = st.executeQuery("select * from Persons where uname='" + userid
		+ "' and pass='" + pwd + "' and Hno='" + hno + "'");
if (rs.next()) {
	session.setAttribute("userid", userid);
	session.setAttribute("password", pwd);
	session.setAttribute("hno", hno);
	//response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	if (session.getAttribute("userid") == null) {
		response.sendRedirect("Home.html");
	}
	response.sendRedirect("UserModule.jsp");

} else {
	out.println(
	"Invalid username/password <a href='index.jsp'><br> Try Again</a>");
}
%>
