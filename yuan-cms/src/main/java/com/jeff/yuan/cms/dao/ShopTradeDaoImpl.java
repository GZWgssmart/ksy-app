package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;

import java.util.ArrayList;
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
         if (shopTradeQueryDTO.getIsFront() != null && shopTradeQueryDTO.getIsFront()) {
             hql.append("select new ShopTrade(id,tradeNo,userId,jtype,price,status,credits,createDate) from ShopTrade t where 1=1  ");
         }else {
             hql.append("select t from ShopTrade t where 1=1  ");
         }
         
         
         if(shopTradeQueryDTO.getStatus()!=0){
    		 hql.append(" and t.status = :status ");
    		 map.put("status", shopTradeQueryDTO.getStatus());
    	 }
         if(shopTradeQueryDTO.getJtype()!=0){
        	 hql.append(" and t.jtype = :jtype ");
        	 map.put("jtype", shopTradeQueryDTO.getJtype());
         }
         if(shopTradeQueryDTO.getTypes()!=null && (!shopTradeQueryDTO.getTypes().isEmpty()) &&shopTradeQueryDTO.getTypes().size()>0 ){
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

	@Override
	public int queryLisiJkz(int userId) {
		// TODO Auto-generated method stub
		StringBuilder sql = new StringBuilder();
    	sql.append("SELECT IFNULL(SUM(count),0) as tcount from shop_bill_trade where user_id=? ");
    	List<Object> params = new ArrayList<>();
    	params.add(userId);
    	List<Map<String, Object>> list= this.querySqlObjects(sql.toString(), params);
    	if (list!=null &&list.size()>0){
    		Map<String, Object> map = list.get(0);
    		return  Integer.parseInt(map.get("tcount").toString());
		}else {
			return 0;
		}
	}


}