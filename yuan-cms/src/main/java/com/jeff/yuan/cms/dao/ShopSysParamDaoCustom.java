package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopSysParam;
import com.jeff.yuan.cms.dto.ShopSysParamQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopSysParamDaoCustom接口 
 * @date 2018-11-19
 */
public interface ShopSysParamDaoCustom {

      PageModel<ShopSysParam> queryShopSysParamPage(ShopSysParamQueryDTO shopSysParamQueryDTO);

      List<ShopSysParam> queryShopSysParamList(ShopSysParamQueryDTO shopSysParamQueryDTO);



}