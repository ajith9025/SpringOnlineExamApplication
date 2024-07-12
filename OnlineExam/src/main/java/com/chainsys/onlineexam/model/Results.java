package com.chainsys.onlineexam.model;

public class Results {
    int resultId;
	int userId;
	int examId;
	int marksObtained;
	
	public int getResultId() {
		return resultId;
	}
	public void setResultId(int ResultId) {
		this.resultId = ResultId;
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
	public int getMarksObtained() {
		return marksObtained;
	}
	public void setMarksObtained(int marksObtained) {
		this.marksObtained = marksObtained;
	}
	
	public Results(int resultId, int userId, int examId, int marksObtained) {
		super();
		this.resultId = resultId;
		this.userId = userId;
		this.examId = examId;
		this.marksObtained = marksObtained;
	}
	public Results() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Results [resultId=" + resultId + ", userId=" + userId + ", examId=" + examId + ", marksObtained=" + marksObtained
				+ "]";
	}
	
}

