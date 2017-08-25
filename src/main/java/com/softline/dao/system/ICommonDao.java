package com.softline.dao.system;



public interface ICommonDao {
	
	public <T> void saveOrUpdate(T t);
	
	public <T> void delete(T t);
	
	public Object findById(Class a ,Integer id);
}
