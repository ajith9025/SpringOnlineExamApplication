package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.chainsys.onlineexam.model.Register;

@Component
public class RegisterRowMapper implements RowMapper<Register> {

	
   @Override
	public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Register register=new Register();
		register.setUserId(rs.getInt("user_id"));
		register.setUserName(rs.getString("username"));
		register.setPassWord(rs.getString("password"));
		register.setEmail(rs.getString("email"));
		register.setContactNo(rs.getString("contact_no"));
		return register;
	}

}
