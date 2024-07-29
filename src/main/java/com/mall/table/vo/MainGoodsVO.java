package com.mall.table.vo;

public class MainGoodsVO {

	private String goodsCd;
	private String ctCd;
	private String goodsName;
	private String sellPrice;
	private String thumnailUrl;
	private String ctLevel;
	private String ctName;
	private String normalPrice;
	
	private UserInfoVO uservo;
	
	
	
	public UserInfoVO getUservo() {
		return uservo;
	}
	public void setUservo(UserInfoVO uservo) {
		this.uservo = uservo;
	}
	public String getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getCtLevel() {
		return ctLevel;
	}
	public void setCtLevel(String ctLevel) {
		this.ctLevel = ctLevel;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getCtCd() {
		return ctCd;
	}
	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getThumnailUrl() {
		return thumnailUrl;
	}
	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}
	
	
	
	
	
}
