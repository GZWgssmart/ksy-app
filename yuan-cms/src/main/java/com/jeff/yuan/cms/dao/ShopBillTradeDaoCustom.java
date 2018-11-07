package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopBillTradeDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopBillTradeDaoCustom {

      PageModel<ShopBillTrade> queryShopBillTradePage(ShopBillTradeQueryDTO shopBillTradeQueryDTO);

      List<ShopBillTrade> queryShopBillTradeList(ShopBillTradeQueryDTO shopBillTradeQueryDTO);



}