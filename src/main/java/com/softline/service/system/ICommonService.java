package com.softline.service.system;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


public interface ICommonService {
	
	/**
	 * 李中棠
	 * 公用新增保存方法（实体）
	 * @param t
	 */
	public <T> void saveOrUpdate(T t);
	
	/**
	 * 李中棠
	 * 公用删除方法（实体）
	 * @param t
	 */
	public <T> void delete(T t);
} 
