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

<title>Save User Details</title>
</head>
<body>
	<div class="container">
		<div class="container">
	
				<div class="container"
					style="clear: both; margin-top: 15px; margin-left: 20px">		<h3>
					<span>Employee Management System - Application User Details</span>
					<a href="/EmployeeManagement/logout"
						class="btn btn-danger btn-sm mb-1 float-right "> Logout </a>
				</h3></div>
			
		</div>
		<hr>
	<br>
		<h5> Add/Modify User Details </h5>
		
		<form action="/EmployeeManagement/user/saveuser" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="userId" value="${User.userId}" />
			<div class="form-inline">
				<input type="text" name="userName" value="${User.userName}"
					class="form-control mb-4 col-4" placeholder="User Name">
			</div>
			<div class="form-inline">
				<input type="text" name="userPassword" value="${User.userPassword}"
					class="form-control mb-4 col-4" placeholder="User Password">
			</div>
			<div class="form-inline">
				<input type="text" name="userRole" value="${Role.roleName}"
					class="form-control mb-4 col-4" placeholder="User Role">
			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>
		<hr>
		<a href="/EmployeeManagement/user/list">Back to User details home
			page</a>
	</div>
</body>
</html>