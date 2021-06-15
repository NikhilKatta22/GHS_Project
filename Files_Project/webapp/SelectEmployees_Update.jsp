<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Employee</title>
<link
      type="text/css"
      href="bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      type="text/css"
      href="bootstrap/css/bootstrap-responsive.min.css"
      rel="stylesheet"
    />
    <link type="text/css" href="css/theme.css" rel="stylesheet" />
    <link
      type="text/css"
      href="images/icons/css/font-awesome.css"
      rel="stylesheet"
    />
    <link
      type="text/css"
      href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
      rel="stylesheet"
    />
<style>
.statuscenter {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
<br>
<br>
<div class="navbar navbar-fixed-top">
      <div class="container">
        <a
          class="btn btn-navbar"
          data-toggle="collapse"
          data-target=".navbar-inverse-collapse"
        >
          <i class="icon-reorder shaded"></i>
        </a>
        <a class="brand" href="ManageEmployees.jsp">Manage Employees</a>
      </div>
    </div>
	<h1 style="text-align: center;">Select Employee</h1>
	<br>
	<form action="UpdateEmployeeDetails.jsp" method="post">
		<div class="statuscenter">
			<table>
				<tr>
					<td>Employee id:</td>
					<td><select name=eid>
							<%
							try {

								Connection con = Connect.getCon();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select eid from employees");
								String s = "";

								while (rs.next()) {
									s = rs.getString(1);
									System.out.println(s);
							%>
							<option value=<%=s%>><%=s%></option>
							<%
							}
							%>
					</select></td>
				</tr>
				<tr class="blank_row">
				<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
			</tr>
				<tr>
				<td>
				<input type=submit value=select></td></tr>
			</table>			
			<%
			} catch (Exception e) {
			out.println(e);
			}
			%>
			</table>
		</div>
	</form>
</body>
</html>