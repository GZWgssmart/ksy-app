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

import com.jeff.yuan.cms.dto.ShopTradeQueryDTO;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.service.ShopTradeService;
import com.jeff.yuan.cms.service.ShopUserService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.util.ExcelUtils;
import com.jeff.yuan.util.Constants;
import com.jeff.yuan.util.WebHelper;
/**
 * 用户管理Controller
 * @author dingjinqing@163.com
 *
 */
@Controller
@RequestMapping("/shoptrade")
public class ShopTradeController {

	@Autowired
	private ShopTradeService tradeService;
	@Autowired
	private ShopUserService userService;
	
	/**
	 * 获取用户列表
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model){
		String status = request.getParameter("status");
		String jtype = request.getParameter("jtype");
		String currentPageStr = request.getParameter("currentPage");
		String pageSizeStr = request.getParameter("pageSize");
		
		int currentPage = 1;
		int pageSize = 30;
		int sta =0;
		int jty =0;
		if(StringUtils.isNotBlank(currentPageStr)){
			currentPage = Integer.parseInt(currentPageStr);
		}
		if(StringUtils.isNotBlank(pageSizeStr)){
			pageSize = Integer.parseInt(pageSizeStr);
		}
		if(StringUtils.isNotBlank(status)){
			sta = Integer.parseInt(status);
		}
		if(StringUtils.isNotBlank(jtype)){
			jty = Integer.parseInt(jtype);
		}
		
		ShopTradeQueryDTO userQueryDTO = new ShopTradeQueryDTO();
		userQueryDTO.setStatus(sta);
		userQueryDTO.setJtype(jty);
		userQueryDTO.setCurrentPage(currentPage);
		userQueryDTO.setPageSize(pageSize);
		
		PageModel<ShopTrade> page = tradeService.queryShopTradePage(userQueryDTO);
		model.addAttribute("page", page);
		model.addAttribute("queryDTO", userQueryDTO);
		model.addAttribute(Constants.MENU_NAME, Constants.SHOP_TRADE_LIST);
		
		return "shop/trade_list";
	}
	
	/**
	 * 导出用户数据
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/export")
	public String exportOrder(HttpServletRequest request, HttpServletResponse response){	
		String account = request.getParameter("account");
		String phone = request.getParameter("phone");
		String status = request.getParameter("status");
		String vipLevel = request.getParameter("vipLevel");
		int sta =0;
		if(StringUtils.isNotBlank(status)){
			sta = Integer.parseInt(status);
		}
		
		ShopTradeQueryDTO userQueryDTO = new ShopTradeQueryDTO();
//		userQueryDTO.setAccount(account);
//		userQueryDTO.setPhone(phone);
//		userQueryDTO.setStatus(sta);
//		userQueryDTO.setVipLevel(vipLevel);
		
		List<ShopTrade> userList = this.tradeService.queryShopTradeList(userQueryDTO);
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
			for(ShopTrade bean : userList){
				String statusName = "有效";
				String createDate = "";
				if(bean.getStatus()==2){
					statusName = "无效";
				}
				
				if(bean.getCreateDate() != null){
					createDate = sdf.format(bean.getCreateDate());
				}
				
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("account", bean.getAccount());
				map.put("phone", bean.getPhone());
				map.put("refPhone", bean.getRefPhone());
				map.put("vipLevel", VipLevelEnum.getDescByCode(bean.getVipLevel()));
				map.put("status", statusName);
				map.put("credits", bean.getShopTradeExts().getCredits());
				map.put("activeBill", bean.getShopTradeExts().getActiveBill());
				map.put("tradeBill", bean.getShopTradeExts().getTradeBill());
				map.put("balance", bean.getShopTradeExts().getBalance());
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
			ShopTrade bean = tradeService.find(Integer.parseInt(id));
			ShopUser user = userService.find(bean.getUserId());
			model.addAttribute("bean", bean);
			model.addAttribute("user", user);
			
		}
		return "shop/dialog/trade_edit";
	}
	
	/**
	 * 用户保存操作
	 * @param request
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult ajaxSave(HttpServletRequest request ,ShopTrade bean){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		
		try {
			if(bean.getId()!=null && bean.getId()!=0){
				tradeService.update(bean);
			}else{
				bean.setCreateDate(new Date() );
				bean.setTradeNo(WebHelper.getDayNo());
				tradeService.save(bean);
			}
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}
		
		return ajaxResult;
	}
	
	
	/**
	 * 修改用户状态
	 * @param request
	 * @return
	 */
	@RequestMapping("/upd/status")
	@ResponseBody
	public AjaxResult ajaxUpdStatus(HttpServletRequest request){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		
		try {
			String id = request.getParameter("id");
			String status = request.getParameter("status");
			
			tradeService.updateStatus(id, Integer.parseInt(status));
			
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			e.printStackTrace();
			ajaxResult.setMsg(e.getMessage());;
		}
		
		return ajaxResult;
	}
	

	
}
