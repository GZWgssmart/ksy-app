package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopBillTradeDaoImpl类 
 * @date 2018-11-06
 */

public class ShopBillTradeDaoImpl extends CustomBaseSqlDaoImpl implements ShopBillTradeDaoCustom  {

    public PageModel<ShopBillTrade> queryShopBillTradePage(ShopBillTradeQueryDTO shopBillTradeQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopBillTrade t where 1=1 ");
         if(shopBillTradeQueryDTO.getUserId()!=0){
        	 hql.append(" and t.userId = :userId ");
        	 map.put("userId", shopBillTradeQueryDTO.getUserId());
         }
         if(shopBillTradeQueryDTO.getType()!=0){
        	 hql.append(" and t.type = :type ");
        	 map.put("type", shopBillTradeQueryDTO.getType());
         }
         if(shopBillTradeQueryDTO.getTradeStatus()!=0){
        	 hql.append(" and t.tradeStatus = :tradeStatus ");
        	 map.put("tradeStatus", shopBillTradeQueryDTO.getTradeStatus());
         }
         return this.queryForPageWithParams(hql.toString(),map,shopBillTradeQueryDTO.getCurrentPage(),shopBillTradeQueryDTO.getPageSize());
    }

    public List<ShopBillTrade> queryShopBillTradeList(ShopBillTradeQueryDTO shopBillTradeQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopBillTrade t where 1=1  ");
         if(shopBillTradeQueryDTO.getUserId()!=0){
        	 hql.append(" and t.userId = :userId ");
        	 map.put("userId", shopBillTradeQueryDTO.getUserId());
         }
         if(shopBillTradeQueryDTO.getType()!=0){
        	 hql.append(" and t.type = :type ");
        	 map.put("type", shopBillTradeQueryDTO.getType());
         }
         if(shopBillTradeQueryDTO.getTradeStatus()!=0){
        	 hql.append(" and t.tradeStatus = :tradeStatus ");
        	 map.put("tradeStatus", shopBillTradeQueryDTO.getTradeStatus());
         }
         return this.queryByMapParams(hql.toString(),map);
    }


}