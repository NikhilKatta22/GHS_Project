<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"	rel="stylesheet">
<link type="text/css" href="css/sidemenu.css"	rel="stylesheet">
</head>
<body>
	<h1 style="text-align: center; text-decoration:underline">USER MODULE</h1>
	<div class="logout">
         <a href="LogOut.jsp">LOGOUT</a>
    </div>
	<div class="sidenav">
		<h2 style="color: white;">Actions</h2>
		<br> <a href="grievanceform.jsp">Grievance Form</a><br /> <a
			href="GrievanceRecords.jsp">Grievance Record</a><br /> <a
			href="SuggestionsFeedback.jsp">Suggestion Feedback Form</a><br /> <a
			href="UserAcknowledgement.jsp">Acknowledgments</a><br /> <a
			href="UserChangePass.jsp">Change Password</a><br />
	</div>
	<div id="Uimage">
		<img src="bootstrap/images/person.jpg">
	</div>
	<% 	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("userid")==null)
			response.sendRedirect("Home.jsp");
        //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	%>

</body>
</html>
