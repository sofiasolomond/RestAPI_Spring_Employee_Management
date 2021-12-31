package com.greatlearning.EmployeeManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.greatlearning.EmployeeManagement.entity.Roles;

public interface RoleRepository extends JpaRepository<Roles, Integer> {

	// User and User name are taken from User Entity file
	@Query("select u from Roles u where u.roleId = ?1")
	public Roles getRoleByRoleId(int roleId);

	@Query("select u from Roles u where u.roleName = ?1")
	public Roles getRoleByRoleName(String roleName);

}
