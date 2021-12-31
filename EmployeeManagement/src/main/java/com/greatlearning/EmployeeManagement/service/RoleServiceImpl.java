package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.EmployeeManagement.entity.Roles;
import com.greatlearning.EmployeeManagement.repository.RoleRepository;

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

	@Override
	public List<Roles> findAll() {
		return  roleRepository.findAll();
	}

	@Override
	public void save(Roles roles) {
		roleRepository.save(roles);
		return;
	}
}
