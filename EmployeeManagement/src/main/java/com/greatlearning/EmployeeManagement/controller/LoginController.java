package com.greatlearning.EmployeeManagement.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class LoginController {

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}

	// This end point is for displaying access denied page
	@RequestMapping("/403")
	public ModelAndView accesssDenied(Principal user) {
		ModelAndView model = new ModelAndView();
		if (user != null) {
			model.addObject("msg", "Sorry" + user.getName() + "!! , you do not have permission to access this page!");
		} else {
			model.addObject("msg", "You do not have permission to access this page!");
		}
		model.setViewName("403");
		return model;

	}

}