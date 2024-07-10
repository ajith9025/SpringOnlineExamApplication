package com.chainsys.onlineexam.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		String query="insert into users(username,password,email,contact_no) values (?,?,?,?)";
		Object[] params= {user.getUserName(),user.getPassWord(),user.getEmail(),user.getContactNo()};
		int rows=jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:"+ rows);
		
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
    public Users findByEmailAndPassword(String email, String passWord) {
        String query = "select * from users where email = ? and password = ?";
        Object[] params = {email, passWord};
        try {
            Users  user= jdbcTemplate.queryForObject(query, params, new BeanPropertyRowMapper<>(Users.class));
            return user;
        } catch (Exception e) {   
            return null; 
        }
    }
	

	/*
	 * @Override public List<AddQuestion> getAllQuestions(String examName) { // TODO
	 * Auto-generated method stub String query =
	 * "select * from questions where exam_name= ? "; return
	 * jdbcTemplate.query(query, questionMapper);
	 * 
	 * }
	 */

	@Override
	public List<AddQuestion> getAllQuestions() {
		// TODO Auto-generated method stub
		 String query = "select * from questions where exam_name= 'Java' ";
		 return jdbcTemplate.query(query,  questionMapper);
	
	}
	

	
	@Override
	public List<AddQuestion> getAllResults() {
		// TODO Auto-generated method stub
		 String query = "select exam_id,correct_answer from questions ";
		 return jdbcTemplate.query(query,  answerMapper);
	
	}
	
	
	
	/*
	 * @Override public List<Results> getAllResults() { String query =
	 * "select result_id,user_id,exam_id,marks_obtained from results"; return
	 * jdbcTemplate.query(query, resultsMapper); }
	 */
}
