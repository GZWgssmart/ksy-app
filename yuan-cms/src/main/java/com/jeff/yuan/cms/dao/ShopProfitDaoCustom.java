package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopProfit;
import com.jeff.yuan.cms.dto.ShopProfitQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopProfitDaoCustom接口 
 * @date 2018-12-08
 */
public interface ShopProfitDaoCustom {

      PageModel<ShopProfit> queryShopProfitPage(ShopProfitQueryDTO shopProfitQueryDTO);

      List<ShopProfit> queryShopProfitList(ShopProfitQueryDTO shopProfitQueryDTO);



}