package com.chainsys.onlineexam.dao;


import org.springframework.stereotype.Repository;
import com.chainsys.onlineexam.model.Register;

@Repository
public interface RegisterDAO{
	
	public void save(Register register);

	public Register findByEmailAndPassword(String email, String passWord);

}
