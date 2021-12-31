package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import com.greatlearning.EmployeeManagement.entity.Roles;
import com.greatlearning.EmployeeManagement.entity.User;
import com.greatlearning.EmployeeManagement.entity.UsersRoles;


public interface RoleService {

	public Roles findById(int roleId);
	
	public Roles findRoleByRoleName(String roleName);

}
