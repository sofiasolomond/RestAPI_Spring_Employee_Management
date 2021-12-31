package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import com.greatlearning.EmployeeManagement.entity.Roles;



public interface RoleService {

	public Roles findById(int roleId);
	public void save(Roles roles);
	public Roles findRoleByRoleName(String roleName);
	public List <Roles> findAll();


}
