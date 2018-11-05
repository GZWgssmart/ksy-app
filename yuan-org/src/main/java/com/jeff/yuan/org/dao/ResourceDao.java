package com.jeff.yuan.org.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.jeff.yuan.common.dao.CommonDao;
import com.jeff.yuan.org.entity.Resource;

public interface ResourceDao extends ResourceDaoCustom, CommonDao<Resource,String>{

	@Query("select r from Resource r where r.deleteFlag = 0 and r.parent.id = null ")
	List<Resource> getRootResourceList();
	
	@Query("select r from Resource r where r.deleteFlag = 0 order by r.orderNo")
	List<Resource> getSystemResourceList();
	
}
