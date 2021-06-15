<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link type="text/css" href="css/theme.css" rel="stylesheet" />
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet" />
<link type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet" />
</head>
<body>
	<br>
	<div class="navbar navbar-fixed-top">		
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i>
				</a> <a class="brand" href="Home.jsp">Back
					to portal</a>
			</div>
		</div>

<br><br>
	<div class="wrapper">
		<div class="container">
			<h1 style="text-align: center;">
				<b>Login</b>
			</h1>
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical" method="post"
						action="loginValidation.jsp">
						<div class="module-head">
							<h3>Sign In</h3>
						</div> 
							<div class="module-body">
								<div class="control-group">
									<div class="controls row-fluid">
										<input class="span12" type="text"  name="uname"
											placeholder="Username" />
									</div>
								</div>
								<div class="control-group">
									<div class="controls row-fluid">
										<input class="span12" type="password" id="inputPassword"
											name="pass" placeholder="Password" />
									</div>
								</div>
								<div class="control-group">
									<div class="controls row-fluid">
										<input class="span12" type="text"  name="hno"
											placeholder="House No" />
									</div>
								</div>
							</div>
							<div class="module-foot">
								<div class="control-group">
									<div class="controls clearfix">
										<button type="submit" class="btn btn-primary pull-right"
											name="submit">Login</button>
									</div>
								</div>
							</div>
							<div>
								<p style="text-align: center; color:red">
									Yet Not Registered !!<a href="RegistrationPage.jsp">Click
										here to Register Now!!</a>
								</p>
							</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	<!--/.wrapper-->
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
