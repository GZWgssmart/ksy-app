package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
         hql.append("select t from ShopTrade t ");
         return this.queryForPageWithParams(hql.toString(),map,shopTradeQueryDTO.getCurrentPage(),shopTradeQueryDTO.getPageSize());
    }

    public List<ShopTrade> queryShopTradeList(ShopTradeQueryDTO shopTradeQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopTrade t ");
         return this.queryByMapParams(hql.toString(),map);
    }


}