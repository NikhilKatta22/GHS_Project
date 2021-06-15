<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ page import="java.sql.*" %> <%@ page
import="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Complaint Status Update</title>
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
  </head>
  <body>
    <br />
    <div class="navbar navbar-fixed-top">
      <div class="container">
        <a
          class="btn btn-navbar"
          data-toggle="collapse"
          data-target=".navbar-inverse-collapse"
        >
          <i class="icon-reorder shaded"></i>
        </a>
        <a class="brand" href="DepartmentWelcome.jsp">Department Module</a>
      </div>
    </div>

    <div class="wrapper">
      <div class="container">
        <h1 style="text-align: center">
          <b>Complaint Status Update</b>
        </h1>
        <div class="row">
          <div class="module module-login span4 offset4">
            <form
              class="form-vertical"
              method="post"
              action="StatusUpdateInsert.jsp"
            >
              <div class="module-head">
                <table align="center">
                  <%
		String gid = request.getParameter("gid");
		session.setAttribute("gid", gid);
		String hno = (String) session.getAttribute("hno");
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String sday = "";
			String prob = "";
			ResultSet rs = st.executeQuery("select to_char(day,'dd-mon-yy'),problem from grievance where gid="+ gid);
			if (rs.next()) {
				sday = rs.getString(1);
				prob = rs.getString(2);
			}
			else{
					response.sendRedirect("UpdateFail.jsp");
					
					
			}
		%>
		<tr>
			<td>Grievance Id:</td>
			<td><%=gid%></td>
		</tr>
		<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
			<td>Problem:</td>
			<td><%=prob%></td>
		</tr>
		<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
			<td>Date on which the complaint is placed:</td>
			<td><%=sday%></td>
		</tr>
		<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
			<td>Status:</td>
			<td><input type=radio name=status value=complete>Completed
			    <input type=radio name=status value="InProgess">In Process
			    <input type=radio name=status value="Not Yet Assigned">Not Yet Assigned</td>
		</tr>
		<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
			<td>Date Of Completion:</td>
			<td><input type=text name=doc></td>
		</tr>
		<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
			<td><button type="submit" class="btn btn-primary pull-right">Update</button></td>
		</tr>
	</table>

	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
