package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import com.chainsys.onlineexam.model.Exam;

@Component
public class ExamRowMapper implements RowMapper<Exam> {


	@Override
	public Exam mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Exam exam=new Exam();
		exam.setExamId(rs.getInt("exam_id"));
		exam.setExamName(rs.getString("exam_name"));
		exam.setExamDate(rs.getString("exam_date"));
		exam.setDuration(rs.getInt("duration"));
		exam.setTotalMarks(rs.getInt("total_marks"));
		return exam;
	}

}
