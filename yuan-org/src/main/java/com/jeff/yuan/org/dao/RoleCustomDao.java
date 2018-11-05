package com.jeff.yuan.org.dao;

import java.util.List;
import java.util.Map;

import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.org.dto.RoleQueryDTO;
import com.jeff.yuan.org.entity.Role;

public interface RoleCustomDao {
	
	public List<Role> findRoles(Map<String, Object> params);
	
	/**
	 * 根据查询条件查询角色分页信息
	 * @param userQueryDTO
	 * @return
	 */
	PageModel<Role> queryRolePage(RoleQueryDTO roleQueryDTO);
	
}
