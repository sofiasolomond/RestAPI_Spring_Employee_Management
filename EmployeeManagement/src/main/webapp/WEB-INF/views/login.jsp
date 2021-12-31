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

<title>Login Page</title>
</head>
	<body>
	<div class="w-50 mx-auto">
		<h2>Welcome to Employee Management System</h2>
		<hr>
		<br>
		
		<h4> Enter your credentials </h4>
		<br>
		<br>				<div class="bg-secondary border d-flex aligns-items-center justify-content-center" >
<br>
<p>

			<form method="POST" action="/EmployeeManagement/login">
			<br>
			<br>
			<div>
			
				Username <input type="text" name="username" value="user" /><br>
				<br> Password   <input type="password" name="password"
					value="password" /><br>
				<br>
				
				<input type="submit" name="submit" class= "btn btn-info" />
				<br>
				<br>
				
				</div>
			</form>
</div>
</div>
	</body>
</html>