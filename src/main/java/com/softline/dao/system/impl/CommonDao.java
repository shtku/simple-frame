package com.softline.dao.system.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.softline.dao.system.ICommonDao;

@Repository(value = "commonDao")
public class CommonDao implements ICommonDao{
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public <T> void saveOrUpdate(T t) {
		sessionFactory.getCurrentSession().saveOrUpdate(t);
	}

	@Override
	public <T> void delete(T t) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(t);
	}

	@Override
	public Object findById(Class a, Integer id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(a, id);
	}

}
