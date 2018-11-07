package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopUserDaoImpl类 
 * @date 2018-11-06
 */

public class ShopUserDaoImpl extends CustomBaseSqlDaoImpl implements ShopUserDaoCustom  {

    public PageModel<ShopUser> queryShopUserPage(ShopUserQueryDTO shopUserQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopUser t ");
         return this.queryForPageWithParams(hql.toString(),map,shopUserQueryDTO.getCurrentPage(),shopUserQueryDTO.getPageSize());
    }

    public List<ShopUser> queryShopUserList(ShopUserQueryDTO shopUserQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopUser t ");
         return this.queryByMapParams(hql.toString(),map);
    }


}