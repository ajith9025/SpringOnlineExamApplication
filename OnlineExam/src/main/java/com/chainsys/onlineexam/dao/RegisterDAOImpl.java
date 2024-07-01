package com.chainsys.onlineexam.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.chainsys.onlineexam.model.Register;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	

	
	@Override
	public void save(Register register) {
		// TODO Auto-generated method stub
		String query="insert into users(username,password,email,contact_no) values (?,?,?,?)";
		Object[] params= {register.getUserName(),register.getPassWord(),register.getEmail(),register.getContactNo()};
		int rows=jdbcTemplate.update(query, params);
		System.out.println("Inserted rows:"+ rows);
		
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
    public Register findByEmailAndPassword(String email, String passWord) {
        String query = "select * from users where email = ? and password = ?";
        Object[] params = {email, passWord};
        try {
            Register register = jdbcTemplate.queryForObject(query, params, new BeanPropertyRowMapper<>(Register.class));
            return register;
        } catch (Exception e) {
            // Handle exceptions appropriately (e.g., return null or throw custom exception)
            return null; // Or throw custom exception
        }
    }
}
