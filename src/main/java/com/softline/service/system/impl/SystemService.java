package com.softline.service.system.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.softline.common.Common;
import com.softline.dao.system.ICommonDao;
import com.softline.dao.system.ISystemDao;
import com.softline.entity.SysAction;

import com.softline.entity.SysRole;
import com.softline.entity.SysRoleaction;
import com.softline.entity.SysUsers;
import com.softline.entity.SysUsersrole;
import com.softline.service.system.ISystemService;

@Service("systemService")
public class SystemService implements ISystemService {

	@Autowired
	@Qualifier("systemDao")
	private ISystemDao systemDao;
	
	@Autowired
	@Qualifier("commonDao")
	private ICommonDao commonDao;
	
	public boolean isLogin(SysUsers user){
		boolean retVal = systemDao.isLogin(user);
		return retVal;
	}

	
}
