package com.chainsys.onlineexam.model;

public class Exam {
	int examId;
	String examName;
	String examDate;
	int duration;
	int totalMarks;
	
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId=examId;
	}
	
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	
	public String getExamDate() {
		return examDate;
	}
	public void setExamDate(String examDatestr) {
		this.examDate = examDatestr;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	public Exam(int examId, String examName, String examDate, int duration, int totalMarks) {
		super();
		this.examId=examId;
		this.examName = examName;
		this.examDate = examDate;
		this.duration = duration;
		this.totalMarks = totalMarks;
	}
	public Exam() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Exam [examId=" + examId + ",examName=" + examName + ", examDate=" + examDate + ", duration=" + duration
				+ ", totalMarks=" + totalMarks + "]";
	}
	
}
