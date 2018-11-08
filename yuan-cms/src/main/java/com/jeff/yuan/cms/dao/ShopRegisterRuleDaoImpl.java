package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.dao.CustomBaseSqlDaoImpl;
import com.jeff.yuan.common.entity.PageModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.jeff.yuan.cms.entity.ShopRegisterRule;
import com.jeff.yuan.cms.dto.ShopRegisterRuleQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopRegisterRuleDaoImpl类 
 * @date 2018-11-06
 */

public class ShopRegisterRuleDaoImpl extends CustomBaseSqlDaoImpl implements ShopRegisterRuleDaoCustom  {

    public PageModel<ShopRegisterRule> queryShopRegisterRulePage(ShopRegisterRuleQueryDTO shopRegisterRuleQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopRegisterRule t ");
         return this.queryForPageWithParams(hql.toString(),map,shopRegisterRuleQueryDTO.getCurrentPage(),shopRegisterRuleQueryDTO.getPageSize());
    }

    public List<ShopRegisterRule> queryShopRegisterRuleList(ShopRegisterRuleQueryDTO shopRegisterRuleQueryDTO){
         Map<String,Object> map = new HashMap<String,Object>();
         StringBuilder hql = new StringBuilder();
         hql.append("select t from ShopRegisterRule t ");
         return this.queryByMapParams(hql.toString(),map);
    }


}