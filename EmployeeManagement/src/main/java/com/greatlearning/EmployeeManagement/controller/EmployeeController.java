package com.greatlearning.EmployeeManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.greatlearning.EmployeeManagement.entity.Employee;
import com.greatlearning.EmployeeManagement.service.EmployeeService;

//@RestController
@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	// This end point is loaded by default for ADMIN Login

	@RequestMapping("/admin")
	public String goToAdminPage(Model model) {
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("Employees", employees);
		return "AdminPage";
	}

	@RequestMapping("/adminsort")
	public String goToAdminPageOrdered(@RequestParam("order") int order, Model model) {
		List<Employee> employees;
		if (order == 1) {
			employees = employeeService.ListEmployeeAscOrder();
		} else {
			employees = employeeService.ListEmployeeDescOrder();

		}
		model.addAttribute("Employees", employees);
		return "AdminPage";
	}

	@RequestMapping("/usersort")
	public String goToUserPageOrdered(@RequestParam("order") int order, Model model) {
		List<Employee> employees;
		if (order == 1) {
			employees = employeeService.ListEmployeeAscOrder();
		} else {
			employees = employeeService.ListEmployeeDescOrder();

		}
		model.addAttribute("Employees", employees);
		return "UserPage";
	}
	@RequestMapping("/user")
	public String goToUserPage(Model model) {
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("Employees", employees);
		return "UserPage";
	}

	// This end point list all the employee details
	@RequestMapping("/list")
	public String listEmployee(Model model) {
		List<Employee> employees = employeeService.ListEmployeeAscOrder();
		model.addAttribute("Employees", employees);
		return "ListEmployees";
	}

	// This end point is for adding new Employees
	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Employee employee = new Employee();
		model.addAttribute("Employee", employee);
		return "EmployeeForm";
	}

	// This end point is for updating existing employee details
	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("empId") int empId, Model model) {
		Employee employee = employeeService.findById(empId);
		model.addAttribute("Employee", employee);
		return "EmployeeForm";

	}

	// This end point is for saving employee information
	@PostMapping("/save")
	public String saveEmployeeDetails(@RequestParam("empId") int empId, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		Employee employee;
		if (empId != 0) {
			employee = employeeService.findById(empId);
			employee.setFirstName(firstName);
			employee.setLastName(lastName);
			employee.setEmail(email);
		} else {
			employee = new Employee(firstName, lastName, email);
		}
		employeeService.save(employee);
		return "redirect:/employee/admin/";

	}

	// This end point is for deleting employee details
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam("empId") int empId) {
		employeeService.deleteById(empId);
		return "redirect:/employee/admin/";
	}


	@RequestMapping("/search")
	public String search(@RequestParam("firstName") String firstName, Model theModel) {

		// If input is empty return back to home page

		if (firstName.trim().isEmpty()) {
			return "redirect:/employee/admin";
		}
		else {
			// else, search by first name 
			List<Employee> employees =
					employeeService.searchByFirstName(firstName);

			// add to the spring model
			theModel.addAttribute("Employees", employees);

			return "AdminPage";
		}
	}
	

	@RequestMapping("/searchasuser")
	public String searchAsUser(@RequestParam("firstName") String firstName, Model theModel) {

		// If input is empty return back to home page

		if (firstName.trim().isEmpty()) {
			return "redirect:/employee/admin";
		}
		else {
			// else, search by first name 
			List<Employee> employees =
					employeeService.searchByFirstName(firstName);

			// add to the spring model
			theModel.addAttribute("Employees", employees);

			return "UserPage";
		}
	}
}
