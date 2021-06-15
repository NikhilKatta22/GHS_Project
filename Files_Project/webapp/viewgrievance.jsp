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
<body bgcolor=lightyellow text=green>
   
	<table align=center cellspacing=10 cellpadding=5 bordercolor=green
		border=3>
		<tr>
			<th>Grievance ID</th>
			<th>House No</th>
			<th>Send Date</th>
			<th>Problem</th>
			<th>Status</th>
			<th>Category</th>
			<th>Date Of Completion</th>
		</tr>
		<%
		try {
			String dname = (String) session.getAttribute("dname");

			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select gid,hno,to_char(sday,'dd-mon-yy'),problem,status,category,doc from grievance where dname='"+ dname + "'");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</body>
</html>