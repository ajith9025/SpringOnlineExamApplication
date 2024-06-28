package com.chainsys.onlineexam.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.chainsys.onlineexam.model.Register;

@Repository
public class RegistreDAOImpl implements RegisterDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	

	
	@Override
	public void save(Register register) {
		// TODO Auto-generated method stub
		String query="insert into users(username,password,email,contact_no) values (?,?,?,?)";
		Object[] params= {register.getUsername(),register.getPassword(),register.getEmail(),register.getContactno()};
		int rows=jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:"+ rows);
		
		
	}
}
