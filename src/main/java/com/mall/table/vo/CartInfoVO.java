package com.mall.table.vo;

public class CartInfoVO {
	private String userId;
	private String goodsCd;
	private String buyQty;
	private String regDt;
	
	private UserInfoVO uservo;
	
	
	
	
	
	public UserInfoVO getUservo() {
		return uservo;
	}
	public void setUservo(UserInfoVO uservo) {
		this.uservo = uservo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	
}
