package com.chainsys.onlineexam.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlineexam.dao.AdminDAO;
import com.chainsys.onlineexam.dao.UserDAO;
import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Exam;
import com.chainsys.onlineexam.model.Results;

@Controller
public class AdminController {

	@Autowired
	AdminDAO adminDao;
	
	@Autowired
	UserDAO userDao;

	@PostMapping("/exam")
	public String Exam(@RequestParam("examId") int examId, @RequestParam("examName") String examName,
			@RequestParam("examDate") String examDate, @RequestParam("duration") int duration,
			@RequestParam("totalMarks") int totalMarks, Model model) {
		Exam exam = new Exam();
		exam.setExamId(examId);
		exam.setExamName(examName);
		exam.setExamDate(examDate);
		exam.setDuration(duration);
		exam.setTotalMarks(totalMarks);
		System.out.println(
				exam.getExamId() + exam.getExamName() + exam.getExamDate() + exam.getDuration() + exam.getExamName());
		adminDao.save(exam);
		List<Exam> exams = adminDao.getExams();
		model.addAttribute("exams", exams);
		return "examView.jsp";
	}

	@PostMapping("/updateExam")
	public String updateExam(@RequestParam("examName") String examName, @RequestParam("examDate") String examDate,
			@RequestParam("duration") int duration, @RequestParam("totalMarks") int totalMarks,
			@RequestParam("examId") int examId, Model model) {

		Exam exam = new Exam();
		exam.setExamName(examName);
		exam.setExamDate(examDate);
		exam.setDuration(duration);
		exam.setTotalMarks(totalMarks);
		exam.setExamId(examId);
		adminDao.update(exam);
		List<Exam> exams = adminDao.getExams();
		model.addAttribute("exams", exams);
		return "examView.jsp";

	}

	@PostMapping("/deleteExam")
	public String deleteExam(@RequestParam("examId") int examId, Model model) {
		adminDao.deleteExam(examId);
		List<Exam> exams = adminDao.getExams();
		model.addAttribute("exams", exams);
		return "examView.jsp";
	}

	@PostMapping("/searchExam")
	public String searchExam(@RequestParam("examName") String examName, Model model) {
		List<Exam> exams = adminDao.searchExam(examName);
		model.addAttribute("exams", exams);
		return "examView.jsp";
	}

	@PostMapping("/getUpdateExam")
	public String allUpadteExam(@RequestParam("examId") int examId, Model model) {
		List<Exam> exams = adminDao.updateExam(examId);
		model.addAttribute("exams", exams);
		return "updateExam.jsp";
	}

	@PostMapping("/question")
	public String Question(@RequestParam("examId") int examId, @RequestParam("examName") String examName,
			@RequestParam("questionText") String questionText, @RequestParam("option1") String option1,
			@RequestParam("option2") String option2, @RequestParam("option3") String option3,
			@RequestParam("option4") String option4, @RequestParam("correctAnswer") String correctAnswer, Model model) {
		AddQuestion question = new AddQuestion();
		question.setExamId(examId);
		question.setExamName(examName);
		question.setQuestionText(questionText);
		question.setOption1(option1);
		question.setOption2(option2);
		question.setOption3(option3);
		question.setOption4(option4);
		question.setCorrectAnswer(correctAnswer);
		adminDao.save(question);
		List<AddQuestion> questions = adminDao.getQuestions();
		model.addAttribute("questions", questions);
		return "questionsAllView.jsp";
	}
	
	@PostMapping("/updateQuestion")
	public String updateQuestion(@RequestParam("examName") String examName,
			@RequestParam("questionText") String questionText, @RequestParam("option1") String option1,
			@RequestParam("option2") String option2, @RequestParam("option3") String option3,
			@RequestParam("option4") String option4, @RequestParam("correctAnswer") String correctAnswer,
			@RequestParam("examId") int examId, Model model) {
		AddQuestion question = new AddQuestion();
		question.setExamName(examName);
		question.setQuestionText(questionText);
		question.setOption1(option1);
		question.setOption2(option2);
		question.setOption3(option3);
		question.setOption4(option4);
		question.setCorrectAnswer(correctAnswer);
		question.setExamId(examId);
		adminDao.update(question);
		List<AddQuestion> questions = adminDao.getQuestions();
		model.addAttribute("questions", questions);
		return "questionsAllView.jsp";
	}

