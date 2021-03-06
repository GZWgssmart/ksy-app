package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopUserExt;
import com.jeff.yuan.cms.dao.ShopUserExtDao;
import com.jeff.yuan.cms.dto.ShopUserExtQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopUserExtService类 
 * @date 2018-11-06
 */
@Service
public class ShopUserExtService extends CommonService< ShopUserExt,Integer >  {

    @Autowired
    private ShopUserExtDao shopUserExtDao;

    @Autowired
    public void setShopUserExtDao(ShopUserExtDao shopUserExtDao){
      super.setCommonDao(shopUserExtDao);
    }

    public PageModel<ShopUserExt> queryShopUserExtPage(ShopUserExtQueryDTO shopUserExtQueryDTO){
           return this.shopUserExtDao.queryShopUserExtPage(shopUserExtQueryDTO);
    }

    public List<ShopUserExt> queryShopUserExtList(ShopUserExtQueryDTO shopUserExtQueryDTO){
           return this.shopUserExtDao.queryShopUserExtList(shopUserExtQueryDTO);
    }

	public ShopUserExt queryShopUserByUserId(Integer id) {
		// TODO Auto-generated method stub
		return shopUserExtDao.queryShopUserByUserId(id);
	}


}