package com.chainsys.onlineexam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.onlineexam.model.AddQuestion;
import com.chainsys.onlineexam.model.Exam;
import com.chainsys.onlineexam.model.Results;

@Repository
public interface AdminDAO {

	public void save(Exam exam);

	public List<Exam> getExams();

	public int update(Exam exam);

	public void deleteExam(int examId);

	public List<Exam> searchExam(String examName);

	public List<Exam> updateExam(int examId);

	public void save(AddQuestion question);

	public List<AddQuestion> getQuestions();

	public int update(AddQuestion question);

	public void deleteQuestion(int examId);

	public List<AddQuestion> searchQuestion(String examName);

	public List<AddQuestion> updateQuestion(int examId);

	public void save(Results results);

	public List<Results> getResults();

	public int update(Results results);

	public void deleteResults(int resultId);

	public List<Results> searchResults(int marksObtained);

	public List<Results> updateResults(int resultId);

	public List<Exam> getAllExams();
	
	public List<AddQuestion> getAllQuestions();
	
	public List<Results> getAllResults();
	
	
	
}
