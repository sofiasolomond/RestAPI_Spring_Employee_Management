package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.greatlearning.EmployeeManagement.entity.Employee;
import com.greatlearning.EmployeeManagement.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	@Override
	public List<Employee> ListEmployeeAscOrder() {
		return employeeRepository.findAll(Sort.by(Direction.ASC, "firstName"));
	}

	@Override
	public List<Employee> ListEmployeeDescOrder() {
		return employeeRepository.findAll(Sort.by(Direction.DESC, "firstName"));
	}

	@Override
	public void save(Employee employee) {
		employeeRepository.save(employee);
		return;
	}

	@Override
	public void deleteById(int employeeId) {
		employeeRepository.deleteById(employeeId);
		return;
	}

	@Override
	public Employee findById(int employeeId) {
		return employeeRepository.findById(employeeId).get();
	}

	@Override
	public List<Employee> searchByFirstName(String firstName) {
		return employeeRepository.searchByFirstName(firstName);
	}

}
