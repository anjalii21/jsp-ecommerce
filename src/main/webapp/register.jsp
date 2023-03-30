<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link href="CSS/index_bg.css" type="text/css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Register</title>
</head>
<body>
	<style>
* {
	color: #fff;
}

.bg {
	background:
		url('https://www.freshbrothers.com/wp-content/uploads/2019/12/HOME_Hero-1.jpg');
	height: auto;
	width: 50% background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.form-container {
	border: 0px solid #fff;
	padding: 15px 15px;
	margin-top: 5vh;
	background-color: #241f1fd3;
	-webkit-box-shadow: 1px 4px 26px 11px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 1px 4px 26px 11px rgba(0, 0, 0, 0.75);
	box-shadow: 1px 4px 26px 11px rgba(0, 0, 0, 0.75);
}

.header {
	color: white;
	text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px
		0 #000;
}

.register {
	color: BLUE;
}

.signin {
	text-align: center;
}

.container-fluid {
	color: #000;
}
</style>
<body class="bg">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<form action="registerservlet" method="get" class="form-container">
					<h1 class="header">Register for awesome food!</h1>
					<div class="form-group">
						<label for="InputName">Name</label> <input name="name"
							class="form-control" id="InputName" placeholder="Name" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="email" class="form-control"
							id="exampleInputEmail1" placeholder="Email" required>
					</div>
					<div class="form-group">
						<label for="InputPassword">Password</label> <input type="password"
							pattern=".{6,}" required title="6 characters minimum"
							name="password" class="form-control" id="InputPassword"
							type="password" placeholder="Password" required> <label
							for="ConfirmInputPassword1">Confirm Password</label> <input
							name="confirmPassword" class="form-control"
							id="ConfirmInputPassword" type="password" placeholder="Password"
							required>
					</div>
					<div class="form-group">
						<label for="InputAddress">Address</label> <input name="address"
							class="form-control" id="InputAddress" placeholder="Address"
							required>
					</div>
					<div class="form-group">
						<label for="InputCity">City</label> <input name="city"
							class="form-control" id="InputCity" placeholder="City" required>
					</div>
					<div class="form-group">
						<label for="InputState">State</label> <input name="state"
							class="form-control" id="InputState" placeholder="State" required>
					</div>

					<div class="form-group">
						<label for="InputPincode">Pincode</label> <input name="pincode"
							class="form-control" id="InputPincode" placeholder="Pincode"
							required>
					</div>
					<div class="form-group">
						<label for="InputMobile">Mobile No.</label> <input type="Mobile"
							pattern=".{10,}" required title="10 characters minimum"
							name="mobile" class="form-control" id="InputMobile" type="mobile"
							placeholder="mobile" required>


					</div>
					<input type="submit" value="Register" class="btn" href="registerservlet">

					<div class="signin">
						<p>
							<b style="color: rgba(233, 17, 17, 0.948);">Already have an
								account?</b> <a href="login.jsp">LogIn</a>.
						</p>
					</div>


				</form>



			</div>

			<div class="col-md-4 col-sm-4 col-xs-12"></div>

		</div>
	</div>

	</div>
</body>
</html>