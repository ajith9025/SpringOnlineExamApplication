<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.ArrayList" %>
 <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.AddQuestion" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        form {
            margin-bottom: 1px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="submit"] {
            padding: 10px 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2>ALL THE QUESTIONS VIEW</h2>

    <form action="/searchQuestion" method="post" class="form-inline mb-3">
        <label for="examName" class="mr-sm-2">Search:</label>
        <input type="text" id="examName" name="examName" class="form-control mr-sm-2" placeholder="Search...">
        <input type="submit" value="Search" class="btn btn-primary">
    </form>

    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                       <th>ExamId</th>
		               <th>Exam Name</th>
			           <th>Question Text</th>
			           <th>Option1</th>
			           <th>Option2</th>
		               <th>Option3</th>
			           <th>Option4</th>
		               <th>Correct Answer</th>
		               <th>Delete</th>
		               <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <%  List<AddQuestion> list =( List<AddQuestion>)  request.getAttribute("questions");
                if(list != null)
                for (AddQuestion item : list) {
                	%>
                <tr>
                   <td><%=item.getExamId()%></td> 
			       <td><%=item.getExamName()%></td>
		           <td><%=item.getQuestionText()%></td>
			       <td><%=item.getOption1()%></td>
			       <td><%=item.getOption2()%></td>
		           <td><%=item.getOption3()%></td>
		           <td><%=item.getOption4()%></td>
		           <td><%=item.getCorrectAnswer()%></td>
                    <td>
                        <form action="/deleteQuestion" method="post">
                            <input type="hidden" name="examId" value="<%= item.getExamId() %>">
                            <input type="hidden" value="delete" name="action">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                    <td>
                        <form action="/getUpdateQuestion" method="post">
                            <input type="hidden" name="examId" value="<%= item.getExamId() %>">
                            <input type="hidden" value="update" name="action">
                            <button type="submit" class="btn btn-primary">Edit</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>