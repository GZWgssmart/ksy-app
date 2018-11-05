package com.jeff.yuan.org.dao;


import org.springframework.data.jpa.repository.Query;

import com.jeff.yuan.common.dao.CommonDao;
import com.jeff.yuan.org.entity.Role;

public interface RoleDao extends RoleCustomDao,CommonDao<Role,String>{

	@Query("from Role r where r.roleName = ?1 ")
	public Role findByRoleName(String roleName);
	
}
