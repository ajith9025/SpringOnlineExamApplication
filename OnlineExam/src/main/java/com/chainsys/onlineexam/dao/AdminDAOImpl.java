package com.chainsys.onlineexam.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.chainsys.onlineexam.mapper.ExamRowMapper;
import com.chainsys.onlineexam.mapper.QuestionRowMapper;
import com.chainsys.onlineexam.mapper.ResultsRowMapper;
import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Exam;
import com.chainsys.onlineexam.model.Results;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	ExamRowMapper examMapper;

	@Autowired
	QuestionRowMapper questionMapper;

	@Autowired
	ResultsRowMapper resultsMapper;

	@Override
	public void save(Exam exam) {
		// TODO Auto-generated method stub
		String query = "insert into exams (exam_id,exam_name, exam_date, duration, total_marks) values (?,?,?,?,?)";
		Object[] params = { exam.getExamId(), exam.getExamName(), exam.getExamDate(), exam.getDuration(),
				exam.getTotalMarks() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:" + rows);
	}

	@Override
	public List<Exam> getExams() {
		String query = "select exam_id,exam_name,exam_date,duration,total_marks from exams";
		return jdbcTemplate.query(query, examMapper);
	}

	public int update(Exam exam) {
		// TODO Auto-generated method stub
		String query = "update exams set exam_name=?,exam_date=?,duration=?,total_marks=? where exam_id=?";
		Object[] params = { exam.getExamName(), exam.getExamDate(), exam.getDuration(), exam.getTotalMarks(),
				exam.getExamId() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Updated rows:" + rows);
		return rows;
	}

	public void deleteExam(int examId) {
		String query = "delete from exams where exam_id=?";
		Object[] parems = { examId };
		jdbcTemplate.update(query, parems);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<Exam> searchExam(String examName) {
		String query = "select exam_id,exam_name,exam_date,duration,total_marks from exams where exam_name LIKE ?";
		Object[] param = { examName };
		return jdbcTemplate.query(query, param, examMapper);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<Exam> updateExam(int examId) {
		String query = "select exam_id,exam_name,exam_date,duration,total_marks from exams where exam_id=?";
		Object[] param = { examId };
		return jdbcTemplate.query(query, param, examMapper);
	}

	@Override
	public void save(AddQuestion question) {
		// TODO Auto-generated method stub
		String query = "insert into questions (exam_id,exam_name, question_text, option1, option2,option3,option4,correct_answer) values (?,?,?,?,?,?,?,?)";
		Object[] params = { question.getExamId(), question.getExamName(), question.getOption1(), question.getOption1(),
				question.getOption2(), question.getOption3(), question.getOption4(), question.getCorrectAnswer() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:" + rows);
	}

	@Override
	public List<AddQuestion> getQuestions() {
		// TODO Auto-generated method stub
		String query = "select id,exam_id,exam_name,question_text,option1,option2,option3,option4,correct_answer from questions";
		return jdbcTemplate.query(query, questionMapper);
	}
	
	
	public int update(AddQuestion question) {
		// TODO Auto-generated method stub
		String query = "update questions set exam_name=?,question_text=?,option1=?,option2=?,option3=?,option4=?,correct_answer=? where exam_id=?";
		Object[] params = { question.getExamName(), question.getQuestionText(), question.getOption1(),
				question.getOption2(), question.getOption3(), question.getOption4(), question.getCorrectAnswer(),
				question.getExamId(), };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Updated rows:" + rows);
		return rows;
	}

	public void deleteQuestion(int examId) {
		String query = "delete from questions where exam_id=?";
		Object[] parems = { examId };
		jdbcTemplate.update(query, parems);

	}

	@SuppressWarnings("deprecation")
	@Override
	public List<AddQuestion> searchQuestion(String examName) {
		// TODO Auto-generated method stub
		String query = "select exam_id,exam_name,question_text,option1,option2,option3,option4,correct_answer from questions where exam_name LIKE ? ";
		Object[] params = { examName };
		return jdbcTemplate.query(query, params, questionMapper);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<AddQuestion> updateQuestion(int examId) {
		// TODO Auto-generated method stub
		String query = "select exam_id,exam_name,question_text,option1,option2,option3,option4,correct_answer from questions where exam_id=?";
		Object[] params = { examId };
		return jdbcTemplate.query(query, params, questionMapper);

	}

	@Override
	public void save(Results results) {
		// TODO Auto-generated method stub
		String query = "insert into results (result_id,user_id, exam_id,marks_obtained) values (?,?,?,?)";
		Object[] params = { results.getResultId(), results.getUserId(), results.getExamId(),
				results.getMarksObtained() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:" + rows);

	}

	@Override
	public List<Results> getResults() {
		String query = "select result_id,user_id,exam_id,marks_obtained from results";
		return jdbcTemplate.query(query, resultsMapper);
	}

	@Override
	public int update(Results results) {
		String query = "update results set user_id=?,exam_id=?,marks_obtained=? where result_id=?";
		Object[] params = { results.getUserId(), results.getExamId(), results.getMarksObtained(),
				results.getResultId() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Updated rows:" + rows);
		return rows;
	}

	@Override
	public void deleteResults(int resultId) {
		// TODO Auto-generated method stub
		String query = "delete from results where result_id=?";
		Object[] parems = { resultId };
		jdbcTemplate.update(query, parems);

	}

	@SuppressWarnings("deprecation")
	@Override
	public List<Results> updateResults(int resultId) {
		// TODO Auto-generated method stub
		String query = "select result_id,user_id,exam_id,marks_obtained from results where result_id=?";
		Object[] params = { resultId };
		return jdbcTemplate.query(query, params, resultsMapper);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<Results> searchResults(int marksObtained) {
		String query = "select result_id,user_id,exam_id,marks_obtained from results where marks_obtained LIKE ?";
		Object[] param = { marksObtained };
		return jdbcTemplate.query(query, param, resultsMapper);
	}
	
	@Override
	public List<Exam> getAllExams() {
		String query = "select exam_id,exam_name,exam_date,duration,total_marks from exams";
		return jdbcTemplate.query(query, examMapper);
	}
	
	@Override
	public List<AddQuestion> getAllQuestions() {
		// TODO Auto-generated method stub
		String query = "select exam_id,exam_name,question_text,option1,option2,option3,option4,correct_answer from questions";
		return jdbcTemplate.query(query, questionMapper);
	}
	
	@Override
	public List<Results> getAllResults() {
		String query = "select result_id,user_id,exam_id,marks_obtained from results";
		return jdbcTemplate.query(query, resultsMapper);
	}
}
