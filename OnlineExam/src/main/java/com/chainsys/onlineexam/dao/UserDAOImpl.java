package com.chainsys.onlineexam.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.onlineexam.mapper.AnswerRowMapper;
import com.chainsys.onlineexam.mapper.QuestionRowMapper;
import com.chainsys.onlineexam.mapper.ResultsRowMapper;
import com.chainsys.onlineexam.mapper.UserRowMapper;
import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Results;
import com.chainsys.onlineexam.model.Users;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	QuestionRowMapper questionMapper;

	@Autowired
	UserRowMapper userMapper;

	@Autowired
	ResultsRowMapper resultsMapper;

	@Autowired
	AnswerRowMapper answerMapper;

	@Override
	public void save(Users user) {
		// TODO Auto-generated method stub
		String query = "insert into users(username,password,email,contact_no) values (?,?,?,?)";
		Object[] params = { user.getUserName(), user.getPassWord(), user.getEmail(), user.getContactNo() };
		int rows = jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:" + rows);

	}

	
	@Override
	public Users findByEmailAndPassword(String email, String passWord) {
		String query = "select * from users where email = ? and password = ?";
		Object[] params = { email, passWord };
		  try {
	            return jdbcTemplate.queryForObject(query, new UserRowMapper(), params);
	        } catch (EmptyResultDataAccessException e) {
	            return null;
	        }
		
	}

	@Override
	public boolean isUserExists(String email) {
        String query = "select count(*) from users where email = ?";
        Integer count = jdbcTemplate.queryForObject(query,Integer.class, new Object[]{email});
        return count != null && count > 0;
    }

	
	@Override
	public List<AddQuestion> viewQuestion(AddQuestion examName) throws ClassNotFoundException, SQLException
	{
		String query="select exam_id,exam_name,question,option_1,option_2,option_3,option_4,correct_answer from questions where exam_name=?";
		Object[] type= {examName.getExamName()};
		List<AddQuestion>questions=jdbcTemplate.query(query,new QuestionRowMapper(),type);
		return questions;
		
	}
	@Override
	public   List<Map<Integer, String>> getAllCorrectAnswers() throws ClassNotFoundException, SQLException 
	{
		String query="SELECT exam_id,correct_answer from questions";
	    List<Map<Integer, String>> map= jdbcTemplate.query(query, new AnswerRowMapper());
	    return map;
		
	}	
}
