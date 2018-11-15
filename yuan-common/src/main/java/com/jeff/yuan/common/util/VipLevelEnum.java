/**
 * 
 */
package com.jeff.yuan.common.util;

/**
 * @author Administrator
 *
 */
public enum VipLevelEnum {
	v1("v1","个人vip"),
	v2("v2","初级代理"),
	v3("v3","高级代理"),
	v4("v4","核心代理"),
	v5("v5","运营中心"),
	v6("v6","公司股东"),
	v9("v9","普通会员");

	private String level;	 
    private String desc;
    
    VipLevelEnum(String level,String desc){
    	this.level=level;
    	this.desc=desc;
    }
	public String getLevel() {
		return level;
	}
	public String getDesc() {
		return desc;
	}
	
	public static VipLevelEnum fromLevel(String level) {
        for (VipLevelEnum type : VipLevelEnum.values()) {
            if (type.getLevel().equals(level)) {
                return type;
            }
        }
        return null;
    }

	public static String getDescByCode(String level) {
        return fromLevel(level).desc;
    }
    
}
