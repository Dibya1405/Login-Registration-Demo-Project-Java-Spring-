<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill the employee details</h1>

				<form action="handle_employee" method="post">
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

					<div class="form-group">
						<label for="name">Employee first name</label> <input type="text"
							class="form-control" id="price" name="firstname"
							placeholder="Enter firstname here">
					</div>

					<div class="form-group">
						<label for="name">Employee lastname</label> <input type="text"
							class="form-control" id="price" name="lastname"
							placeholder="Enter lastname here">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>

				</form>
			</div>

		</div>

	</div>
</body>
</html>