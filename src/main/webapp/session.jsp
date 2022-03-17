<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="signin-form">
						<h2 class="form-title">Search</h2>
						<h1>Login Success!</h1>
						<form method="post" action="data" class="register-form"
							id="search-form">
							<div class="form-group">
								<label for="id"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id"
									placeholder="Enter Eployee Id" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="search" id="search"
									class="form-submit" value="Search" />
							</div>
						</form>
						
						
						<h2 class="form-title">Salary details</h2>
	
						<form method="post" action="data" class="register-form"
							id="salary-form">
							<div class="form-group">
								<label for="id"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id"
									placeholder="Enter Eployee Id" />
							</div>
							<div class="form-group">
								<label for="jobrole"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="jobrole" id="jobrole"
									placeholder="Enter Job role" />
							</div>
							<div class="form-group">
								<label for="salary"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="salary" id="salary"
									placeholder="Enter Salary" />
							</div>
							<div class="form-group">
								<label for="bonus"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="bonus" id="bonus"
									placeholder="Enter Bonus" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="search" id="search"
									class="form-submit" value="Submit" />
							</div>
						</form>
						
						
					</div>
</body>
</html>