	@PostMapping("/deleteQuestion")
	public String deleteQuestion(@RequestParam("examId") int examId, Model model) {
		adminDao.deleteQuestion(examId);
		List<AddQuestion> questions = adminDao.getQuestions();
		model.addAttribute("questions", questions);
		return "questionsAllView.jsp";
	}

	@PostMapping("/searchQuestion")
	public String searchQuestion(@RequestParam("examName") String examName, Model model) {
		List<AddQuestion> questions = adminDao.searchQuestion(examName);
		model.addAttribute("questions", questions);
		return "questionsAllView.jsp";
	}

	@PostMapping("/getUpdateQuestion")
	public String allUpadteQuestion(@RequestParam("examId") int examId, Model model) {
		List<AddQuestion> questions = adminDao.updateQuestion(examId);
		model.addAttribute("questions", questions);
		return "updateQuestion.jsp";
	}

	@PostMapping("/results")
	public String Result(@RequestParam("resultId") int resultId, @RequestParam("userId") int userId,
			@RequestParam("examId") int examId, @RequestParam("marksObtained") int marksObtained, Model model) {
		Results result = new Results();
		result.setResultId(resultId);
		result.setUserId(userId);
		result.setExamId(examId);
		result.setMarksObtained(marksObtained);
		System.out.println(result.getResultId() + result.getUserId() + result.getExamId() + result.getMarksObtained());
		adminDao.save(result);
		List<Results> results = adminDao.getResults();
		model.addAttribute("results", results);
		return "resultsView.jsp";

	}

	@PostMapping("/updateResult")
	public String updateResult(@RequestParam("userId") int userId, @RequestParam("examId") int examId,
			@RequestParam("marksObtained") int marksObtained, @RequestParam("resultId") int resultId, Model model) {
		Results result = new Results();
		result.setUserId(userId);
		result.setExamId(examId);
		result.setMarksObtained(marksObtained);
		result.setResultId(resultId);
		adminDao.update(result);
		List<Results> results = adminDao.getResults();
		model.addAttribute("results", results);
		return "resultsView.jsp";
	}

	@PostMapping("/deleteResult")
	public String deleteResult(@RequestParam("resultId") int resultId, Model model) {
		adminDao.deleteResults(resultId);
		List<Results> results = adminDao.getResults();
		model.addAttribute("results", results);
		return "resultsView.jsp";
	}

	@PostMapping("/searchResult")
	public String searchResult(@RequestParam("marksObtained") int marksObtained, Model model) {
		List<Results> results = adminDao.searchResults(marksObtained);
		model.addAttribute("results", results);
		return "resultsView.jsp";
	}

	@PostMapping("/getUpdateResult")
	public String allUpadteResult(@RequestParam("resultId") int resultId, Model model) {
		List<Results> results = adminDao.updateResults(resultId);
		model.addAttribute("results", results);
		return "updateResults.jsp";
	}
	
	@GetMapping("/examDetails")
	public String AllExam(Model model) {
		List<Exam> exams = adminDao.getAllExams();
		model.addAttribute("exams", exams);
		return "examView.jsp";
	}
	

	@GetMapping("/questionDetails")
	public String AllQuestion( Model model) {
		List<AddQuestion> questions = adminDao.getAllQuestions();
		model.addAttribute("questions", questions);
		return "questionsAllView.jsp";
	}
	
	@GetMapping("/resultsDetails")
	public String AllResults(Model model) {
		List<Results> results = adminDao.getAllResults();
		model.addAttribute("results", results);
		return "resultsView.jsp";

	}
}

