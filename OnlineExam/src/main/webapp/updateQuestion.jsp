
<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.AddQuestion" %>
  <%
            List<AddQuestion> list =( List<AddQuestion>)  request.getAttribute("questions");
        if(list != null)
            for (AddQuestion item : list) {
        %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid ;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  .form-group {
    margin-bottom: 20px;
  }
</style>
</head>
<body>
<div class="container">
    <form action="/updateQuestion" method="post">
        
        <div class="form-group">
            <label for="examName">Exam Name:</label>
            <input type="text" id="examName" name="examName" value="<%= item.getExamName() %>" required>
        </div>
        <div class="form-group">
            <label for="questionText">Question Text:</label>
            <input type="text" id="questionText" name="questionText" value="<%= item.getQuestionText() %>" required>
            <input type="hidden" id="examId" name="questionText" value="<%= request.getParameter("questionText") %>">
        </div>
         <div class="form-group">
            <label for="option1">Option1:</label>
            <input type="text" id="option1" name="option1" value="<%= item.getOption1() %>" required>
        </div>
         <div class="form-group">
            <label for="option2">Option3:</label>
            <input type="text" id="option2" name="option2" value="<%= item.getOption2() %>" required>
        </div>
         <div class="form-group">
            <label for="option3">Option3:</label>
            <input type="text" id="option3" name="option3" value="<%= item.getOption3() %>" required>
        </div>
         <div class="form-group">
            <label for="option4">Option4:</label>
            <input type="text" id="option4" name="option4" value="<%= item.getOption4() %>" required>
        </div>
         <div class="form-group">
            <label for="correctAnswer">Correct Answer:</label>
            <input type="text" id="correctAnswer" name="correctAnswer" value="<%= item.getCorrectAnswer() %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <%} %>
</div>
</body>
</html>
