package com.softline.service.redis.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.softline.dao.redis.IRedisDao;
import com.softline.entity.SysUsers;
import com.softline.service.redis.IRedisService;

@Service("redisService")
public class RedisService implements IRedisService {

	@Autowired
	@Qualifier("redisDao")
	private IRedisDao redisDao;
	
	public boolean add(SysUsers user){
		boolean retVal = redisDao.add(user);
		return retVal;
	}
	
}
