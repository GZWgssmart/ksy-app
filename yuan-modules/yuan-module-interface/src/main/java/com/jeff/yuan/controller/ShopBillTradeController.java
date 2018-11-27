package com.jeff.yuan.controller;

import java.math.BigDecimal;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.entity.ShopSysParam;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.service.ShopBillTradeService;
import com.jeff.yuan.cms.service.ShopSysParamService;
import com.jeff.yuan.cms.service.ShopTradeService;
import com.jeff.yuan.cms.service.ShopUserService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.util.Md5Util;
import com.jeff.yuan.util.WebHelper;
/**
 * 健康链Controller
 * @author dingjinqing@163.com
 *
 */
@Controller
@RequestMapping("/api/shopbilltrade")
public class ShopBillTradeController {

	@Autowired
	private ShopBillTradeService tradeService;
	@Autowired
	private ShopUserService userService;
	@Autowired
    private ShopSysParamService sysParamService;
	@Autowired
	private ShopTradeService stradeService;
	/**
	 * 获取用户列表
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public AjaxResult list(HttpServletRequest request){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		String userId = request.getParameter("userId");
		if (StringUtils.isNotEmpty(userId)) {
			String type = request.getParameter("type");
			String tradeStatus = request.getParameter("tradeStatus");//1、待审/2、完成（转让直接完成，提现需要后台审核
			String currentPageStr = request.getParameter("currentPage");
			String pageSizeStr = request.getParameter("pageSize");
			
			int currentPage = 1;
			int pageSize = 30;
			int a = 0,b=0,u=0;
			if(StringUtils.isNotBlank(currentPageStr)){
				currentPage = Integer.parseInt(currentPageStr);
			}
			if(StringUtils.isNotBlank(pageSizeStr)){
				pageSize = Integer.parseInt(pageSizeStr);
			}
			if(StringUtils.isNotBlank(type)){
				a = Integer.parseInt(type);
			}
			if(StringUtils.isNotBlank(tradeStatus)){
				b = Integer.parseInt(tradeStatus);
			}
			if(StringUtils.isNotBlank(userId)){
				u = Integer.parseInt(userId);
			}
			
			ShopBillTradeQueryDTO queryDTO = new ShopBillTradeQueryDTO();
			queryDTO.setType(a);
			queryDTO.setUserId(u);
			queryDTO.setTradeStatus(b);
			queryDTO.setCurrentPage(currentPage);
			queryDTO.setPageSize(pageSize);
			
			PageModel<ShopBillTrade> page = tradeService.queryShopBillTradePage(queryDTO);
			ajaxResult.setData(page);
			ajaxResult.setSuccess(true);
		}
		
		return ajaxResult;
	}
	
	/**
	 * 用户保存操作
	 * @param request
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult ajaxSave(HttpServletRequest request ,ShopBillTrade bean){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		
		try {//操作类型"1、提现  2、转让 3.捐赠
			if(bean.getType()==3) {
				bean.setTradeStatus(2);
			}else {
				bean.setTradeStatus(1);
			}
			
			bean.setCreateDate(new Date() );
			
			ShopUser user = WebHelper.getUser(request);
			user=userService.find(bean.getUserId());

			/*if (user==null) {
				user=userService.find(bean.getUserId());
			}*/
			String payPwd = request.getParameter("payPwd");
			if (StringUtils.isNotEmpty(user.getJiaoyimima()) ) {
				if (StringUtils.isEmpty(payPwd) ) {
					ajaxResult.setMsg("交易密码不能为空");
					return ajaxResult;
				}
				if (!Md5Util.generatePassword(payPwd.trim()).equals(user.getJiaoyimima())) {
					ajaxResult.setMsg("交易密码错误");
					return ajaxResult;
				}
			}else {
				ajaxResult.setMsg("请先设置交易密码");
				return ajaxResult;
			}
			
			if (bean.getUserId()==0) {
				bean.setUserId(user.getId());
			}
			System.out.println("转让用户信息："+user.getId());
			
			BigDecimal activeBill = new BigDecimal(user.getShopUserExts().getActiveBill()).subtract(new BigDecimal(bean.getCount()));
	        if (activeBill.compareTo(BigDecimal.ZERO)<0) {
				 ajaxResult.setMsg("超出激活的健康值");
				 return ajaxResult;
			}
			
			//操作类型"1、提现  2、转让 3.捐赠     被转让用户转让健康链增加，
        	/*if (bean.getType()==2) {
        		ShopUserQueryDTO shopUserQueryDTO = new ShopUserQueryDTO();
        		shopUserQueryDTO.setPhone(bean.getTradePhone());
        		ShopUser tradeUser = userService.queryShopUserList(shopUserQueryDTO).get(0);
        		if (tradeUser!=null) {
        			BigDecimal transBill = new BigDecimal(tradeUser.getShopUserExts().getTradeBill()).add(new BigDecimal(bean.getCount()));
	    	        tradeUser.getShopUserExts().setTradeBill(transBill.toString());
	    	        userService.update(tradeUser);
	    	        
				}else {
					ajaxResult.setMsg("转让用户不存在");
					return ajaxResult;
				}
        	}else if (bean.getType()==1) {//提现到个人账户余额
//        		获取提现比例
        		ShopSysParam param = sysParamService.findByCode(WebHelper.SYS_PARAM_TIXIAN);
//        		数量乘以兑换比例
    	        BigDecimal jine = new BigDecimal(param.getSysValue()).multiply(new BigDecimal(bean.getCount()));
    	        user.getShopUserExts().setBalance(user.getShopUserExts().getBalance().add(jine));
    	        //插入提现记录到交易表
    	        ShopTrade ztTrade = new ShopTrade();
            	ztTrade.setPrice(jine);
            	ztTrade.setUserId(user.getId());
            	ztTrade.setTradeNo(WebHelper.getDayNo());
            	ztTrade.setJtype(12);//1.购买会员大礼包2.复购产品3.直推4.间推5.管理奖6.股份收益7.平台分红8.捐赠9购买返点10直推购买返点11间推购买返点12提现健康值13项目合作
            	ztTrade.setStatus(3);
            	ztTrade.setCredits(0);
            	ztTrade.setCreateDate(new Date());
            	ztTrade.setShopTradeDetails(null);
            	stradeService.save(ztTrade);
        	}
        	
        	//发起用户减少健康链
	        //减去激活的健康链
	        user.getShopUserExts().setActiveBill( activeBill.toString());
	        userService.update(user);*/
	        
			
			tradeService.save(bean);
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			ajaxResult.setSuccess(false);
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}
		
		return ajaxResult;
	}
	
	
}
