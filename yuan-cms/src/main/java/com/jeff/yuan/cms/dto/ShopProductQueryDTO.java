package com.jeff.yuan.cms.dto;

import com.jeff.yuan.common.dto.CommonQueryDTO;

/**
 * @author dingjinqing
 * @desc ShopProductQueryDTO 
 * @date 2018-11-06
 */
public class ShopProductQueryDTO extends CommonQueryDTO{
	private String proName;
	private String status;
	private String type;
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}