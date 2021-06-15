<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<table align=center>
		<%			
		try {
			String s1 = (String) session.getAttribute("userid");	
			String s2 = request.getParameter("newpassword");
			String s3 = request.getParameter("confirmpassword");
			if(s2.equals(s3)){
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int no = st.executeUpdate("update persons set pass='" + s2 + "' where uname= '" + s1+"'");  
			st.close();
			out.println("<center><h1>Success</h1><p>welcome..." + s1+ "   you have successfully changed password <br>login <a href='LogOut.jsp'>Login</a><p></center>");
		}
			else{
				%>
				<script type="text/javascript">
				alert("Password and Confirm Password Field do not match  !!");
		          document.chngpwd.confirmpassword.focus();
				</script>
				<%
		}
		}
		catch (Exception e) {
			
			System.out.println(e);
		}
		
		%>
	</table>
</body>
</html>