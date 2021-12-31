package com.greatlearning.EmployeeManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.greatlearning.EmployeeManagement.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	// User and Username are taken from User Entity file
	@Query("select u from User u where u.userName = ?1")
	public User getUserByUsername(String username);
}
