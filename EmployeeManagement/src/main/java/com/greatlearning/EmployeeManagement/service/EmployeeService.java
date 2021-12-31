 package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import com.greatlearning.EmployeeManagement.entity.Employee;

public interface EmployeeService {
	
	public List<Employee> findAll();

	public List<Employee> ListEmployeeAscOrder();

	public List<Employee> ListEmployeeDescOrder();

	public void save(Employee employee);

	public void deleteById(int employeeId);

	public Employee findById(int employeeId);
	
	public List<Employee> searchByFirstName(String firstName);
}
