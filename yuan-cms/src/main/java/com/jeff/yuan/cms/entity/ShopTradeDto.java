package com.jeff.yuan.cms.entity;
// Generated 2018-11-9 10:43:37 by Hibernate Tools 4.3.5.Final

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonSetter;

public class ShopTradeDto implements java.io.Serializable {

	private Integer id;
	private String tradeNo;
	private int userId;
	private int jtype;
	private BigDecimal price;
	private int status;
	private int credits;
	private Date createDate;
	private String createBy;
	private String payPwd;
	
	private Set<ShopTradeDetail> shopTradeDetails = new HashSet<ShopTradeDetail>(0);

	public ShopTradeDto() {
	}

	public ShopTradeDto(int jtype, BigDecimal price, int credits) {
		this.jtype = jtype;
		this.price = price;
		this.credits = credits;
	}

	public ShopTradeDto(Integer id, String tradeNo, int userId, int jtype, BigDecimal price, int status, int credits,
			Date createDate, String createBy,Set<ShopTradeDetail> shopTradeDetails) {
		super();
		this.id = id;
		this.tradeNo = tradeNo;
		this.userId = userId;
		this.jtype = jtype;
		this.price = price;
		this.status = status;
		this.credits = credits;
		this.createDate = createDate;
		this.createBy = createBy;
		this.shopTradeDetails = shopTradeDetails;
	}
	
	public ShopTradeDto(Integer id, String tradeNo, int userId, int jtype, BigDecimal price, int status, int credits,
			Date createDate, String createBy,String payPwd, Set<ShopTradeDetail> shopTradeDetails) {
		super();
		this.payPwd=payPwd;
		this.id = id;
		this.tradeNo = tradeNo;
		this.userId = userId;
		this.jtype = jtype;
		this.price = price;
		this.status = status;
		this.credits = credits;
		this.createDate = createDate;
		this.createBy = createBy;
		this.shopTradeDetails = shopTradeDetails;
	}

	public ShopTradeDto(Integer id, String tradeNo, int userId, int jtype, BigDecimal price, int status, int credits,
			Date createDate) {
		super();
		this.id = id;
		this.tradeNo = tradeNo;
		this.userId = userId;
		this.jtype = jtype;
		this.price = price;
		this.status = status;
		this.credits = credits;
		this.createDate = createDate;
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

	@Column(name = "trade_no", nullable = false, length = 32)
	public String getTradeNo() {
		return this.tradeNo;
	}

	public void setTradeNo(String tradeNo) {
		this.tradeNo = tradeNo;
	}

	@Column(name = "user_id", nullable = false)
	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "type", nullable = false)
	public int getJtype() {
		return this.jtype;
	}

	public void setJtype(int type) {
		this.jtype = type;
	}

	@Column(name = "price", nullable = false)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Column(name = "status")
	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name = "credits")
	public int getCredits() {
		return this.credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_date", length = 19)
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "create_by", length = 20)
	public String getCreateBy() {
		return this.createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "shopTrade",cascade = {CascadeType.MERGE,CascadeType.REFRESH})
	public Set<ShopTradeDetail> getShopTradeDetails() {
		return this.shopTradeDetails;
	}

	public void setShopTradeDetails(Set<ShopTradeDetail> shopTradeDetails) {
		this.shopTradeDetails = shopTradeDetails;
	}

	public String getPayPwd() {
		return payPwd;
	}
	@JsonSetter("payPwd")
	public void setPayPwd(String payPwd) {
		this.payPwd = payPwd;
	}

}
