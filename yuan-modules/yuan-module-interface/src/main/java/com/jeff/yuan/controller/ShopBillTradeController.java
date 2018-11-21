package com.jeff.yuan.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.service.ShopBillTradeService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
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
	public AjaxResult ajaxSave(HttpServletRequest request ,ShopBillTrade user){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		
		try {
			if(user.getType()==1) {
				user.setTradeStatus(1);
			}else {
				user.setTradeStatus(2);
			}
			user.setCreateDate(new Date() );
			tradeService.save(user);
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			ajaxResult.setSuccess(false);
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}
		
		return ajaxResult;
	}
	
	
}
