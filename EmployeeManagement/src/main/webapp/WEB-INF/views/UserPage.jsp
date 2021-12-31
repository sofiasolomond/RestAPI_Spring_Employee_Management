
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Employee Directory</title>
</head>
<body>
	<div class="container">
		<h3>
			<div class="container"
				style="clear: both; margin-top: 15px; margin-left: 20px">
				<span>Employee Management System - Employee Details</span> <a
					href="/EmployeeManagement/logout"
					class="btn btn-danger btn-sm mb-1 float-right "> Logout </a>
			</div>
		</h3>
	</div>
	<hr>
	<br>
	<div class="container"
		style="clear: both; margin-top: 15px; margin-left: 20px">
		<form action="/EmployeeManagement/employee/searchasuser" class="form-inline">
			<div class="form-group">
			<br>
				<hr>
				&Tab; <input class="form-control input-sm mr-4 mb-3" id="firstName"
					name=firstName placeholder="Employee Name" type="text">

				<button type="submit" class="btn btn-success btn-sm mr-4 mb-3">Search
					Employee by First Name</button><br>
				<hr>
				&Tab;
				<a href="/EmployeeManagement/employee/user"
					class="btn btn-primary btn-sm mr-4 mb-3"> clear search data </a>
			</div>

		</form>

		<hr>
		<a href="/EmployeeManagement/employee/usersort?order=1"> Sort
			Ascending order </a> &Tab; | &Tab; <a
			href="/EmployeeManagement/employee/usersort?order=2"> Sort
			Descending order </a>


		<table
			class="table table-striped table-bordered table-hover table-condensed"">
			<thead class="thead-light">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Employees}" var="tempEmployee">
					<tr>
						<td><c:out value="${tempEmployee.firstName}" /></td>
						<td><c:out value="${tempEmployee.lastName}" /></td>
						<td><c:out value="${tempEmployee.email}" /></td>
		

					</tr>
				</c:forEach>


			</tbody>
		</table>
	
	</div>
</body>
</html>
