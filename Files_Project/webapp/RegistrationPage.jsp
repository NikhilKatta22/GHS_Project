<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Registration</title>
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


	<div class="wrapper">
		<div class="container">
			<h1 style="text-align: center">
				<b>Register</b>
			</h1>
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical" method="post"
						action="AddUserDetailsToDataBase.jsp">
						<div class="module-head">
							<h3>Sign Up</h3>
						</div>
						<div class="module-body">
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="fname"
										placeholder="First Name" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="lname"
										placeholder="Last Name" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="email" name="email"
										placeholder="Mail Id" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="hno"
										placeholder="House No" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="sname"
										placeholder="Street Name" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="address"
										placeholder="Locality" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="zip"
										placeholder="Pincode" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="number" name="mobile" id="mobile"
										placeholder="Phone No" required
										onkeyup="check();return flase;" /> <span
										id="message"></span>
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" name="uname"
										placeholder="User Name" required />
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" id="inputPassword"
										name="pass" placeholder="Password" />
								</div>
							</div>
						</div>
						<div class="module-foot">
							<div class="control-group">
								<div class="controls clearfix">
									<button type="submit" class="btn btn-primary pull-right"
										name="submit">Register</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function check() {
		var mobile = document.getElementById("mobile");

		var message = document.getElementById("message");

		var goodColor = "#0C6";
		var badColor = "#FF9B37";

		if (mobile.value.length != 10) {
			mobile.style.backgroundColor = badColor;
			message.style.color = badColor;
			message.innerHTML = "<br>required 10 digits, match requested format!";
		}
	}
</script>
</html>
