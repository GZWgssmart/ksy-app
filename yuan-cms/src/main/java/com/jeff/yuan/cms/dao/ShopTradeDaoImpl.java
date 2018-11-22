package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.dto.ShopTradeQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopTradeDaoImpl类 
 * @date 2018-11-06
 */

public class ShopTradeDaoImpl extends CustomBaseSqlDaoImpl implements ShopTradeDaoCustom  {

    public PageModel<ShopTrade> queryShopTradePage(ShopTradeQueryDTO shopTradeQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopTrade t where 1=1  ");
         if(shopTradeQueryDTO.getStatus()!=0){
    		 hql.append(" and t.status = :status ");
    		 map.put("status", shopTradeQueryDTO.getStatus());
    	 }
         if(shopTradeQueryDTO.getJtype()!=0){
        	 hql.append(" and t.jtype = :jtype ");
        	 map.put("jtype", shopTradeQueryDTO.getJtype());
         }
         if(!shopTradeQueryDTO.getTypes().isEmpty() &&shopTradeQueryDTO.getTypes().size()>0 ){
        	 hql.append(" and t.jtype in ( :types ) ");
        	 map.put("types", shopTradeQueryDTO.getTypes());
         }
         if(shopTradeQueryDTO.getUserId()!=0){
        	 hql.append(" and t.userId = :userId ");
        	 map.put("userId", shopTradeQueryDTO.getUserId());
         }
         hql.append(" order by t.id desc");
         return this.queryForPageWithParams(hql.toString(),map,shopTradeQueryDTO.getCurrentPage(),shopTradeQueryDTO.getPageSize());
    }

    public List<ShopTrade> queryShopTradeList(ShopTradeQueryDTO shopTradeQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopTrade t where 1=1  ");
         if(shopTradeQueryDTO.getStatus()!=0){
    		 hql.append(" and t.status = :status ");
    		 map.put("status", shopTradeQueryDTO.getStatus());
    	 }
         if(shopTradeQueryDTO.getJtype()!=0){
        	 hql.append(" and t.jtype = :jtype ");
        	 map.put("jtype", shopTradeQueryDTO.getJtype());
         }
         if(!shopTradeQueryDTO.getTypes().isEmpty() &&shopTradeQueryDTO.getTypes().size()>0 ){
        	 hql.append(" and t.jtype in ( :types ) ");
        	 map.put("types", shopTradeQueryDTO.getTypes());
         }
         if(shopTradeQueryDTO.getUserId()!=0){
        	 hql.append(" and t.userId = :userId ");
        	 map.put("userId", shopTradeQueryDTO.getUserId());
         }
         hql.append(" order by t.id desc");
         return this.queryByMapParams(hql.toString(),map);
    }


}