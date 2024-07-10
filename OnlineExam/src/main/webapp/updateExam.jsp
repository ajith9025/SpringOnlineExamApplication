
<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.Exam" %>
  <%
            List<Exam> list =( List<Exam>)  request.getAttribute("exams");
        if(list != null)
            for (Exam item : list) {
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
    <form action="/updateExam" method="post">
         <%-- <div class="form-group">
            <label for="Exam Id ">Exam Id:</label>
            <input type="number" id="examId" name="examId" value="<%= item.getExamId() %>" required>
        </div> --%>
        <div class="form-group">
            <label for="Exam Name">Exam Name:</label>
            <input type="text" id="examName" name="examName" value="<%= item.getExamName() %>" required>
        </div>
        <div class="form-group">
            <label for="Exam Date">Exam Date:</label>
            <input type="date" id="examDate" name="examDate" value="<%= item.getExamDate() %>" required>
        </div>
        <div class="form-group">
            <label for="duration">Duration:</label>
            <input type="number" id="duration" name="duration" value="<%= item.getDuration() %>" required>
        </div>
         <div class="form-group">
            <label for="total marks">Total Marks:</label>
            <input type="number" id="totalMarks" name="totalMarks" value="<%= item.getTotalMarks() %>" required>
        </div>       
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <%} %>
</div>
</body>
</html>
