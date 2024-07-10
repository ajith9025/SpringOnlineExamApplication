
<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.Results" %>
  <%
            List<Results> list =( List<Results>)  request.getAttribute("results");
        if(list != null)
            for (Results item : list) {
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
    <form action="/updateResults" method="post">
         <div class="form-group">
            <label for="resultId">Result Id:</label>
            <input type="number" id="resultId" name="resultId" value="<%= item.getResultId() %>" required>
        </div>
        <div class="form-group">
            <label for="userId">User Id:</label>
            <input type="number" id="userId" name="userId" value="<%= item.getUserId() %>" required>
        </div>
         <div class="form-group">
            <label for="examId">Exam Id:</label>
            <input type="number" id="examId" name="examId" value="<%= item.getExamId() %>" required>
        </div>
         <div class="form-group">
            <label for="marksObtained ">Marks Obtained:</label>
            <input type="number" id="marksObtained" name="marksObtained" value="<%= item.getMarksObtained() %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <%} %>
</div>
</body>
</html>
