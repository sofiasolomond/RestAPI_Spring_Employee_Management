package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import com.greatlearning.EmployeeManagement.entity.UsersRoles;


public interface UserRoleService {
	
	public UsersRoles findById(int userId);
	
	public void save(UsersRoles userRoles);
}

