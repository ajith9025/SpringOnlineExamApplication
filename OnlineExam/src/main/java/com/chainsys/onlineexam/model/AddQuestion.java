package com.chainsys.onlineexam.model;

public class AddQuestion {
	int examId;
	String examName;
	String questionText;
	String option1;
	String option2;
	String option3;
	String option4;
	String correctAnswer;

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}

	public AddQuestion(int examId, String examName, String questionText, String option1, String option2, String option3,
			String option4, String correctAnswer) {
		super();
		this.examId = examId;
		this.examName = examName;
		this.questionText = questionText;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctAnswer = correctAnswer;
	}

	public AddQuestion() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "AddQuestion [examId=" + examId + ", examName=" + examName + ", questionText=" + questionText
				+ ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4
				+ ", correctAnswer=" + correctAnswer + "]";
	}

}
