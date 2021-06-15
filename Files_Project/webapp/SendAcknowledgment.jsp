<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ page import="java.sql.*" %>
    <%@ page import="grev.Connect" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Send Acknowledgment</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
        <link type="text/css" href="css/theme.css" rel="stylesheet" />
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet" />
        <link type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
          rel="stylesheet" />
      </head>

      <body>
        <br />
        <div class="navbar navbar-fixed-top">
          <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
              <i class="icon-reorder shaded"></i>
            </a>
            <a class="brand" href="DepartmentWelcome.jsp">Department Module</a>
          </div>
        </div>

        <div class="wrapper">
          <div class="container">
            <h1 style="text-align: center">
              <b>Send Feedback</b>
            </h1>
            <div class="row">
              <div class="module module-login span4 offset4">
                <form class="form-vertical" method="post" action="InsertAcknowledgement.jsp">
                  <div class="module-head">
                    <table align="center">
                      <%try { Connection con=Connect.getCon(); Statement st=con.createStatement(); String no="" ;
                        ResultSet rs=st.executeQuery("select nvl(max(ackno),0)+1 from ack"); if (rs.next()) {
                        no=rs.getString(1); %>
                        <tr>
                          <td>Acknowledgement Number:</td>
                          <td>
                            <%=no%>
                          </td>
                        </tr>
                        <tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
                        <tr>
                          <td>Acknowledgement:</td>
                          <td><textarea name=ack rows=5 cols=10></textarea></td>
                        </tr>
                        <tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>
                        <tr>
                          <td>To House Number:</td>
                          <td><input type=text name=thno></td>
                        </tr> 
                        <tr class="blank_row">
				<td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
			</tr>
		<tr>                       
                        <tr>
                          <td><button type="submit" class="btn btn-primary pull-right">Send</button></td>
                        </tr>
                    </table>
                    <% } else{ response.sendRedirect("UpdateFail.jsp"); } %>



                      <% } catch (Exception e) { out.println(e); } %>
                </form>
              </div>
            </div>
          </div>
        </div>
      </body>

      </html>