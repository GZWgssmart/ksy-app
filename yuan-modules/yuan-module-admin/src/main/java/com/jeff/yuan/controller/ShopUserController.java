package com.jeff.yuan.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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

import com.jeff.yuan.cms.dto.ShopUserQueryDTO;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.service.ShopUserExtService;
import com.jeff.yuan.cms.service.ShopUserService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.util.ExcelUtils;
import com.jeff.yuan.util.Constants;
/**
 * 用户管理Controller
 * @author dingjinqing@163.com
 *
 */
@Controller
@RequestMapping("/shopuser")
public class ShopUserController {
	
	@Autowired
	private ShopUserExtService userExtService;
	
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
		String account = request.getParameter("account");
		String phone = request.getParameter("phone");
		String status = request.getParameter("status");
		String vipLevel = request.getParameter("vipLevel");
		String currentPageStr = request.getParameter("currentPage");
		String pageSizeStr = request.getParameter("pageSize");
		
		int currentPage = 1;
		int pageSize = 30;
		int sta =0;
		if(StringUtils.isNotBlank(currentPageStr)){
			currentPage = Integer.parseInt(currentPageStr);
		}
		if(StringUtils.isNotBlank(pageSizeStr)){
			pageSize = Integer.parseInt(pageSizeStr);
		}
		if(StringUtils.isNotBlank(status)){
			sta = Integer.parseInt(status);
		}
		
		ShopUserQueryDTO userQueryDTO = new ShopUserQueryDTO();
		userQueryDTO.setAccount(account);
		userQueryDTO.setPhone(phone);
		userQueryDTO.setStatus(sta);
		userQueryDTO.setVipLevel(vipLevel);
		userQueryDTO.setCurrentPage(currentPage);
		userQueryDTO.setPageSize(pageSize);
		
		PageModel<ShopUser> page = userService.queryShopUserPage(userQueryDTO);
		model.addAttribute("page", page);
		model.addAttribute("userQueryDTO", userQueryDTO);
		model.addAttribute(Constants.MENU_NAME, Constants.SHOP_USER_LIST);
		
		return "shop/user_list";
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
		
		ShopUserQueryDTO userQueryDTO = new ShopUserQueryDTO();
		userQueryDTO.setAccount(account);
		userQueryDTO.setPhone(phone);
		userQueryDTO.setStatus(sta);
		userQueryDTO.setVipLevel(vipLevel);
		
		List<ShopUser> userList = this.userService.queryShopUserList(userQueryDTO);
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
		if(userList != null && userList.size() > 0){
			for(ShopUser user : userList){
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
				map.put("vipLevel", com.jeff.yuan.common.util.VipLevelEnum.getDescByCode(user.getVipLevel()));
				map.put("status", statusName);
				map.put("credits", user.getShopUserExts().getCredits());
				map.put("activeBill", user.getShopUserExts().getActiveBill());
				map.put("tradeBill", user.getShopUserExts().getTradeBill());
				map.put("balance", user.getShopUserExts().getBalance());
				map.put("createDate", createDate);
				list.add(map);
			}
		}
		
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
			ShopUser bean = userService.find(Integer.parseInt(id));
			model.addAttribute("bean", bean);
			
		}
		return "shop/dialog/user_edit";
	}
	
	/**
	 * 用户保存操作
	 * @param request
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult ajaxSave(HttpServletRequest request ,ShopUser user){
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		
		try {
			if(user.getId()!=null && user.getId()!=0){
				user.setUpdateDate(new Date());
				user.getShopUserExts().setUpdateDate(new Date());
				user.getShopUserExts().setShopUser(user);
				userService.update(user);
			}else{
				user.setCreateDate(new Date() );
				user.getShopUserExts().setCreateDate(new Date() );
				
				userService.save(user);
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
			
			userService.updateStatus(id, Integer.parseInt(status));
			
			ajaxResult.setSuccess(true);
			
		} catch (Exception e) {
			e.printStackTrace();
			ajaxResult.setMsg(e.getMessage());;
		}
		
		return ajaxResult;
	}
	

	
}