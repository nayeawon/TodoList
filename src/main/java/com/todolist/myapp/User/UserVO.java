package com.todolist.myapp.User;

public class UserVO {
	private int sid;
	private String userid;
	private String password;
	private String username;
	private String phone;
	private String email;
	private String gender;
	
	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getPassword() {
		return password;
	} 
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	} 
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	} 
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	} 
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public int getSid() {
		return sid;
	} 
	
	public void setSid(int sid) {
		this.sid = sid;
	}
}
