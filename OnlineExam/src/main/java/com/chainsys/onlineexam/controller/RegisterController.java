package com.chainsys.onlineexam.controller;



import org.springframework.beans.factory.annotation.Autowired;
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
	RegisterDAO registerDao;
	
	@RequestMapping("/")
	public String welcome() {
		return "index.jsp";

	}
	
	 @PostMapping("/register")
	   public String register(@RequestParam("username") String userName,@RequestParam("password") String passWord,@RequestParam("email") String email,@RequestParam("contact no") String contactNo,Model model )
	   {
		 Register register=new Register();
		 register.setUsername(userName);
		 register.setPassword(passWord);
		 register.setEmail(email);
		 register.setContactno(contactNo);
		 System.out.println(register.getUsername()+register.getPassword()+register.getEmail()+register.getContactno());
		 registerDao.save(register);
     	 return "login.jsp";		  	   
	   }
}
