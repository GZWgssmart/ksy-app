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
 * ShopProduct generated by hbm2java
 */
@Entity
@Table(name = "shop_product", catalog = "yuan")
public class ShopProduct implements java.io.Serializable {

	private Integer id;
	private String proName;
	private String proLogoImg;
	private String introduction;
	private String detail;
	private String proCount;
	private String incomeCredits;
	private String consumeCredits;
	private String price1;
	private String price2;
	private String price3;
	private String picture1;
	private String picture2;
	private String picture3;
	private String picture4;
	private String picture5;
	private Date createDate;
	private String createBy;

	public ShopProduct() {
	}

	public ShopProduct(String proName, String proLogoImg) {
		this.proName = proName;
		this.proLogoImg = proLogoImg;
	}

	public ShopProduct(String proName, String proLogoImg, String introduction, String detail, String proCount,
			String incomeCredits, String consumeCredits, String price1, String price2, String price3, String picture1,
			String picture2, String picture3, String picture4, String picture5, Date createDate, String createBy) {
		this.proName = proName;
		this.proLogoImg = proLogoImg;
		this.introduction = introduction;
		this.detail = detail;
		this.proCount = proCount;
		this.incomeCredits = incomeCredits;
		this.consumeCredits = consumeCredits;
		this.price1 = price1;
		this.price2 = price2;
		this.price3 = price3;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.picture4 = picture4;
		this.picture5 = picture5;
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

	@Column(name = "pro_name", nullable = false, length = 128)
	public String getProName() {
		return this.proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	@Column(name = "pro_logo_img", nullable = false, length = 64)
	public String getProLogoImg() {
		return this.proLogoImg;
	}

	public void setProLogoImg(String proLogoImg) {
		this.proLogoImg = proLogoImg;
	}

	@Column(name = "introduction", length = 256)
	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Column(name = "detail", length = 2048)
	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Column(name = "pro_count", length = 8)
	public String getProCount() {
		return this.proCount;
	}

	public void setProCount(String proCount) {
		this.proCount = proCount;
	}

	@Column(name = "income_credits", length = 8)
	public String getIncomeCredits() {
		return this.incomeCredits;
	}

	public void setIncomeCredits(String incomeCredits) {
		this.incomeCredits = incomeCredits;
	}

	@Column(name = "consume_credits", length = 8)
	public String getConsumeCredits() {
		return this.consumeCredits;
	}

	public void setConsumeCredits(String consumeCredits) {
		this.consumeCredits = consumeCredits;
	}

	@Column(name = "price1", length = 8)
	public String getPrice1() {
		return this.price1;
	}

	public void setPrice1(String price1) {
		this.price1 = price1;
	}

	@Column(name = "price2", length = 8)
	public String getPrice2() {
		return this.price2;
	}

	public void setPrice2(String price2) {
		this.price2 = price2;
	}

	@Column(name = "price3", length = 8)
	public String getPrice3() {
		return this.price3;
	}

	public void setPrice3(String price3) {
		this.price3 = price3;
	}

	@Column(name = "picture1", length = 64)
	public String getPicture1() {
		return this.picture1;
	}

	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	@Column(name = "picture2", length = 64)
	public String getPicture2() {
		return this.picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	@Column(name = "picture3", length = 64)
	public String getPicture3() {
		return this.picture3;
	}

	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}

	@Column(name = "picture4", length = 64)
	public String getPicture4() {
		return this.picture4;
	}

	public void setPicture4(String picture4) {
		this.picture4 = picture4;
	}

	@Column(name = "picture5", length = 64)
	public String getPicture5() {
		return this.picture5;
	}

	public void setPicture5(String picture5) {
		this.picture5 = picture5;
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
