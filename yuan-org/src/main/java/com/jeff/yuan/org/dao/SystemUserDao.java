package com.jeff.yuan.org.dao;


import java.util.List;
import java.util.Map;

import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.org.dto.UserQueryDTO;
import com.jeff.yuan.org.entity.User;

public interface SystemUserDao {
	
	public List<User> findUsers(Map<String, Object> params);
	
	/**
	 * 根据用户信息查询分页信息
	 * @param userQueryDTO
	 * @return
	 */
	PageModel<User> queryUserPage(UserQueryDTO userQueryDTO);
	
}
