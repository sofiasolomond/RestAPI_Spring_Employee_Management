package com.greatlearning.EmployeeManagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.EmployeeManagement.entity.Roles;
import com.greatlearning.EmployeeManagement.entity.UsersRoles;
import com.greatlearning.EmployeeManagement.repository.RoleRepository;
import com.greatlearning.EmployeeManagement.repository.UserRoleRepository;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleRepository roleRepository;
	
	@Override
	public Roles findById(int roleId) {
		return  roleRepository.getRoleByRoleId(roleId);
	}

	@Override
	public Roles findRoleByRoleName(String roleName) {
		return roleRepository.getRoleByRoleName(roleName);
	}
}
