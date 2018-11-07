package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopProduct;
import com.jeff.yuan.cms.dto.ShopProductQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopProductDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopProductDaoCustom {

      PageModel<ShopProduct> queryShopProductPage(ShopProductQueryDTO shopProductQueryDTO);

      List<ShopProduct> queryShopProductList(ShopProductQueryDTO shopProductQueryDTO);



}