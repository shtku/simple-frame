package com.softline.entity;

/**
 * SysUsersrole entity. @author MyEclipse Persistence Tools
 */

public class SysUsersrole implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Integer roleId;

	// Constructors

	/** default constructor */
	public SysUsersrole() {
	}

	/** full constructor */
	public SysUsersrole(Integer userId, Integer roleId) {
		this.userId = userId;
		this.roleId = roleId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

}