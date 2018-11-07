package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.jeff.yuan.cms.entity.ShopProduct;
import com.jeff.yuan.cms.dto.ShopProductQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopProductDaoImpl类 
 * @date 2018-11-06
 */

public class ShopProductDaoImpl extends CustomBaseSqlDaoImpl implements ShopProductDaoCustom  {

    public PageModel<ShopProduct> queryShopProductPage(ShopProductQueryDTO shopProductQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopProduct t ");
         return this.queryForPageWithParams(hql.toString(),map,shopProductQueryDTO.getCurrentPage(),shopProductQueryDTO.getPageSize());
    }

    public List<ShopProduct> queryShopProductList(ShopProductQueryDTO shopProductQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopProduct t ");
         return this.queryByMapParams(hql.toString(),map);
    }


}