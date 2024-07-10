package com.chainsys.onlineexam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Results;
import com.chainsys.onlineexam.model.Users;

@Repository
public interface UserDAO{
	
	public void save(Users user);
	public Users findByEmailAndPassword(String email, String passWord);
	public List<AddQuestion> getAllQuestions();
	public List<AddQuestion> getAllResults();
	/* public List<AddQuestion> getAllQuestions(String examName); */
	
	
	

}
