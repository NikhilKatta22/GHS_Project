<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Add Departments</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link type="text/css" href="css/theme.css" rel="stylesheet" />
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet" />
<link type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet" />
<style>
.row {
	margin-left: 180px;
}
</style>
</head>

<body>
	<br />
	<h1 style="text-align: center">Add Departments</h1>
	<br />
	<br />

	<div class="navbar navbar-fixed-top">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".navbar-inverse-collapse"> <i
				class="icon-reorder shaded"></i>
			</a> <a class="brand" href="ManageDepartments.jsp">Back</a>
		</div>
	</div>

	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span9">
					<div class="content">
						<div class="module">
							<div class="module-head">
								<form action="InsertNewDepartment.jsp" method="post">
									<div class="module-body table">
										<table cellpadding="0" cellspacing="0" border="0"
											class="
                          datatable-1
                          table table-bordered table-striped
                          display
                        "
											width="100%">
											<%   
    try{
		   Connection con = Connect.getCon();
				Statement st = con.createStatement();
				String duid = "";
				ResultSet rs = st.executeQuery("select nvl(max(deptid),0)+1 from  departmentlogin");
				if (rs.next()) {
					duid = rs.getString(1);
				%>
											<tbody>
												<tr>
													<td>Department id:</td>
													<td><%=duid%></td>
												</tr>
												<tr>
													<td>Password:</td>
													<td><input type=password name=pwd required></td>
												</tr>
												<tr>
													<td>Department Name:</td>
													<td><input type=text name=dname required></td>
												</tr>
												<tr>
													<td>Head Name:</td>
													<td><input type=text name=dhname required></td>
												</tr>												
												<tr class="blank_row">
													<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
												</tr>
												<tr>
													<td><button type="submit" class="btn btn-primary ">Add</button></td>
													<td><button type="reset" class="btn btn-primary ">Clear</button></td>
												</tr>
												<%
	        	                                  }
	                                             %>
											</tbody>
										</table>
										<%
										} catch (Exception e) {
		                                               out.println(e);
										}
		                                          %>
									</div>
								</form>

							</div>
						</div>
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->
</body>
</html>
