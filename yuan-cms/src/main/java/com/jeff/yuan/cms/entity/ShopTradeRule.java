package com.jeff.yuan.cms.entity;
// Generated 2018-12-2 18:11:34 by Hibernate Tools 3.6.0.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * ShopTradeRule generated by hbm2java
 */
@Entity
@Table(name = "shop_trade_rule", catalog = "yuan")
public class ShopTradeRule implements java.io.Serializable {

	private Integer id;
	private Integer proId;
	@JsonIgnore
	private String proName;
	private String vipLevel;
	private String fugoufd;
	private String fugouztfd;
	private String fugoujtfd;
	private Date createDate;
	private Date updateDate;

	public ShopTradeRule() {
	}

	public ShopTradeRule(String vipLevel) {
		this.vipLevel = vipLevel;
	}
	

	public ShopTradeRule(Integer id, Integer proId, String vipLevel, String fugoufd, String fugouztfd, String fugoujtfd,
			Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.proId = proId;
		this.vipLevel = vipLevel;
		this.fugoufd = fugoufd;
		this.fugouztfd = fugouztfd;
		this.fugoujtfd = fugoujtfd;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public ShopTradeRule(Integer id,Integer proId, String proName, String vipLevel, String fugoufd, String fugouztfd,
			String fugoujtfd, Date createDate, Date updateDate) {
		this.id = id;
		this.proId = proId;
		this.proName = proName;
		this.vipLevel = vipLevel;
		this.fugoufd = fugoufd;
		this.fugouztfd = fugouztfd;
		this.fugoujtfd = fugoujtfd;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "pro_id")
	public Integer getProId() {
		return this.proId;
	}

	public void setProId(Integer proId) {
		this.proId = proId;
	}

	@Column(name = "pro_name", length = 64)
	public String getProName() {
		return this.proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	@Column(name = "vip_level", nullable = false, length = 8)
	public String getVipLevel() {
		return this.vipLevel;
	}

	public void setVipLevel(String vipLevel) {
		this.vipLevel = vipLevel;
	}

	@Column(name = "fugoufd", length = 8)
	public String getFugoufd() {
		return this.fugoufd;
	}

	public void setFugoufd(String fugoufd) {
		this.fugoufd = fugoufd;
	}

	@Column(name = "fugouztfd", length = 8)
	public String getFugouztfd() {
		return this.fugouztfd;
	}

	public void setFugouztfd(String fugouztfd) {
		this.fugouztfd = fugouztfd;
	}

	@Column(name = "fugoujtfd", length = 8)
	public String getFugoujtfd() {
		return this.fugoujtfd;
	}

	public void setFugoujtfd(String fugoujtfd) {
		this.fugoujtfd = fugoujtfd;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_date", length = 19)
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_date", length = 19)
	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

}
