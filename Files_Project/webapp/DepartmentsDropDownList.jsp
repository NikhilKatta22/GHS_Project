<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DropDownlist</title>
</head>
<body>
	<select name="department" required>
		<option value="" selected>Select Department</option>

		<%
		try {
			Connection con1 = Connect.getCon();
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery(
			"select deptname from departmentlogin order by deptid");
			String s = "";

			while (rs1.next()) {
				s = rs1.getString(1);
				System.out.println(s);
		%>
		<option value=<%=s%>><%=s%></option>
		<%
		}
		%>
	</select>

	<%
	//**Should I input the codes here?**
	} catch (Exception e) {
	out.println("wrong entry" + e);
	}
	%>
</body>
</html>