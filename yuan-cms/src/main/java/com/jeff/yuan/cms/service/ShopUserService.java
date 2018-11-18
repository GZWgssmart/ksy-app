package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.dao.ShopUserDao;
import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopUserService类 
 * @date 2018-11-06
 */
@Service
public class ShopUserService extends CommonService< ShopUser,Integer >  {

    @Autowired
    private ShopUserDao shopUserDao;

    @Autowired
    public void setShopUserDao(ShopUserDao shopUserDao){
      super.setCommonDao(shopUserDao);
    }

    public PageModel<ShopUser> queryShopUserPage(ShopUserQueryDTO shopUserQueryDTO){
           return this.shopUserDao.queryShopUserPage(shopUserQueryDTO);
    }

    public List<ShopUser> queryShopUserList(ShopUserQueryDTO shopUserQueryDTO){
           return this.shopUserDao.queryShopUserList(shopUserQueryDTO);
    }

	public void updateStatus(String id, int status) {
		// TODO Auto-generated method stub
		
		ShopUser user = this.find(Integer.parseInt(id));
		user.setStatus(status);
		this.update(user);
	
	}
	
    public List<Map<String, Object>> queryUser2List(String phone){
    	return shopUserDao.queryUser2List(phone);
    }
    
    public List<Map<String, Object>> queryUser3List(String phone){
    	return shopUserDao.queryUser3List(phone);
    }

}