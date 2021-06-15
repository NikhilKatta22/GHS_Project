<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Change Password</title>
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
        position: relative;
        left: 250px;
      }
    </style>
  </head>
  <body>
    <br />
    <h1 style="text-align: center; text-decoration: underline">
      Change Password
    </h1>
    <br /><br />
    <div class="wrapper">
      <div class="container">
        <div class="row">
          <div class="span9">
            <div class="content">
              <div class="module">
                <div class="module-head"></div>
                <div class="module-body">
                  <form
                    class="form-horizontal row-fluid"
                    name="chngpwd"
                    method="post"
                    action="ChangePass.jsp">
                    <div class="control-group">                     
                      <div class="controls">
                        <input
                          type="password"
                          placeholder="Enter your new Password"
                          name="newpassword"
                          class="span8 tip"
                          required
                        />
                      </div>
                    </div>   
                    <br><br><br>                             
                  <div class="control-group">                   
                      <div class="controls">
                        <input
                          type="password"
                          placeholder="Enter your new Password again"
                          name="confirmpassword"
                          class="span8 tip"
                          required
                        />
                      </div>
                    </div>

                    <div class="control-group">
                      <div class="controls">
                        <button type="submit" name="submit" class="btn">
                          Submit
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
