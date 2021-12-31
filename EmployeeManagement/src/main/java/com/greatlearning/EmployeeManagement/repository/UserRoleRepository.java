package com.greatlearning.EmployeeManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.greatlearning.EmployeeManagement.entity.UsersRoles;

public interface UserRoleRepository extends JpaRepository<UsersRoles, Integer> {

	// User and Username are taken from User Entity file
	@Query("select u from UsersRoles u where u.userId = ?1")
	public UsersRoles getUserRoleByUserId(int userId);
}
