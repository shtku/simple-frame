package com.softline.entity;

/**
 * SysRole entity. @author MyEclipse Persistence Tools
 */

public class SysRole implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer isDeleted;
	private Integer creater;
	private String createTime;
	private Integer modifierId;
	private String modifyTime;
	private String name;
	private String description;

	// Constructors

	/** default constructor */
	public SysRole() {
	}

	/** full constructor */
	public SysRole(Integer isDeleted, Integer creater, String createTime,
			Integer modifierId, String modifyTime, String name,
			String description) {
		this.isDeleted = isDeleted;
		this.creater = creater;
		this.createTime = createTime;
		this.modifierId = modifierId;
		this.modifyTime = modifyTime;
		this.name = name;
		this.description = description;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getCreater() {
		return this.creater;
	}

	public void setCreater(Integer creater) {
		this.creater = creater;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getModifierId() {
		return this.modifierId;
	}

	public void setModifierId(Integer modifierId) {
		this.modifierId = modifierId;
	}

	public String getModifyTime() {
		return this.modifyTime;
	}

	public void setModifyTime(String modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}