package com.jeff.yuan.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.yuan.cms.dto.ShopBillTradeQueryDTO;
import com.jeff.yuan.cms.entity.ShopBillTrade;
import com.jeff.yuan.cms.service.ShopBillTradeService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.util.ExcelUtils;
import com.jeff.yuan.util.Constants;
/**
 * 健康链Controller
 * @author dingjinqing@163.com
 *
 */
@Controller
@RequestMapping("/shopbilltrade")
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
	public String list(HttpServletRequest request, Model model){
		String type = request.getParameter("type");
		String tradeStatus = request.getParameter("tradeStatus");
		String currentPageStr = request.getParameter("currentPage");
		String pageSizeStr = request.getParameter("pageSize");
		
		int currentPage = 1;
		int pageSize = 30;
		int a = 0,b=0;
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
		
		ShopBillTradeQueryDTO queryDTO = new ShopBillTradeQueryDTO();
		queryDTO.setType(a);
		queryDTO.setTradeStatus(b);
		queryDTO.setCurrentPage(currentPage);
		queryDTO.setPageSize(pageSize);
		
		PageModel<ShopBillTrade> page = tradeService.queryShopBillTradePage(queryDTO);
		model.addAttribute("page", page);
		model.addAttribute("queryDTO", queryDTO);
		model.addAttribute(Constants.MENU_NAME, Constants.SHOP_BILL_TRADE);
		
		return "shop/bill_list";
	}
	
	/**
	 * 导出用户数据
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/export")
	public String exportOrder(HttpServletRequest request, HttpServletResponse response){	
		String type = request.getParameter("type");
		String tradeStatus = request.getParameter("tradeStatus");
		int a = 0,b=0;
		if(StringUtils.isNotBlank(type)){
			a = Integer.parseInt(type);
		}
		if(StringUtils.isNotBlank(tradeStatus)){
			b = Integer.parseInt(tradeStatus);
		}
		ShopBillTradeQueryDTO queryDTO = new ShopBillTradeQueryDTO();
		queryDTO.setType(a);
		queryDTO.setTradeStatus(b);
		
		List<ShopBillTrade> userList = this.tradeService.queryShopBillTradeList(queryDTO);
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, String> headNameMap = new LinkedHashMap<String, String>();
		headNameMap.put("account", "账户名");
		headNameMap.put("phone", "手机号");
		headNameMap.put("refPhone", "推荐人手机号");
		headNameMap.put("vipLevel", "会员等级");
		headNameMap.put("status", "是否有效");
		headNameMap.put("credits", "账户余额");
		headNameMap.put("activeBill", "健康链激活个数");
		headNameMap.put("tradeBill", "转让获得的健康链");
		headNameMap.put("balance", "账户积分");
		headNameMap.put("createDate", "创建时间");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(userList != null && userList.size() > 0){/*
			for(ShopBillTrade user : userList){
				String statusName = "有效";
				String createDate = "";
				if(user.getStatus()==2){
					statusName = "无效";
				}
				
				if(user.getCreateDate() != null){
					createDate = sdf.format(user.getCreateDate());
				}
				
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("account", user.getAccount());
				map.put("phone", user.getPhone());
				map.put("refPhone", user.getRefPhone());
				map.put("vipLevel", VipLevelEnum.getDescByCode(user.getVipLevel()));
				map.put("status", statusName);
				map.put("credits", user.getShopTradeExts().getCredits());
				map.put("activeBill", user.getShopTradeExts().getActiveBill());
				map.put("tradeBill", user.getShopTradeExts().getTradeBill());
				map.put("balance", user.getShopTradeExts().getBalance());
				map.put("createDate", createDate);
				list.add(map);
			}
		*/}
		
		ExcelUtils.exportXlsx(response, "注册用户数据", headNameMap, list);
		return null;
	}
	
	/**
	 * 跳转到用户编辑页
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit")
	public String dialogEdit(HttpServletRequest request, Model model){
		
		String id = request.getParameter("id");
		if(StringUtils.isNotBlank(id)){
			ShopBillTrade bean = tradeService.find(Integer.parseInt(id));
			model.addAttribute("bean", bean);
		}
		model.addAttribute(Constants.MENU_NAME, Constants.SHOP_BILL_TRADE);
		return "shop/dialog/bill_edit";
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
			if(user.getId()!=null && user.getId()!=0){
				tradeService.update(user);
			}else{
				user.setCreateDate(new Date() );
				tradeService.save(user);
			}
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}
		
		return ajaxResult;
	}
	
	
}
