<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

<title>Save Employee</title>
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
		<p>
		<hr>
		<p>
		<h5>Add New / Update Employee Details</h5>
		<p>
		<p>
		<form action="/EmployeeManagement/employee/save" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="empId" value="${Employee.empId}" />
			<div class="form-inline">
				<input type="text" name="firstName" value="${Employee.firstName}"
					class="form-control mb-4 col-4" placeholder="FirstName">
			</div>
			<div class="form-inline">
				<input type="text" name="lastName" value="${Employee.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">
			</div>
			<div class="form-inline">
				<input type="text" name="email" value="${Employee.email}"
					class="form-control mb-4 col-4" placeholder="email">
			</div>

			<button type="submit" class="btn btn-success col-2">Save</button>
		</form>
		<hr>
		<a href="/EmployeeManagement/employee/admin/">Back to home page</a>
	</div>
</body>
</html>