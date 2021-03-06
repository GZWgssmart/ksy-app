package com.jeff.yuan.cms.entity;
// Generated 2018-11-6 15:20:46 by Hibernate Tools 4.3.5.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * ShopUserExt generated by hbm2java
 */
@Entity
@Table(name = "shop_user_ext", catalog = "yuan")
public class ShopUserExt implements java.io.Serializable {

	private Integer id;
	@JsonIgnore
	private ShopUser shopUser;
	private String credits;
	private String bill;
	private String activeBill;
	private String tradeBill;
	private String bankOwer;
	private String bankCard;
	private String bankDeposit;
	private BigDecimal balance;
	private Date createDate;
	private String createBy;
	private Date updateDate;
	private String updateBy;

	@Override
	public String toString() {
		return "ShopUserExt [id=" + id + ", credits=" + credits + ", bill=" + bill + ", activeBill=" + activeBill
				+ ", tradeBill=" + tradeBill + ", balance=" + balance + ", createDate=" + createDate + ", createBy="
				+ createBy + ", updateDate=" + updateDate + ", updateBy=" + updateBy + "]";
	}

	public ShopUserExt() {
	}

	public ShopUserExt(ShopUser shopUser, String credits, String bill, String activeBill) {
		this.shopUser = shopUser;
		this.credits = credits;
		this.bill = bill;
		this.activeBill = activeBill;
	}

	public ShopUserExt(Integer id, String credits, String bill, String activeBill, String tradeBill, BigDecimal balance,
			Date createDate, String createBy, Date updateDate, String updateBy) {
		super();
		this.id = id;
		this.credits = credits;
		this.bill = bill;
		this.activeBill = activeBill;
		this.tradeBill = tradeBill;
		this.balance = balance;
		this.createDate = createDate;
		this.createBy = createBy;
		this.updateDate = updateDate;
		this.updateBy = updateBy;
	}

	public ShopUserExt(ShopUser shopUser, String credits, String bill, String activeBill, String tradeBill,
			BigDecimal balance, Date createDate, String createBy, Date updateDate, String updateBy) {
		this.shopUser = shopUser;
		this.credits = credits;
		this.bill = bill;
		this.activeBill = activeBill;
		this.tradeBill = tradeBill;
		this.balance = balance;
		this.createDate = createDate;
		this.createBy = createBy;
		this.updateDate = updateDate;
		this.updateBy = updateBy;
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

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public ShopUser getShopUser() {
		return this.shopUser;
	}

	public void setShopUser(ShopUser shopUser) {
		this.shopUser = shopUser;
	}

	@Column(name = "credits", length = 20)
	public String getCredits() {
		return this.credits;
	}

	public void setCredits(String credits) {
		this.credits = credits;
	}

	@Column(name = "bill",  length = 8)
	public String getBill() {
		return this.bill;
	}

	public void setBill(String bill) {
		this.bill = bill;
	}

	@Column(name = "active_bill", length = 8)
	public String getActiveBill() {
		return this.activeBill;
	}

	public void setActiveBill(String activeBill) {
		this.activeBill = activeBill;
	}

	@Column(name = "trade_bill", length = 8)
	public String getTradeBill() {
		return this.tradeBill;
	}

	public void setTradeBill(String tradeBill) {
		this.tradeBill = tradeBill;
	}

	@Column(name = "balance", length = 12)
	public BigDecimal getBalance() {
		return this.balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
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

	@Column(name = "bank_ower")
	public String getBankOwer() {
		return bankOwer;
	}

	public void setBankOwer(String bankOwer) {
		this.bankOwer = bankOwer;
	}
	@Column(name = "bank_card")
	public String getBankCard() {
		return bankCard;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}
	@Column(name = "bank_deposit")
	public String getBankDeposit() {
		return bankDeposit;
	}

	public void setBankDeposit(String bankDeposit) {
		this.bankDeposit = bankDeposit;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_date", length = 19)
	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Column(name = "update_by", length = 20)
	public String getUpdateBy() {
		return this.updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}


}
