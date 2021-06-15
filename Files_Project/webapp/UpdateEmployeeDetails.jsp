<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Update</title>
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
        <a class="brand" href="ManageEmployees.jsp">Manage Employee</a>
      </div>
    </div>

    <div class="wrapper">
      <div class="container">
        <h1 style="text-align: center">
          <b>Employee Update</b>
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
                  <% String s1=request.getParameter("eid");
                  session.setAttribute("s1",s1); Connection con =
                  Connect.getCon(); Statement st = con.createStatement();
                  ResultSet rs = st.executeQuery( "select * from employees where eid='" + s1 + "'"); if (rs.next()) { %>
                  <tr>
                    <td>Employ Id:</td>
                    <td><%=rs.getString(1)%></td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td>First Name:</td>
                    <td>
                      <input type="text"   name="fname"   value=<%=rs.getString(2)%>>
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td>Middle Name:</td>
                    <td>
                      <input
                        type="text"
                        name="mname"
                        value=<%=rs.getString(3)%>>
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td>Last Name</td>
                    <td>
                      <input  type="text" name="lname"
                        value=<%=rs.getString(4)%>
                      />
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Designation</td>
                    <td>
                      <textarea
                        name="desg"                        
                      ><%=rs.getString(5)%></textarea>
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Qualification</td>
                    <td>
                      <input
                        type="text"
                        name="qual"
                        value=<%=rs.getString(6)%>
                      />
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Did</td>
                    <td>
                      <input
                        type="text"
                        name="did"
                        value=<%=rs.getString(7)%>
                      />
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Salary</td>
                    <td>
                      <input
                        type="text"
                        name="sal"
                        value=<%=rs.getString(8)%>
                      />
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Gender</td>
                    <td><input
                        type="text"
                        name="gender"
                        value=<%=rs.getString(9)%>
                      /></td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Phone Number</td>
                    <td>
                      <input
                        type="text"
                        name="phno"
                        value=<%=rs.getString(10)%>
                      />
                    </td>
                  </tr>
                  
                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>

                  <tr>
                    <td>Address</td>
                    <td>
                      <textarea
                        name="area"                        
                      ><%=rs.getString(11)%></textarea>
                    </td>
                  </tr>

                  <tr class="blank_row">
                    <td bgcolor="#F8F8F8" colspan="3">&nbsp;</td>
                  </tr>
                  <% } %>
                  <tr>
                    <td><button type="submit" class="btn btn-primary pull-right">Update</button></td>
                    <td><button type="reset" class="btn btn-primary pull-right">Undo</button></td>
                  </tr>

                </table>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
                      
