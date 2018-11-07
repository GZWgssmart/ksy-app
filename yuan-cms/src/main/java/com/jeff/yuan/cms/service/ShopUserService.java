package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.dao.ShopUserDao;
import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopUserService类 
 * @date 2018-11-06
 */
@Service
public class ShopUserService extends CommonService< ShopUser,Integer >  {

    @Autowired
    private ShopUserDao shopUserDao;

    @Autowired
    public void setShopUserDao(ShopUserDao shopUserDao){
      super.setCommonDao(shopUserDao);
    }

    public PageModel<ShopUser> queryShopUserPage(ShopUserQueryDTO shopUserQueryDTO){
           return this.shopUserDao.queryShopUserPage(shopUserQueryDTO);
    }

    public List<ShopUser> queryShopUserList(ShopUserQueryDTO shopUserQueryDTO){
           return this.shopUserDao.queryShopUserList(shopUserQueryDTO);
    }


}