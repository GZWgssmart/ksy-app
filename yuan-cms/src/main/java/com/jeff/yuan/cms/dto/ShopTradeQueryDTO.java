package com.jeff.yuan.cms.dto;

import com.jeff.yuan.common.dto.CommonQueryDTO;

/**
 * @author dingjinqing
 * @desc ShopTradeQueryDTO 
 * @date 2018-11-06
 */
public class ShopTradeQueryDTO extends CommonQueryDTO{
	private int jtype;
	private int status;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getJtype() {
		return jtype;
	}
	public void setJtype(int jtype) {
		this.jtype = jtype;
	}

}