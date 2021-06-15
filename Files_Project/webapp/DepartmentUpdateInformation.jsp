<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Department Details</title>
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
     input{
     margin:5px;
     }
     .label{
     color: black;
     font-size:16px;
     font-family:'Roboto Medium', sans-serif;
     font-weight: 500;
     }
    </style>
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
        <a class="brand" href="Home.jsp">Back to portal</a>
      </div>
    </div>

    <div class="wrapper">
      <div class="container">
        <h1 style="text-align: center">
          <b>Update</b>
        </h1>
        <div class="row">
          <div class="module module-login span4 offset4">
            <form
              class="form-vertical"
              method="post"
              action="ModifyDetails.jsp">
                <div class="module-head">
                <table align="center">
                  <% try { String s1 = request.getParameter("department");
                  session.setAttribute("s1", s1); Connection con =
                  Connect.getCon(); Statement st = con.createStatement();
                  ResultSet rs = st.executeQuery( "select * from departmentlogin   where deptname='" + s1 + "'");
                  if (rs.next()) {
                	  %>
                	  <tr>
				<td class="label">Department Id:</td>
				<td><%=rs.getString(1)%></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td class="label">Password:</td>
				<td><input type=text name="pwd" value=<%=rs.getString(2)%>></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td class="label">Department Name:</td>
				<td><%=rs.getString(3)%></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td class="label">Department Head:</td>
				<td><input type=text name="dhname" value=<%=rs.getString(5)%>></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
			<%
			}
			%>
			<tr>
				<td><input type="submit" value="Update"></td>
				<td><input type="reset" value="Undo"></td>
			<tr>
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
    </div>
  </body>
</html>