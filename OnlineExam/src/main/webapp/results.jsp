<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <title>Results Data</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    
    h2 {
        color: #333;
    }
    
    form {
        width: 50%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    input[type="text"],
    input[type="number"],
    input[type="date"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        width: auto;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h2>Results Insert</h2>
      <form action="/results" method="post">
        Result ID: <input type="number" name="resultId"><br>
        User ID: <input type="number" name="userId"><br>
        Exam ID: <input type="number" name="examId"><br>
        Marks Obtained: <input type="number" name="marksObtained"><br>
        <input type="submit" value="submit">
    </form>
</body>
</html>