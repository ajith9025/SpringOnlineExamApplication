package com.chainsys.onlineexam.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.chainsys.onlineexam.validation.UsersValidation;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserDAO userDao;

	@Autowired
	UsersValidation usersValidation;

	@RequestMapping("/")
	public String welcome() {
		return "index.jsp";

	}

	@PostMapping("/register")
	public String User(@RequestParam("username") String userName, @RequestParam("password") String passWord,
			@RequestParam("email") String email, @RequestParam("contact no") String contactNo, Model model) {

		if (!usersValidation.validateUsername(userName)) {
			model.addAttribute("error", "Invalid username ");
			return "register.jsp";

		}

		if (!usersValidation.passwordsMatch(passWord)) {
			model.addAttribute("error", "Invalid Password");
			return "register.jsp";
		}

		if (!usersValidation.validateEmail(email)) {
			model.addAttribute("error", "Invalid email format");
			return "register.jsp";
		}

		if (!usersValidation.validateMobile(contactNo)) {
			model.addAttribute("error", "Invalid mobile number format");
			return "register.jsp";
		}

		Users user = new Users();
		user.setUserName(userName);
		user.setPassWord(passWord);
		user.setEmail(email);
		user.setContactNo(contactNo);
		try {
			userDao.save(user);
			model.addAttribute("success", "Registration successfully");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "register.jsp";
	}

	@RequestMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String passWord, Model model,
			HttpSession session) {
		Users user = userDao.findByEmailAndPassword(email, passWord);

		if (user != null) {

			if (email.endsWith("@online.com")) {
				System.out.println("admin");
				return "redirect:/adminlogin.jsp";
			} else {
				return "redirect:/index.html";
			}
		} else {
			model.addAttribute("errorMessage", "Incorrect email or password");
			return "login.jsp";
		}
	}

	/*
	 * @GetMapping("/test") public String getQuestion(HttpSession session, Model
	 * model) throws ClassNotFoundException, SQLException { AddQuestion question =
	 * (AddQuestion) session.getAttribute("question"); question.getExamName();
	 * 
	 * try { List<AddQuestion> questions = userDao.viewQuestion(question);
	 * model.addAttribute("questions", questions); } catch (ClassNotFoundException
	 * e) {
	 * 
	 * e.printStackTrace(); } catch (SQLException e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * return "questionView.jsp";
	 * 
	 * }
	 */

	@GetMapping("/test")
	public String getQuestion(Model model) {
		List<AddQuestion> questions = userDao.viewQuestion();
		model.addAttribute("questions", questions);
		return "questionView.jsp";
	}

	@GetMapping("/results")
	public String checkResult(@RequestParam Map<String, String> allParams, HttpSession session, Model model) {
		Map<String, String> answersMap = new HashMap<>();
		System.out.println("hi");
		System.out.println(allParams);

		for (Map.Entry<String, String> entry : allParams.entrySet()) {
			if (entry.getKey().startsWith("answer")) {
				String questionId = entry.getKey().substring("answer".length());
				answersMap.put(questionId, entry.getValue());
			}
		}

		List<Map<Integer, String>> correctAnswersMap;
		try {
			correctAnswersMap = userDao.getAllCorrectAnswers();
			System.out.println("hi Ajith");
			System.out.println(correctAnswersMap);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return "error";

		}

		int correctCount = 0;
		int totalCount = answersMap.size();
		int attemptedCount = 0;

		for (Map.Entry<String, String> entry : answersMap.entrySet()) {
			String questionId = entry.getKey();
			String userAnswer = entry.getValue();
			String correctAnswer = null;

			for (Map<Integer, String> correctAnswerMap : correctAnswersMap) {
				correctAnswer = correctAnswerMap.get(Integer.parseInt(questionId));
				if (correctAnswer != null)
					break;
			}

			if (correctAnswer != null) {
				attemptedCount++;
				if (correctAnswer.equals(userAnswer)) {
					correctCount++;
				}
			}

		}

		double percentage = (correctCount * 100.0) / totalCount;

		Results results = new Results();
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("correctCount", correctCount);
		model.addAttribute("percentage", percentage);
		return "ResultsPage.jsp";
	}
}
