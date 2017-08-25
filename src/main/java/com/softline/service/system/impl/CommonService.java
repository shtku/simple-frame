package com.softline.service.system.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.softline.dao.system.ICommonDao;
import com.softline.service.system.ICommonService;

@Service("commonService")
public class CommonService implements ICommonService{
	@Autowired
	@Qualifier("commonDao")
	private ICommonDao commonDao;
	
	@Override
	public <T> void saveOrUpdate(T t) {
		// TODO Auto-generated method stub
		commonDao.saveOrUpdate(t);
	}

	@Override
	public <T> void delete(T t) {
		// TODO Auto-generated method stub
		commonDao.delete(t);
	}
	
}
