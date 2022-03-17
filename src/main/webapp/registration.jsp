<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="Post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="id"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id" placeholder="Employee-ID" />
							</div>
							<div class="form-group">
								<label for="number"><i class="zmdi zmdi-email"></i></label> <input
									type="password" name="number" id="number" placeholder="Password" />
							</div>
							
							
							<div class="form-group">
								<label for="firstname"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="firstname" id="firstname" placeholder="First Name" />
							</div>
							<div class="form-group">
								<label for="lastname"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="lastname" id="latsname" placeholder="Last Name" />
							</div>
							<div class="form-group">
								<label for="dob"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="dob" id="dob" placeholder="Date of Birth" />
							</div>
							<div class="form-group">
								<label for="number"><i class="zmdi zmdi-email"></i></label> <input
									type="text" name="number" id="number" placeholder="Number" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
 
<script type="text/javascript">
var status=document.getElementById("status"),value;
if(status=="success"){
	swal("Congrats","Account Created Successfully","success");
}
</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>