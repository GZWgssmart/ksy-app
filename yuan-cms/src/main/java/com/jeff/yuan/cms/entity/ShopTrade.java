package com.jeff.yuan.cms.entity;
// Generated 2018-11-6 15:20:46 by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * ShopTrade generated by hbm2java
 */
@Entity
@Table(name = "shop_trade", catalog = "yuan")
public class ShopTrade implements java.io.Serializable {

	private Integer id;
	private int userId;
	private boolean type;
	private int price;
	private int credits;
	private Date createDate;
	private String createBy;

	public ShopTrade() {
	}

	public ShopTrade(int userId, boolean type, int price, int credits) {
		this.userId = userId;
		this.type = type;
		this.price = price;
		this.credits = credits;
	}

	public ShopTrade(int userId, boolean type, int price, int credits, Date createDate, String createBy) {
		this.userId = userId;
		this.type = type;
		this.price = price;
		this.credits = credits;
		this.createDate = createDate;
		this.createBy = createBy;
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

	@Column(name = "user_id", nullable = false)
	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "type", nullable = false)
	public boolean isType() {
		return this.type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	@Column(name = "price", nullable = false)
	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Column(name = "credits", nullable = false)
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

}