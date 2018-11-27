package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.dao.ShopBillTradeDao;
import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopBillTradeService类 
 * @date 2018-11-06
 */
@Service
public class ShopBillTradeService extends CommonService< ShopBillTrade,Integer >  {

    @Autowired
    private ShopBillTradeDao shopBillTradeDao;

    @Autowired
    public void setShopBillTradeDao(ShopBillTradeDao shopBillTradeDao){
      super.setCommonDao(shopBillTradeDao);
    }

    public PageModel<ShopBillTrade> queryShopBillTradePage(ShopBillTradeQueryDTO shopBillTradeQueryDTO){
           return this.shopBillTradeDao.queryShopBillTradePage(shopBillTradeQueryDTO);
    }

    public List<ShopBillTrade> queryShopBillTradeList(ShopBillTradeQueryDTO shopBillTradeQueryDTO){
           return this.shopBillTradeDao.queryShopBillTradeList(shopBillTradeQueryDTO);
    }

	public ShopBillTrade updateStatus(String id, int status) {
		// TODO Auto-generated method stub
		ShopBillTrade bean = this.find(Integer.parseInt(id));
		bean.setTradeStatus(status);
		this.update(bean);
		return bean;
	}


}