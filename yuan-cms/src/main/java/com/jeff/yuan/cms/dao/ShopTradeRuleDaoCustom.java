package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopTradeRule;
import com.jeff.yuan.cms.dto.ShopTradeRuleQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopTradeRuleDaoCustom接口 
 * @date 2018-12-02
 */
public interface ShopTradeRuleDaoCustom {

      PageModel<ShopTradeRule> queryShopTradeRulePage(ShopTradeRuleQueryDTO shopTradeRuleQueryDTO);

      List<ShopTradeRule> queryShopTradeRuleList(ShopTradeRuleQueryDTO shopTradeRuleQueryDTO);



}