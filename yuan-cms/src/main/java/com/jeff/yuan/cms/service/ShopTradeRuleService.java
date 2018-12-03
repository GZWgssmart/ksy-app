package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopTradeRule;
import com.jeff.yuan.cms.dao.ShopTradeRuleDao;
import com.jeff.yuan.cms.dto.ShopTradeRuleQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopTradeRuleService类 
 * @date 2018-12-02
 */
@Service
public class ShopTradeRuleService extends CommonService< ShopTradeRule,Integer >  {

    @Autowired
    private ShopTradeRuleDao shopTradeRuleDao;

    @Autowired
    public void setShopTradeRuleDao(ShopTradeRuleDao shopTradeRuleDao){
      super.setCommonDao(shopTradeRuleDao);
    }

    public PageModel<ShopTradeRule> queryShopTradeRulePage(ShopTradeRuleQueryDTO shopTradeRuleQueryDTO){
           return this.shopTradeRuleDao.queryShopTradeRulePage(shopTradeRuleQueryDTO);
    }

    public List<ShopTradeRule> queryShopTradeRuleList(ShopTradeRuleQueryDTO shopTradeRuleQueryDTO){
           return this.shopTradeRuleDao.queryShopTradeRuleList(shopTradeRuleQueryDTO);
    }

    public ShopTradeRule queryShopTradeRule(Integer proId,String vipLevel) {
    	ShopTradeRuleQueryDTO queryDTO = new ShopTradeRuleQueryDTO();
    	queryDTO.setVipLevel(vipLevel);
    	queryDTO.setProId(proId);
    	List<ShopTradeRule> list = this.shopTradeRuleDao.queryShopTradeRuleList(queryDTO);
    	if (list!=null && list.size()>0) {
    		return this.shopTradeRuleDao.queryShopTradeRuleList(queryDTO).get(0);
			
		}else {
			ShopTradeRule tradeRule = new ShopTradeRule();
			tradeRule.setFugoufd("0");
			tradeRule.setFugoujtfd("0");
			tradeRule.setFugouztfd("0");
			return tradeRule;
		}

	}
}