package com.greatlearning.EmployeeManagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.EmployeeManagement.entity.UsersRoles;
import com.greatlearning.EmployeeManagement.repository.UserRoleRepository;

@Service
public class UserRoleServiceImpl implements UserRoleService{

	@Autowired
	private UserRoleRepository userRoleRepository;
	
	@Override
	public UsersRoles findById(int userId) {
		return  userRoleRepository.getUserRoleByUserId(userId);
	}

	@Override
	public void save(UsersRoles usersRoles) {
		userRoleRepository.save(usersRoles);
		return;
	}
}
