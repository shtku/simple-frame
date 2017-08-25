package com.softline.entity;

/**
 * SysBase entity. @author MyEclipse Persistence Tools
 */

public class SysBase implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer isDeleted;
	private String num;
	private String description;
	private String type;
	private String status;
	private Integer parentId;

	// Constructors

	/** default constructor */
	public SysBase() {
	}

	/** minimal constructor */
	public SysBase(Integer parentId) {
		this.parentId = parentId;
	}

	/** full constructor */
	public SysBase(Integer isDeleted, String num, String description,
			String type, String status, Integer parentId) {
		this.isDeleted = isDeleted;
		this.num = num;
		this.description = description;
		this.type = type;
		this.status = status;
		this.parentId = parentId;
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

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

}