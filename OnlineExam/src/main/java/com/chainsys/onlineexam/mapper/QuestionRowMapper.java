package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.chainsys.onlineexam.model.AddQuestion;

@Component
public class QuestionRowMapper implements RowMapper<AddQuestion> {

	@Override
	public AddQuestion mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		AddQuestion question= new AddQuestion();
		question.setExamId(rs.getInt("exam_id"));
		question.setExamName(rs.getString("exam_name"));
		question.setQuestionText(rs.getString("question_text"));
		question.setOption1(rs.getString("option1"));
		question.setOption2(rs.getString("option2"));
		question.setOption3(rs.getString("option3"));
		question.setOption4(rs.getString("option4"));
		question.setCorrectAnswer(rs.getString("correct_answer"));
		return question;
	}
	
	

}
