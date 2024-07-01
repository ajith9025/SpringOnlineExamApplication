package com.chainsys.onlineexam.model;

public class Register {
	int userId;
	String userName;
	String passWord;
	String email;
    String contactNo;
	
    public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return userName;
	}
	
	public void setUsername(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return passWord;
	}
	public void setPassword(String passWord) {
		this.passWord = passWord;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactno() {
		return contactNo;
	}
	public void setContactno(String contactNo) {
		this.contactNo = contactNo;
	}
	
	public Register(int userId, String userName, String passWord, String email, String contactNo) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.contactNo = contactNo;
	}
	public Register() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Register [userId=" + userId + ", username=" + userName + ", password=" + passWord + ", email=" + email
				+ ", contactno=" + contactNo + "]";
	}
}

