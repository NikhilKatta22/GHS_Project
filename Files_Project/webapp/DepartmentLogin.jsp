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
	<br />
	<div class="navbar navbar-fixed-top">
		
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i>
				</a> <a class="brand" href="Home.jsp">Back to portal</a>
			</div>
		</div>
     <br><br>

	<div class="wrapper">
		<div class="container">
			<h1 style="text-align: center">
				<b>Department Login</b>
			</h1>
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical" method="post"
						action="DepartmentLoginval.jsp">
						<div class="module-head">
							<h3>Sign In</h3>
						</div>
						<div class="module-body">
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="departmentid"
										placeholder="Department Id" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" id="inputPassword"
										name="pass" placeholder="Password" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<%@include file="DepartmentsDropDownList.jsp"%>
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
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
