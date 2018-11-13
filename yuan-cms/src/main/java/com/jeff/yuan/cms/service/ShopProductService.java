package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopProduct;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.dao.ShopProductDao;
import com.jeff.yuan.cms.dto.ShopProductQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopProductService类 
 * @date 2018-11-06
 */
@Service
public class ShopProductService extends CommonService< ShopProduct,Integer >  {

    @Autowired
    private ShopProductDao shopProductDao;

    @Autowired
    public void setShopProductDao(ShopProductDao shopProductDao){
      super.setCommonDao(shopProductDao);
    }

    public PageModel<ShopProduct> queryShopProductPage(ShopProductQueryDTO shopProductQueryDTO){
           return this.shopProductDao.queryShopProductPage(shopProductQueryDTO);
    }

    public List<ShopProduct> queryShopProductList(ShopProductQueryDTO shopProductQueryDTO){
           return this.shopProductDao.queryShopProductList(shopProductQueryDTO);
    }

	public void updateStatus(String id, String status) {
		// TODO Auto-generated method stub
		ShopProduct bean = this.find(Integer.parseInt(id));
		bean.setStatus(status);
		this.update(bean);
	}

}