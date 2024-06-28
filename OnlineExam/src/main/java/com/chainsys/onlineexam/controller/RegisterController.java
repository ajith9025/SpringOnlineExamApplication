package com.chainsys.onlineexam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlineexam.dao.RegisterDAO;
import com.chainsys.onlineexam.model.Register;

@Controller
public class RegisterController {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	RegisterDAO registerDao;
	
	@RequestMapping("/")
	public String welcome() {
		return "index.jsp";

	}
	
	 @PostMapping("/register")
	   public String register(@RequestParam("username") String username,@RequestParam("password") String password,@RequestParam("email") String email,@RequestParam("contact no") String contactno,Model model )
	   {
		 Register register=new Register();
		 register.setUsername(username);
		 register.setPassword(password);
		 register.setEmail(email);
		 register.setContactno(contactno);
		 System.out.println(register.getUsername()+register.getPassword()+register.getEmail()+register.getContactno());
		 registerDao.save(register);
     	 return "login.jsp";		  	   
	   }
}
