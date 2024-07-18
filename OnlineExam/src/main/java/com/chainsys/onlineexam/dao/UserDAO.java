package com.chainsys.onlineexam.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Results;
import com.chainsys.onlineexam.model.UserExam;
import com.chainsys.onlineexam.model.Users;

@Repository
public interface UserDAO {

	public void save(Users user);

	public Users findByEmailAndPassword(String email, String passWord);
	
	public boolean isUserExists(String email);

	/*
	 * public List<AddQuestion> viewQuestion(AddQuestion examName) throws
	 * ClassNotFoundException, SQLException;
	 */

	public List<Map<Integer, String>> getAllCorrectAnswers() throws ClassNotFoundException, SQLException;
    
	 public List<AddQuestion> viewQuestion(); 
}
