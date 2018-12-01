package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.entity.ShopTradeUser;
import com.jeff.yuan.cms.dto.ShopTradeQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopTradeDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopTradeDaoCustom {

      PageModel<ShopTrade> queryShopTradePage(ShopTradeQueryDTO shopTradeQueryDTO);

      List<ShopTrade> queryShopTradeList(ShopTradeQueryDTO shopTradeQueryDTO);

      int queryLisiJkz(int userId);
      
      PageModel<ShopTradeUser> queryShopTradeUserPage(ShopTradeQueryDTO userQueryDTO);
      
      List<ShopTradeUser> queryShopTradeUserList(ShopTradeQueryDTO userQueryDTO);

}