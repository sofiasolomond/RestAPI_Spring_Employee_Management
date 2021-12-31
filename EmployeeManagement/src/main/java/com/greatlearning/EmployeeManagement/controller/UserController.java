package com.greatlearning.EmployeeManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.greatlearning.EmployeeManagement.entity.Roles;
import com.greatlearning.EmployeeManagement.entity.User;
import com.greatlearning.EmployeeManagement.entity.UsersRoles;
import com.greatlearning.EmployeeManagement.service.RoleService;
import com.greatlearning.EmployeeManagement.service.UserRoleService;
import com.greatlearning.EmployeeManagement.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRoleService usersRolesService;

	@Autowired
	private RoleService roleService;

	// This end point is for listing user details
	@RequestMapping("/list")
	public String listEmployee(Model model) {
		List<User> users = userService.findAll();
		model.addAttribute("Users", users);
		return "ListUserDetails";
	}

	// This end point is for adding user details
	@RequestMapping("/userAdd")
	public String showFormForAdd(Model model) {
		User user = new User();
		Roles roles = new Roles();
		model.addAttribute("User", user);
		model.addAttribute("Roles", roles);

		return "UserDetailsForm";
	}

	// this end point is for updating user details
	@RequestMapping("/userUpdate")
	public String showFormForUpdate(@RequestParam("userId") int userId, Model model) {
		User user = userService.findById(userId);
		model.addAttribute("User", user);
		return "UserDetailsForm";

	}

	// This end point is for saving user details
	@PostMapping("/saveuser")
	public String saveUserDetails(@RequestParam("userId") int userId, @RequestParam("userName") String userName,
			@RequestParam("userPassword") String userPassword, @RequestParam("userRole") String userRole) {
		User user;
		Roles role = roleService.findRoleByRoleName(userRole);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		int roleId = role.getRoleId();
		if (userId != 0) {
			user = userService.findById(userId);
			user.setUserName(userName);
			user.setUserPassword(encoder.encode(userPassword));
		} else {
			user = new User(userName, encoder.encode(userPassword));
		}
		userService.save(user);
		UsersRoles usersRoles = new UsersRoles((int) user.getUserId(), roleId);
		usersRolesService.save(usersRoles);
		return "redirect:/user/list/";

	}
}
