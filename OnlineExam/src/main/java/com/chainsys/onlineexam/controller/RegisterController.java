package com.chainsys.onlineexam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlineexam.dao.RegisterDAO;
import com.chainsys.onlineexam.model.Register;
import jakarta.servlet.http.HttpSession;

@Controller
public class RegisterController {

	@Autowired
	RegisterDAO registerDao;

	@RequestMapping("/")
	public String welcome() {
		return "index.jsp";

	}

	@PostMapping("/register")
	public String register(@RequestParam("username") String userName, @RequestParam("password") String passWord,
			@RequestParam("email") String email, @RequestParam("contact no") String contactNo, Model model) {
		Register register = new Register();
		register.setUserName(userName);
		register.setPassWord(passWord);
		register.setEmail(email);
		register.setContactNo(contactNo);
		System.out.println(
		register.getUserName() + register.getPassWord() + register.getEmail() + register.getContactNo());
		registerDao.save(register);
		return "login.jsp";
	}

	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String passWord, Model model,
			HttpSession session) {
		Register register = registerDao.findByEmailAndPassword(email, passWord);
		    if (register != null) {
			session.setAttribute("register", register);

			if (email.endsWith("@online.com")) {   
				return "adminlogin.jsp";
			} else {

				return "index.html";
			}
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "login.jsp";
		}
	}
}
