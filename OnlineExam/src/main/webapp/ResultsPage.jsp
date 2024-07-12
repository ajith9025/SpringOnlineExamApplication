<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Exam Results</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        
        .container {
            max-width: 800px; 
        }
        .mt-4 {
            margin-top: 1.5rem; 
        }
        table {
            width: 100%; 
            margin-top: 20px; 
        }
        th, td {
            padding: 8px; 
            text-align: center;
            vertical-align: middle; 
            border-bottom: 1px solid #dee2e6; 
        }
        th {
            background-color: #f8f9fa; 
            border-top: 0; 
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h2>Results</h2>
        <table class="table table-bordered">
            <tr>
                <th>Total Questions Attempted</th>
                <td><%= request.getAttribute("totalQuestionsAttemted") %></td>
            </tr>
            <tr>
                <th>Correct Answers</th>
                <td><%= request.getAttribute("correctAnswers") %></td>
            </tr>
            <tr>
                <th>Percentages</th>
                <td><%= request.getAttribute("Percentages") %></td>
            </tr>
        </table>
    </div>
</body>
</html>
