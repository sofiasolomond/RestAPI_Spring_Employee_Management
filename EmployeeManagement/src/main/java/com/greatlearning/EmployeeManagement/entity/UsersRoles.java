package com.greatlearning.EmployeeManagement.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_users_roles")
public class UsersRoles {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "user_id")
	private int userId;

	@Column(name = "role_id")
	private int roleId;
	public UsersRoles() {
	}

	public UsersRoles(int userId, int roleId) {
		this.userId = userId;
		this.roleId = roleId;
	}
}
