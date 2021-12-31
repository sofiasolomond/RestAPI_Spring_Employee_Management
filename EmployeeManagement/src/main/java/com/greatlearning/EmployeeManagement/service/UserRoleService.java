package com.greatlearning.EmployeeManagement.service;


import com.greatlearning.EmployeeManagement.entity.UsersRoles;


public interface UserRoleService {
	
	public UsersRoles findById(int userId);
	
	public void save(UsersRoles userRoles);
}

