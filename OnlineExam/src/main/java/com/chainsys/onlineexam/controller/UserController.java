package com.chainsys.onlineexam.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlineexam.dao.UserDAO;
import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Results;
import com.chainsys.onlineexam.model.Users;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserDAO userDao;

	@RequestMapping("/")
	public String welcome() {
		return "index.jsp";

	}

	@PostMapping("/register")
	public String User(@RequestParam("username") String userName, @RequestParam("password") String passWord,
			@RequestParam("email") String email, @RequestParam("contact no") String contactNo, Model model) {
		Users user = new Users();
		user.setUserName(userName);
		user.setPassWord(passWord);
		user.setEmail(email);
		user.setContactNo(contactNo);
		System.out.println(user.getUserName() + user.getPassWord() + user.getEmail() + user.getContactNo());
		userDao.save(user);
		return "login.jsp";
	}

	@GetMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String passWord, Model model,
			HttpSession session) {
		Users user = userDao.findByEmailAndPassword(email, passWord);
		if (user != null) {
			session.setAttribute("users", user);

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
	/*
	 * @PostMapping("/test") public String Question(@RequestParam("examName") String
	 * examName,Model model) { List<AddQuestion> questions =
	 * userDao.getAllQuestions(examName); model.addAttribute("questions",
	 * questions); return "questionView.jsp";
	 * 
	 * }
	 */
	

	@GetMapping("/test")
	public String Question(Model model) {
		List<AddQuestion> questions = userDao.getAllQuestions();
		model.addAttribute("questions", questions);
		return "questionView.jsp";
		
	}
	
	@GetMapping("/results")
	public String Results(@RequestParam List<String> examId, @RequestParam List<String> answer, Model model) {
		List<AddQuestion> questions = userDao.getAllResults();
		model.addAttribute("questions", questions);
		return "ResultsPage.jsp";
		
	}
	
	/*
	 * @GetMapping("/results") public String Results(Model model) { List<Results>
	 * results = userDao.getAllResults(); model.addAttribute("results", results);
	 * return "questionView.jsp"; }
	 */
}
