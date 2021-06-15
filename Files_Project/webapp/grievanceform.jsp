<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Grievance Form</title>
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
	margin-left: 150px;
}
</style>
</head>

<body>
	<br>
	<h1 style="text-align: center ;text-decoration:underline">Grievance Form</h1>
	<br>
	<br>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span9">
					<div class="content">
						<div class="module">
							<div class="module-head">
								<form action="grievance.jsp" method="post">
									<div class="module-body table">
										<table cellpadding="0" cellspacing="0" border="0"
											class="datatable-1  table table-bordered table-striped  display  "width="100%">
											<%
											String hno = (String) session.getAttribute("hno");
											try {
												Connection con = Connect.getCon();
												Statement st = con.createStatement();
												String gid = "";
												ResultSet rs = st.executeQuery("select nvl(max(gid),0)+1 from grievance");
												if (rs.next()) {
													gid = rs.getString(1);
												}
											%>
											<tbody>
												<tr>
													<td><b>Grievance Id</b></td>
													<td><%=gid%></td>
												</tr>
												<tr>
													<td><b>House Number </b></td>
													<td><%=hno%></td>
												</tr>
												<tr>
													<td><b>Department Name</b></td>
													<td><%@include file="DepartmentsDropDownList.jsp"%>
													</td>
												</tr>
												<tr>
													<td><b>Complaint Details </b></td>

													<td><textarea rows="5" cols="15" name="prob" required></textarea>
													</td>
												</tr>
												<tr>
													<td><b>Category</b></td>

													<td><input type="radio" name="catg" value="Normal"
														class="form-check-input" id="flexRadioDefault2" />Normal
														<br> <input type="radio" name="catg"
														value="Emergency" class="form-check-input"
														id="flexRadioDefault2" />Emergency 
											  <%
                                               } catch (Exception e) {
                                                   out.println(e);
                                                  }
                                                 %>
												<tr>
													<td><button type="submit" class=" btn  btn-secondary">Submit</button></td>
													<td><button type="reset" class="btn btn-dark" >Reset</button></td>
												</tr>
											</tbody>
										</table>
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
