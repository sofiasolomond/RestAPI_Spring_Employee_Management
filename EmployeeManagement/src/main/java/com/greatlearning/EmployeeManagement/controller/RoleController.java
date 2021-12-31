package com.greatlearning.EmployeeManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.greatlearning.EmployeeManagement.entity.Roles;
import com.greatlearning.EmployeeManagement.service.RoleService;

@Controller
@RequestMapping("/role")
public class RoleController {

	@Autowired
	private RoleService roleService;

	// This end point is for listing user details
	@RequestMapping("/list")
	public String listRoles(Model model) {
		List<Roles> roles = roleService.findAll();
		model.addAttribute("Roles", roles);
		return "ListRoleDetails";
	}

	// This end point is for adding user details
	@RequestMapping("/roleadd")
	public String showFormForAdd(Model model) {
		Roles role = new Roles();
		model.addAttribute("Role", role);
		return "RoleDetailsForm";
	}

	// This end point is for saving user details
	@PostMapping("/saverole")
	public String saveRoleDetails(@RequestParam("roleId") int roleId, @RequestParam("roleName") String roleName) {
		Roles role = new Roles(roleName);
		roleService.save(role);
		return "redirect:/role/list/";

	}
}
