package com.jeff.yuan.org.dao;

import java.util.List;
import java.util.Map;

import com.jeff.yuan.org.entity.Resource;


public interface ResourceDaoCustom {

	public List<Resource> findMenuResource(Map<String, Object> params);
	
}
