package com.softline.dao.redis.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Repository;

import com.softline.dao.redis.IRedisDao;
import com.softline.entity.SysUsers;

@Repository(value = "redisDao")
public class RedisDao<V, K> implements IRedisDao {
	
	@Autowired
	protected RedisTemplate<K, V> redisTemplate ;
	
	/**
	 * 添加对象
	 */
	@Override
	public boolean add(final SysUsers user) { 
		boolean result = redisTemplate.execute(new RedisCallback<Boolean>() { 
			public Boolean doInRedis(RedisConnection connection) throws DataAccessException { 
				RedisSerializer<String> serializer = getRedisSerializer(); 
				byte[] key  = serializer.serialize("1"); 
				byte[] value = serializer.serialize("2");
				return connection.setNX(key, value);
			}
		}); 
		return result; 
	}

	protected RedisSerializer<String> getRedisSerializer() {
		return redisTemplate.getStringSerializer(); 
	}
}
