package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import com.chainsys.onlineexam.model.Results;

@Component
public class ResultsRowMapper implements RowMapper<Results> {

	@Override
	public Results mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Results result=new Results();
	    result.setResultId(rs.getInt("result_id"));
	    result.setUserId(rs.getInt("user_id"));
	    result.setExamId(rs.getInt("exam_id"));
	    result.setMarksObtained(rs.getInt("marks_obtained"));
		return result;
	}

}
