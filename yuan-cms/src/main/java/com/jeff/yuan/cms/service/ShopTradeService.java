package com.jeff.yuan.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeff.yuan.cms.dao.ShopTradeDao;
import com.jeff.yuan.cms.dto.ShopTradeQueryDTO;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.service.CommonService;
/**
 * @author dingjinqing
 * @desc ShopTradeService类 
 * @date 2018-11-06
 */
@Service
public class ShopTradeService extends CommonService< ShopTrade,Integer >  {

    @Autowired
    private ShopTradeDao shopTradeDao;

    @Autowired
    public void setShopTradeDao(ShopTradeDao shopTradeDao){
      super.setCommonDao(shopTradeDao);
    }

    public PageModel<ShopTrade> queryShopTradePage(ShopTradeQueryDTO shopTradeQueryDTO){
           return this.shopTradeDao.queryShopTradePage(shopTradeQueryDTO);
    }

    public List<ShopTrade> queryShopTradeList(ShopTradeQueryDTO shopTradeQueryDTO){
           return this.shopTradeDao.queryShopTradeList(shopTradeQueryDTO);
    }

	public void updateStatus(String id, int status) {
		// TODO Auto-generated method stub
		ShopTrade bean = this.find(Integer.parseInt(id));
		bean.setStatus(status);
		this.update(bean);
	}


}