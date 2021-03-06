package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import java.util.Map;

import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopUserDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopUserDaoCustom {

      PageModel<ShopUser> queryShopUserPage(ShopUserQueryDTO shopUserQueryDTO);

      List<ShopUser> queryShopUserList(ShopUserQueryDTO shopUserQueryDTO);

      List<Map<String, Object>> queryUser2List(String phone);
      
      List<Map<String, Object>> queryUser3List(String phone);
      
      List<Map<String, Object>> queryIncomeList(String userId);
      
      List<Map<String, Object>> queryIncomeList(ShopUserQueryDTO shopUserQueryDTO);

}