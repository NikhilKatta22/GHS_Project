<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ page import="java.sql.*" %> <%@ page
import="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Send Reply</title>
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
        <a class="brand" href="Adwelcome.html">Back to portal</a>
      </div>
    </div>

    <div class="wrapper">
      <div class="container">
        <h1 style="text-align: center">
          <b>Send Reply</b>
        </h1>
        <div class="row">
          <div class="module module-login span4 offset4">
            <form
              class="form-vertical"
              method="post"
              action="EmployeeUpdate.jsp"
            >
              <div class="module-head">
                <table align="center">
                  <%		
		String hno = (String) session.getAttribute("hno");
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String sid="";
      String sufeed="";
			ResultSet rs = st.executeQuery("select sid,sugg from suggfeedback where hno='"+ hno+"'");
			if (rs.next()) {
				sid = rs.getString(1);
				sufeed = rs.getString(2);
			}
			else{
					
					out.println("No FeedBacks Exist");
					
			}
		%>
		<tr>
			<td>Suggestion Id: Id:</td>
			<td><%=sid%></td>
		</tr>
		<tr>
			<td>SuggestionFeedback:</td>
			<td><%=sufeed%></td>
		</tr>
		<tr>
			<td>Send Reply:</td>
			<td><textarea name="srep" rows="5" cols="10"></textarea></td>
		</tr>
		<tr>
			<td>From Department:</td>
			<td><%@include file="DepartmentsDropDownList.jsp"%></td>
		</tr>	
    <tr>
      <td><button type="submit">Send</button></td>
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
