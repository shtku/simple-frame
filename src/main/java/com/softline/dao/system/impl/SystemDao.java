package com.softline.dao.system.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.softline.common.Common;
import com.softline.dao.system.ISystemDao;
import com.softline.entity.SysAction;
import com.softline.entity.SysRole;
import com.softline.entity.SysRoleaction;
import com.softline.entity.SysUsers;
import com.softline.entity.SysUsersrole;

@Repository(value = "systemDao")
public class SystemDao implements ISystemDao {
	
	@Autowired  
    @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public boolean isLogin(SysUsers user){
		StringBuffer hql = new StringBuffer();
		hql.append("from SysUsers sys where 1=1 ");
		if(Common.notEmpty(user.getUserName())){
			hql.append(" and sys.userName = '"+ user.getUserName() +"' ");
			Query query = sessionFactory.getCurrentSession().createQuery(hql.toString());
			List list = query.list();
			if(list.size() > 0){
				user = (SysUsers)list.get(0);
				return true;
			}
			else{
				return false;
			}
		}
		else{
			return false;
		}
	}

		
	
}
