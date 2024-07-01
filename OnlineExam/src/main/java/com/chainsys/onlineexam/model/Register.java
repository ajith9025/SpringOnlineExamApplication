package com.chainsys.onlineexam.model;

public class Register {
	int userId;
	String userName;
	String passWord;
	String email;
    String contactNo;
    
    
    public Register() {
		// TODO Auto-generated constructor stub
	}
    
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	@Override
	public String toString() {
		return "Register [userId=" + userId + ", userName=" + userName + ", passWord=" + passWord + ", email=" + email
				+ ", contactNo=" + contactNo + "]";
	}
	
	public Register(int userId, String userName, String passWord, String email, String contactNo) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.contactNo = contactNo;
	}

}
