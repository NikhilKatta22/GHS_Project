<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
      type="text/css"
      href="bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      type="text/css"
      href="images/icons/css/font-awesome.css"
      rel="stylesheet"
    />
    <link type="text/css" href="css/sidemenu.css" rel="stylesheet" />
  </head>
  <body>
  <%
	String s5 = (String) session.getAttribute("dname");	
	%>
	<h1 style="text-align: center; text-decoration:underline"><% out.print("Welcome To "+ s5 + " Department"); %></h1>
    <br />
    <br />
    <div class="logout">
      <a href="LogOut.jsp">LOGOUT</a>
    </div>
    <div class="sidenav">
      <h2 style="color: white">Actions</h2>
      <br />
      <a href="ViewComplaints.jsp">View Complaints</a><br />
      <a href="EmployeAction.jsp">Update the status</a><br />
      <a href="ViewHouses.jsp">View Houses</a><br/>
      <a href="ViewUserSugg&Feedbacks.jsp">View Feedbacks</a><br />
      <a href="SendAcknowledgment.jsp">Send Acknowledgment</a><br />
    </div>
    <div id="Uimage">
      <img src="bootstrap/images/department.png" />
    </div>
    <% 	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("dname")==null)
			response.sendRedirect("Home.jsp");
        //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	%>
  </body>
</html>
