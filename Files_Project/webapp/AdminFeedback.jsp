<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select House</title>
<style>
.statuscenter {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<h1 style="text-align: center;">Select House</h1>
	<br>
	<form action="ProblemInfo.jsp" method="post">
		<div class="statuscenter">
			<table>
				<%
				try {

					Connection con = Connect.getCon();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select hno from SUGGFEEDBACK where stdep='Adminstrator'");
					String s = "";
					if (rs.next()) {

						s = rs.getString(1);
						session.setAttribute("hno", s);
						
				%>
				<tr>
					<td>House No:</td>
					<td><select name=eid>

							<option value=<%=s%>><%=s%></option>
							</select></td>
				</tr>
				<tr class="blank_row">
					<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td><input type=submit value=select></td>
				</tr>
			</table>
							<%
							} else {
							out.println("No FeedBacks Exist");							
							out.println("<p><a href='Adwelcome.html'> Click here to go to admin module</a><p>");
							}
							%>
					
			<%
			} catch (Exception e) {
			out.println(e);
			}
			%>
		</div>
	</form>
</body>
</html>