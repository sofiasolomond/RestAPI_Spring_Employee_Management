
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

<title>Employee Management System Role Details</title>
</head>
<body>
	<div class="container">
		
			<div class="container"
				style="clear: both; margin-top: 15px; margin-left: 20px">
				<h3>
				<span>Employee Management System - Application Role Details</span> <a
					href="/EmployeeManagement/logout"
					class="btn btn-danger btn-sm mb-1 float-right "> Logout </a>
					</h3>
			</div>
		
	</div>
	<hr>
	<br>
	<div class="container"
		style="clear: both; margin-top: 15px; margin-left: 20px">
		<form action="" class="form-inline">
			<div class="form-group">
				<a href="/EmployeeManagement/role/roleadd/"
					class="btn btn-primary btn-sm mr-4 mb-3"> Add Roles </a> <br>
				<hr>
			</div>
		</form>
		<hr>
		<table
			class="table table-striped table-bordered table-hover table-condensed"">
			<thead class="thead-light">
				<tr>
					<th>Role Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Roles}" var="tempRole">
					<tr>
						<td><c:out value="${tempRole.roleName}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/EmployeeManagement/employee/admin"
			class="btn btn-secondary btn-sm mb-3"> Click here to go to Admin Page</a>
	</div>
</body>
</html>
