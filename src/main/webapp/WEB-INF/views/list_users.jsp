<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
</head>

<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Login to update the user details</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Employee Mail</th>
							<th scope="col">Password</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${employees}" var="e">
							<tr>
								<th scope="row">${e.id}</th>
								<td>${e.email}</td>
								<td>*********</td>
								<td>${e.firstname }</td>
								<td>${e.lastname }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="open_register_page" class="btn btn-outline-success">Register</a>
				</div>

			</div>
		</div>
	</div>
</body>
</html>