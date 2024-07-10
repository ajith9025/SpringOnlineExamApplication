
<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.Users" %>
  <%
            List<Users> list =( List<Users>)  request.getAttribute("users");
        if(list != null)
            for (Users item : list) {
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
    <form action="/update" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%= item.getUserName() %>" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="<%= item.getPassWord() %>" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= item.getEmail() %>" required>
            <input type="hidden" id="userid" name="userid" value="<%= request.getParameter("userid") %>">
        </div>
         <div class="form-group">
            <label for="contact no">Contact No:</label>
            <input type="number" id="contact no" name="contact no" value="<%= item.getContactNo() %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <%} %>
</div>
</body>
</html>
