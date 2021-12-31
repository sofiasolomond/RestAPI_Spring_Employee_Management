package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import com.greatlearning.EmployeeManagement.entity.User;


public interface UserService {


	public List<User> findAll();

	public void save(User user);

	public void deleteById(int userId);	

	public User findById(int userId);
}
