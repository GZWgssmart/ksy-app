package com.jeff.yuan.cms.dao;

import com.jeff.yuan.common.entity.PageModel;
import java.util.List;
import com.jeff.yuan.cms.entity.ShopUserExt;
import com.jeff.yuan.cms.dto.ShopUserExtQueryDTO;
/**
 * @author dingjinqing
 * @desc ShopUserExtDaoCustom接口 
 * @date 2018-11-06
 */
public interface ShopUserExtDaoCustom {

      PageModel<ShopUserExt> queryShopUserExtPage(ShopUserExtQueryDTO shopUserExtQueryDTO);

      List<ShopUserExt> queryShopUserExtList(ShopUserExtQueryDTO shopUserExtQueryDTO);



}