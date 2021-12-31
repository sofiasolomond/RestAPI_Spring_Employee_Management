package com.greatlearning.EmployeeManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.EmployeeManagement.entity.User;
import com.greatlearning.EmployeeManagement.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public void save(User user) {
		userRepository.save(user);
		return;
	}

	@Override
	public void deleteById(int userId) {
		userRepository.deleteById(userId);
		return;
		
	}

	@Override
	public User findById(int userId) {
		return userRepository.findById(userId).get();
		
	}

}
