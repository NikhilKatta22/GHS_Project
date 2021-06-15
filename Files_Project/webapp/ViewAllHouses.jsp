<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ page import="java.sql.*"%> <%@ page import
="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Houses</title>
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
        margin-left: 50px;
      }
    </style>
  </head>

  <body>
    <br />
    <h1 style="text-align: center">Houses</h1>
    <br />
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
            <a class="brand" href="Adwelcome.html">AdminModule</a>
          </div>
        </div>

       <div class="wrapper">
      <div class="container">
        <div class="row">
          <div class="span9">
            <div class="content">
              <div class="module">
                <div class="module-head">
                  <form action="grievance.jsp" method="post">
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
                        <tbody>
                          <tr>
                            <th>Hno</th>
                            <th>Uname</th>
                            <th>Address</th>
                            <th>Phone Number</th>
                            <th>Zipcode</th>
                          </tr>
                          <% try { Connection con=Connect.getCon(); Statement
                          st=con.createStatement(); ResultSet
                          rs=st.executeQuery("select hno,uname,address,phnno,zipcode from persons");
                          while(rs.next()) { %>
                          <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>                            
                          </tr>  
                          <%} %>   
                          </tbody>                    
                      </table>
                    </div>
                    <% }
                          catch (Exception e)
                          { 
                        	  out.println(e);  
                          }
                          %>
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
