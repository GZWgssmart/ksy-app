package com.jeff.yuan.cms.service;

import com.jeff.yuan.cms.entity.ShopTradeDetail;
import com.jeff.yuan.cms.dao.ShopTradeDetailDao;
import com.jeff.yuan.cms.dto.ShopTradeDetailQueryDTO;
import com.jeff.yuan.common.service.CommonService;
import com.jeff.yuan.common.entity.PageModel;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author dingjinqing
 * @desc ShopTradeDetailService类 
 * @date 2018-11-06
 */
@Service
public class ShopTradeDetailService extends CommonService< ShopTradeDetail,Integer >  {

    @Autowired
    private ShopTradeDetailDao shopTradeDetailDao;

    @Autowired
    public void setShopTradeDetailDao(ShopTradeDetailDao shopTradeDetailDao){
      super.setCommonDao(shopTradeDetailDao);
    }

    public PageModel<ShopTradeDetail> queryShopTradeDetailPage(ShopTradeDetailQueryDTO shopTradeDetailQueryDTO){
           return this.shopTradeDetailDao.queryShopTradeDetailPage(shopTradeDetailQueryDTO);
    }

    public List<ShopTradeDetail> queryShopTradeDetailList(ShopTradeDetailQueryDTO shopTradeDetailQueryDTO){
           return this.shopTradeDetailDao.queryShopTradeDetailList(shopTradeDetailQueryDTO);
    }


}