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
				<h1 class="text-center mb-3" id="">Hey, ${name}!!!!</h1>
				<h1 class="text-center mb-3">Welcome to employee dashboard</h1>

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
								<c:choose>
									<c:when test="${e.email==name}">
										<td>${e.password}</td>
									</c:when>
									<c:otherwise>
										<td>*************</td>
									</c:otherwise>
								</c:choose>
								<td>${e.firstname }</td>
								<td>${e.lastname }</td>
								<c:choose>
									<c:when test="${e.email==name}">
										<td><a href="delete/${e.id}"><i
										class="fa-solid fa-trash-can text-danger"
										style="font-size: 20px"></i></a> <a href="update/${e.id}"><i
										class="fa-solid fa-pen-nib text-primary"
										style="font-size: 20px"></i></a></td>
										
									</c:when>
									<c:otherwise>
										<td style="display: none"><a href="delete/${e.id}"><i
										class="fa-solid fa-trash-can text-danger"
										style="font-size: 20px"></i></a> <a href="update/${e.id}"><i
										class="fa-solid fa-pen-nib text-primary"
										style="font-size: 20px"></i></a></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add_employee" class="btn btn-outline-success">Add
						Employee</a>
				</div>

				<div class="container text-center">
					<p>-------------------------------</p>
					<p>Click the button to sign out</p>
					<p>----------------------------</p>
				</div>
				<div class="container text-center">
					<a href="home" class="btn btn-outline-success">Sign Out</a>
				</div>

			</div>
		</div>
	</div>
</body>
</html>