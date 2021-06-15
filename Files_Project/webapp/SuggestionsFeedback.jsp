<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Suggestion&Feedback Form</title>
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
      .row {
        margin-left: 150px;
      }
    </style>
  </head>

  <body>
    <br />
    <h1 style="text-align: center; text-decoration: underline">
      Suggestion&Feedback Form
    </h1>
    <br />
    <br />
    <div class="wrapper">
      <div class="container">
        <div class="row">
          <div class="span9">
            <div class="content">
              <div class="module">
                <div class="module-head">
                  <form action="suggandfeedbackinsert.jsp" method="post">
                    <div class="module-body table">
                      <table
                        cellpadding="0"
                        cellspacing="0"
                        border="0"
                        class="
                          datatable-1
                          table table-bordered table-striped
                          display
                        "
                        width="100%"
                      >
                       <% String hno = (String) session.getAttribute("hno");
                        try
                        { Connection con = Connect.getCon(); Statement st =
                        con.createStatement(); String sid = ""; ResultSet rs =
                        st.executeQuery("select nvl(max(sid),0)+1 from  suggfeedback"); if (rs.next()) { sid = rs.getString(1);
                        System.out.println(sid); } %>
                        <tbody>
                          <tr>
                            <td><b>Suggestion Id</b></td>
                            <td><%=sid%></td>
                          </tr>
                          <tr>
                            <td><b>House Number </b></td>
                            <td><%=hno%></td>
                          </tr>
                          <tr>
                            <td><b>Department Name</b></td>
                            <td>
                              <%@include file="DepartmentsDropDownList.jsp"%>
                            </td>
                          </tr>
                          <tr>
                            <td><b>Suggestions&Feedback</b></td>

                            <td>
                              <textarea
                                rows="5"
                                cols="15"
                                name="sugg"
                                required
                              ></textarea>
                            </td>
                          </tr>
                           <% } catch (Exception e) {
                              out.println(e); } %>
                              <tr>
                                <td>
                                  <button
                                    type="submit"
                                    class="btn btn-secondary"
                                  >
                                    Submit
                                  </button>
                                </td>
                                <td>
                                  <button type="reset" class="btn btn-dark">
                                    Reset
                                  </button>
                                </td>
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
