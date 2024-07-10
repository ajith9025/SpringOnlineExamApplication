package com.chainsys.onlineexam.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.chainsys.onlineexam.model.Users;

@Component
public class UserRowMapper implements RowMapper<Users> {

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Users user = new Users();
		user.setUserId(rs.getInt("user_id"));
		user.setUserName(rs.getString("username"));
		user.setPassWord(rs.getString("password"));
		user.setEmail(rs.getString("email"));
		user.setContactNo(rs.getString("contact_no"));
		return user;
	}

}
