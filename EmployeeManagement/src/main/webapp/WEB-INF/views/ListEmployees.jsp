
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
		<h3>Employee Directory</h3>
		
		<hr>
				<form action="/EmployeeManagement/employee/search" class="form-inline">
		
		<a href="/EmployeeManagement/employee/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Employee </a>
			
			  <input class="form-control input-sm mb-3" id="inputsm" type="text">
			<a href="/EmployeeManagement/employee/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Search Employee </a>
				

		</form>
		<table class="table table-striped table-bordered table-hover table-condensed"">
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
						<!-- Add "update" button/link --> 
							<a href="/EmployeeManagement/employee/showFormForUpdate?empId=${tempEmployee.empId}"
							class="btn btn-info btn-sm"> Update </a> 
							<!-- Add "delete" button/link -->
							<a href="/EmployeeManagement/employee/delete?empId=${tempEmployee.empId}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Employee details?'))) return false">
								Delete </a>
						</td>
					
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
