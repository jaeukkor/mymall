package com.mall.table.vo;

public class MessageVO {
	private boolean result;
	private String msg;
	private UserInfoVO uservo;
	
	
	
	public UserInfoVO getUservo() {
		return uservo;
	}
	public void setUservo(UserInfoVO uservo) {
		this.uservo = uservo;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
}
