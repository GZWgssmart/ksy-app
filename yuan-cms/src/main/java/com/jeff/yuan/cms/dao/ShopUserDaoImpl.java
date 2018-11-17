package com.jeff.yuan.cms.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
/**
 * @author dingjinqing
 * @desc ShopUserDaoImpl类 
 * @date 2018-11-06
 */

public class ShopUserDaoImpl extends CustomBaseSqlDaoImpl implements ShopUserDaoCustom  {

    public PageModel<ShopUser> queryShopUserPage(ShopUserQueryDTO shopUserQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopUser t where 1=1  ");
         if(shopUserQueryDTO != null){
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getPhone())){
        		 hql.append(" and t.phone = :phone ");
            	 map.put("phone", shopUserQueryDTO.getPhone());
        	 }
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getVipLevel())){
        		 hql.append(" and t.vipLevel = :vipLevel ");
        		 map.put("vipLevel", shopUserQueryDTO.getVipLevel());
        	 }
        	 if(shopUserQueryDTO.getStatus()!=0){
        		 hql.append(" and t.status = :status ");
        		 map.put("status", shopUserQueryDTO.getStatus());
        	 }
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getAccount())){
        		 hql.append(" and t.account = :account ");
        		 map.put("account", shopUserQueryDTO.getAccount());
        	 }
    		 
         }
         hql.append(" order by t.createDate desc ");
         return this.queryForPageWithParams(hql.toString(),map,shopUserQueryDTO.getCurrentPage(),shopUserQueryDTO.getPageSize());
    }

    public List<ShopUser> queryShopUserList(ShopUserQueryDTO shopUserQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopUser t where 1=1  ");
         if(shopUserQueryDTO != null){
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getPhone())){
        		 hql.append(" and t.phone = :phone ");
            	 map.put("phone", shopUserQueryDTO.getPhone());
        	 }
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getVipLevel())){
        		 hql.append(" and t.vipLevel = :vipLevel ");
        		 map.put("vipLevel", shopUserQueryDTO.getVipLevel());
        	 }
        	 if(shopUserQueryDTO.getStatus()!=0){
        		 hql.append(" and t.status = :status ");
        		 map.put("status", shopUserQueryDTO.getStatus());
        	 }
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getAccount())){
        		 hql.append(" and t.account = :account ");
        		 map.put("account", shopUserQueryDTO.getAccount());
        	 }
        	 if(StringUtils.isNotBlank(shopUserQueryDTO.getPassword())){
        		 hql.append(" and t.password = :password ");
        		 map.put("password", shopUserQueryDTO.getPassword());
        	 }
    		 
         }
         hql.append(" order by t.createDate desc ");
         return this.queryByMapParams(hql.toString(),map);
    }



}