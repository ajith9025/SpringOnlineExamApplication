package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;


@Component
public class AnswerRowMapper implements RowMapper<Map<Integer, String>> {

	@Override
	public Map<Integer, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
		 Map<Integer, String> answersMap = new HashMap<>();
	        do {
	            int questionId = rs.getInt("exam_id");
	            String correctAnswer = rs.getString("correct_answer");
	            answersMap.put(questionId, correctAnswer);
	        } while (rs.next());
	        return answersMap;
	    }
	}
