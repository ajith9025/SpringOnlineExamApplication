package com.chainsys.onlineexam.model;

import java.util.Date;

public class UserExam {
	int id;
	int userId;
	int examId;
	Date examDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public Date getExamDate() {
		return examDate;
	}
	public void setExamDate(Date examDate) {
		this.examDate = examDate;
	}
	
	public UserExam(int id, int userId, int examId, Date examDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.examId = examId;
		this.examDate = examDate;
	}
	
	@Override
	public String toString() {
		return "UserExam [id=" + id +", userId=" + userId + ", examId=" + examId + ", examDate=" + examDate + "]";
	}
}
