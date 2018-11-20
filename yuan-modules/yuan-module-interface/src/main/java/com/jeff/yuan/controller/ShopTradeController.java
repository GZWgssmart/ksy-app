package com.jeff.yuan.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeff.yuan.cms.dto.ShopTradeQueryDTO;
import com.jeff.yuan.cms.entity.ShopTrade;
import com.jeff.yuan.cms.entity.ShopTradeDetail;
import com.jeff.yuan.cms.entity.ShopUser;
import com.jeff.yuan.cms.service.ShopProductService;
import com.jeff.yuan.cms.service.ShopTradeService;
import com.jeff.yuan.cms.service.ShopUserService;
import com.jeff.yuan.common.dto.AjaxResult;
import com.jeff.yuan.common.entity.PageModel;
import com.jeff.yuan.common.util.ExcelUtils;
import com.jeff.yuan.util.WebHelper;

/**
 * 用户管理Controller
 * 
 * @author dingjinqing@163.com
 *
 */
@Controller
@RequestMapping("/shoptrade")
public class ShopTradeController {

	@Autowired
	private ShopProductService productService;
	@Autowired
	private ShopTradeService tradeService;
	@Autowired
	private ShopUserService userService;

	/**
	 * 获取订单列表
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public AjaxResult list(HttpServletRequest request) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);
		String userId = request.getParameter("userId");
		if (StringUtils.isNotEmpty(userId)) {
			String status = request.getParameter("status");
			String jtype = request.getParameter("jtype");
			String currentPageStr = request.getParameter("currentPage");
			String pageSizeStr = request.getParameter("pageSize");

			int currentPage = 1;
			int pageSize = 6;
			int sta = 0;
			int jty = 0, u = 0;
			u = Integer.parseInt(userId);
			if (StringUtils.isNotBlank(currentPageStr)) {
				currentPage = Integer.parseInt(currentPageStr);
			}
			if (StringUtils.isNotBlank(pageSizeStr)) {
				pageSize = Integer.parseInt(pageSizeStr);
			}
			if (StringUtils.isNotBlank(status)) {
				sta = Integer.parseInt(status);
			}
			if (StringUtils.isNotBlank(jtype)) {
				jty = Integer.parseInt(jtype);
			}

			ShopTradeQueryDTO userQueryDTO = new ShopTradeQueryDTO();
			userQueryDTO.setStatus(sta);
			userQueryDTO.setUserId(u);
			userQueryDTO.setJtype(jty);
			userQueryDTO.setCurrentPage(currentPage);
			userQueryDTO.setPageSize(pageSize);

			PageModel<ShopTrade> page = tradeService.queryShopTradePage(userQueryDTO);
			ajaxResult.setData(page);
			ajaxResult.setSuccess(true);
		}

		return ajaxResult;
	}

	/**
	 * 保存订单操作
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult ajaxSave(HttpServletRequest request, ShopTrade bean) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			ShopUser user = (ShopUser) request.getSession().getAttribute("userInfo");
			
			//减去余额(未开启事物   可能存在不一致)
			BigDecimal balance = user.getShopUserExts().getBalance().subtract(bean.getPrice());
			if (balance.compareTo(BigDecimal.ZERO)>=0) {
				bean.setTradeNo(WebHelper.getDayNo());
				bean.setCreateDate(new Date());
				//购买商品走审核流程
				if(bean.getJtype()==1||bean.getJtype()==2) {
					bean.setStatus(1);
				}else {
					bean.setStatus(3);
				}
				tradeService.save(bean);
				user.getShopUserExts().setBalance(balance);
				userService.update(user);
				ajaxResult.setSuccess(true);
			}

		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}

		return ajaxResult;
	}

	@RequestMapping("/upd/status")
	@ResponseBody
	public AjaxResult ajaxUpdStatus(HttpServletRequest request) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			String id = request.getParameter("id");
			String status = request.getParameter("status");

			tradeService.updateStatus(id, Integer.parseInt(status));

			ajaxResult.setSuccess(true);

		} catch (Exception e) {
			e.printStackTrace();
			ajaxResult.setMsg(e.getMessage());
			;
		}

		return ajaxResult;
	}

	/**
	 * 获取购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/listCart")
	@ResponseBody
	public AjaxResult ajaxListCart(HttpServletRequest request) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			// 获取session
			HttpSession session = request.getSession();

			List<ShopTradeDetail> cartlist = (List<ShopTradeDetail>) session.getAttribute("cartlist");
			ajaxResult.setData(cartlist);
			ajaxResult.setSuccess(true);

		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}

		return ajaxResult;
	}

	@RequestMapping("/addCart")
	@ResponseBody
	public AjaxResult ajaxSaveCart(HttpServletRequest request, ShopTradeDetail bean) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			// 获取session
			HttpSession session = request.getSession();

			// 查询是否添加过购物车（session有没有封装属性）
			List<ShopTradeDetail> cartlist = (List<ShopTradeDetail>) session.getAttribute("cartlist");
			if (cartlist == null) {// 表示没有添加过
				// 把购物车信息添加List
				List<ShopTradeDetail> list = new ArrayList<ShopTradeDetail>();
				list.add(bean);
				session.setAttribute("cartlist", list);
			} else {// 如果添加过

				// 第二次及以上添加判断商品是否存在 如果存在数量加1即可
				boolean bln = false;// 表示不存在
				for (int i = 0; i < cartlist.size(); i++) {
					ShopTradeDetail sc = (ShopTradeDetail) cartlist.get(i);
					if (bean.getProId() == sc.getProId()) {// 如果要添加的 在原来的购物车已经存在
						bln = true;
						sc.setCount(sc.getCount() + bean.getCount());// 得到商品数量加一重新赋给自己
						break;
					}
				}

				if (!bln) {// 不存在 才是添加到购物车
					cartlist.add(bean);
				}

			}
			// ajaxResult.setData(cartlist);
			ajaxResult.setSuccess(true);

		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}

		return ajaxResult;
	}

	@RequestMapping("/updateCart")
	@ResponseBody
	public AjaxResult ajaxUpdateCart(HttpServletRequest request, ShopTradeDetail bean) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			// 获取session
			HttpSession session = request.getSession();
			String proid = request.getParameter("proId");
			String count = request.getParameter("count");
			if (StringUtils.isNotEmpty(count) && StringUtils.isNotEmpty(proid)) {
				List<ShopTradeDetail> cartlist = (List<ShopTradeDetail>) session.getAttribute("cartlist");
				for (int i = 0; i < cartlist.size(); i++) {
					ShopTradeDetail sc = (ShopTradeDetail) cartlist.get(i);
					if (Integer.parseInt(proid) == sc.getProId()) {// 如果要添加的 在原来的购物车已经存在
						sc.setCount(Integer.parseInt(count));
						cartlist.set(i, bean);
						break;
					}
				}
				ajaxResult.setSuccess(true);
			}

		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return ajaxResult;
	}

	/**
	 * 从购物车中根据商品id删除某个商品的接口
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/removeCart")
	@ResponseBody
	public AjaxResult ajaxDeleteCart(HttpServletRequest request) {
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setSuccess(false);

		try {
			// 获取session
			HttpSession session = request.getSession();
			String proid = request.getParameter("proId");

			// 查询是否添加过购物车（session有没有封装属性）
			List<ShopTradeDetail> cartlist = (List<ShopTradeDetail>) session.getAttribute("cartlist");
			for (int i = 0; i < cartlist.size(); i++) {
				ShopTradeDetail sc = (ShopTradeDetail) cartlist.get(i);
				if (Integer.parseInt(proid) == sc.getProId()) {// 如果要添加的 在原来的购物车已经存在
					cartlist.remove(i);
					break;
				}
			}
			ajaxResult.setSuccess(true);

		} catch (Exception e) {
			ajaxResult.setMsg(e.getMessage());
			e.printStackTrace();
		}

		return ajaxResult;
	}
}
