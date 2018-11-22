package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopRegisterRule;
import com.jeff.yuan.cms.dto.ShopRegisterRuleQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopRegisterRuleDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopRegisterRuleDaoCustom {

      PageModel<ShopRegisterRule> queryShopRegisterRulePage(ShopRegisterRuleQueryDTO shopRegisterRuleQueryDTO);

      List<ShopRegisterRule> queryShopRegisterRuleList(ShopRegisterRuleQueryDTO shopRegisterRuleQueryDTO);

      ShopRegisterRule findByVip(String vipLevel);

}