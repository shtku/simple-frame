package com.softline.entity;

/**
 * SysUsers entity. @author MyEclipse Persistence Tools
 */

public class SysUsers implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer isDeleted;
	private Integer creater;
	private String createTime;
	private Integer modifier;
	private String modifyTime;
	private String userName;
	private String passWord;
	private String realName;
	private String contactInformation;
	private String email;
	private String status;
	private Integer employeeId;

	// Constructors

	/** default constructor */
	public SysUsers() {
	}

	/** full constructor */
	public SysUsers(Integer isDeleted, Integer creater, String createTime,
			Integer modifier, String modifyTime, String userName,
			String passWord, String realName, String contactInformation,
			String email, String status, Integer employeeId) {
		this.isDeleted = isDeleted;
		this.creater = creater;
		this.createTime = createTime;
		this.modifier = modifier;
		this.modifyTime = modifyTime;
		this.userName = userName;
		this.passWord = passWord;
		this.realName = realName;
		this.contactInformation = contactInformation;
		this.email = email;
		this.status = status;
		this.employeeId = employeeId;
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

	public Integer getModifier() {
		return this.modifier;
	}

	public void setModifier(Integer modifier) {
		this.modifier = modifier;
	}

	public String getModifyTime() {
		return this.modifyTime;
	}

	public void setModifyTime(String modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getContactInformation() {
		return this.contactInformation;
	}

	public void setContactInformation(String contactInformation) {
		this.contactInformation = contactInformation;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getEmployeeId() {
		return this.employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

}