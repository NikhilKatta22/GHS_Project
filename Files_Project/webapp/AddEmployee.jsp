<%@page import="java.sql.*" %>
<%@page import="grev.Connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Employee Details</title>
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
          <a class="brand" href="ManageEmployees.jsp">Back to portal</a>
        </div>
      </div>


    <div class="wrapper">
      <div class="container">
        <h1 style="text-align: center">
          <b>Add Details</b>
        </h1>
        <div class="row">
          <div class="module module-login span4 offset4">
            <form
              class="form-vertical"
              method="post"
              action="insertDetails.jsp"
            >
              <div class="module-head"></div>
              <div class="module-body">
                <div class="control-group">
                  <div class="controls row-fluid">   
                      <% try { 
                    	  Connection con=Connect.getCon();
                          Statement  st=con.createStatement(); 
                          int eid=0;
                          ResultSet  rs=st.executeQuery("select nvl(max(EID),0)+1 from employees");
                          if(rs.next())
                            { 
                        	   eid=rs.getInt(1); 
    	                       
    	                    }
                          rs.close();
                          %>                 
                    <input
                      class="span12"
                      type="text"
                      name="fname"
                      placeholder="First Name"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="mname"
                      placeholder="Middle Name"
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="lname"
                      placeholder="Last Name"
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="street"
                      placeholder="Street"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="colony"
                      placeholder="Colony"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="area"
                      placeholder="Area"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="desg"
                      placeholder="Designation"
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="text"
                      name="qual"
                      placeholder="Qualification"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="number"
                      name="did"
                      placeholder="Department Id"
                      required
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="number"
                      name="sal"
                      placeholder="Salary"
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <input
                      class="span12"
                      type="number"
                      name="phno"
                      placeholder="Phone No"
                    />
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls row-fluid">
                    <label>Gender</label><br>
                    <input
                      type="radio"
                      name="gen"
                      value="Male"
                      class="form-check-input"
                      id="flexRadioDefault2"
                    />Male <br />
                    <input
                      type="radio"
                      name="gen"
                      value="Female"
                      class="form-check-input"
                      id="flexRadioDefault2"
                    />Female
                  </div>
                </div>
              </div>
              <div class="module-foot">
                <div class="control-group">
                  <div class="controls clearfix">
                    <button
                      type="submit"
                      class="btn btn-primary pull-right"
                      name="submit"
                    >
                      Add
                    </button>
                    <% } catch(Exception e){ out.println(e); }%>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
