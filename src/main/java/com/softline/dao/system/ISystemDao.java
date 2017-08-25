package com.softline.dao.system;

import java.util.List;

import com.softline.entity.SysAction;
import com.softline.entity.SysRole;
import com.softline.entity.SysRoleaction;
import com.softline.entity.SysUsers;
import com.softline.entity.SysUsersrole;

public interface ISystemDao {

	public boolean isLogin(SysUsers user);
	
	
	
}
