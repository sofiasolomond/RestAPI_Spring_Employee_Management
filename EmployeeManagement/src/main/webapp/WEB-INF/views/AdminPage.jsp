
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<div class="container"
				style="clear: both; margin-top: 15px; margin-left: 20px">
						<h3>
				
				<span>Employee Management System - Employee Details</span> <a
					href="/EmployeeManagement/logout"
					class="btn btn-danger btn-sm mb-1 float-right "> Logout </a>
			</h3></div>
	</div>
	<hr>
	<br>
	<div class="container"
		style="clear: both; margin-top: 15px; margin-left: 20px">
		<a href="/EmployeeManagement/employee/showFormForAdd"
					class="btn btn-primary btn-sm mr-4 mb-3"> Add Employee </a> <br>
				<hr>
		<form action="/EmployeeManagement/employee/search" class="form-inline">
			<div class="form-group">
				
				&Tab; <input class="form-control input-sm mr-4 mb-3" id="firstName"
					name=firstName placeholder="Enter Employee Name" type="text">

				<button type="submit" class="btn btn-success btn-sm mr-4 mb-3">Search
					Employee by First Name</button><br>
				<hr>
				&Tab;
						
				<a href="/EmployeeManagement/employee/admin"
					class="btn btn-primary btn-sm mr-4 mb-3"> clear search data </a>
			</div>

		</form>
		<form action="/EmployeeManagement/employee/searchbyid" class="form-inline">
				&Tab; <input class="form-control input-sm mr-4 mb-3" id="firstName"
					name=empId placeholder="Enter Employee ID" type="text">

				<button type="submit" class="btn btn-success btn-sm mr-4 mb-3">Search
					Employee by Id</button><br>
				<hr>
				&Tab;
				</form>

		<hr>
		<a href="/EmployeeManagement/employee/adminsort?order=1"> Sort
			Ascending order </a> &Tab; | &Tab; <a
			href="/EmployeeManagement/employee/adminsort?order=2"> Sort
			Descending order </a>


		<table
			class="table table-striped table-bordered table-hover table-condensed"">
			<thead class="thead-light">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
	
				<c:forEach items="${Employees}" var="tempEmployee">
					<tr>
						<td><c:out value="${tempEmployee.firstName}" /></td>
						<td><c:out value="${tempEmployee.lastName}" /></td>
						<td><c:out value="${tempEmployee.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/EmployeeManagement/employee/showFormForUpdate?empId=${tempEmployee.empId}"
							class="btn btn-outline-info"btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/EmployeeManagement/employee/delete?empId=${tempEmployee.empId}"
							class="btn btn-outline-danger"
							btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Employee details?'))) return false">
								Delete </a>
						</td>

					</tr>
				</c:forEach>
		
			</tbody>
		</table>
		<a href="/EmployeeManagement/user/list"
			class="btn btn-secondary btn-sm mb-3"> Click here to go to User
			Details Page</a>
			<a href="/EmployeeManagement/role/list"
			class="btn btn-secondary btn-sm mb-3"> Click here to go to Role
			Details Page</a>
	</div>
</body>
</html>
