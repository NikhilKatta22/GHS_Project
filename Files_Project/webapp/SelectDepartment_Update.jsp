<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Department Information</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
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
        <a class="brand" href="ManageDepartments.jsp">Manage Departments</a>
      </div>
    </div>

    <h1 style="text-align: center;">Update Department Information</h1><br><br>
	<form action="DepartmentUpdateInformation.jsp" method="post">		
			<div class="statuscenter">
									
		          <%@include file="DepartmentsDropDownList.jsp" %></div><br><br>
				
							 <div class="statuscenter">	
			 <button type=submit class="btn btn-primary pull-right">Select</button></div>
		
		
	</form>
</body>
</html>