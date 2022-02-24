<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Login</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill the employee details</h1>

				<form action="index" method="post">
					<div class="form-group">
						<label for="name">Employee email</label> <input type="text"
							class="form-control" id="name" name="email"
							placeholder="Enter email here">
					</div>

					
					<div class="form-group">
						<label for="name">Employee password</label> <input type="password"
							class="form-control" id="price" name="password"
							placeholder="Enter password here">
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Sign In</button>
					</div>

				</form>
			</div>

		</div>

	</div>
</body>
</html>