<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.ArrayList" %>
 <%@ page import="java.util.List" %>
 <%@ page import="com.chainsys.onlineexam.model.Results" %>
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
    <h2>ALL THE RESULTS VIEW</h2>
     
       <form action="/searchResult" method="post" class="form-inline mb-3">
        <label for="marksObtained" class="mr-sm-2">Search:</label>
        <input type="number" id="markObtained" name="marksObtained" class="form-control mr-sm-2" placeholder="Search...">
        <input type="submit" value="Search" class="btn btn-primary">
    </form>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                       <th>Result Id</th>
                       <th>User Id</th>
                       <th>Exam Id</th>
                       <th>Marks Obtained</th>
		               <th>Delete</th>
		               <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <%  List<Results> list =( List<Results>)  request.getAttribute("results");
                if(list != null)
                for (Results item : list) { %>
                <tr>
                   <td><%=item.getResultId()%></td>
                   <td><%=item.getUserId()%></td>
                   <td><%=item.getExamId()%></td>
                   <td><%=item.getMarksObtained()%></td>
                    <td>
                        <form action="/deleteResult" method="post">
                            <input type="hidden" name="resultId" value="<%= item.getResultId() %>">
                            <input type="hidden" value="delete" name="action">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                    <td>
                        <form action="/getUpdateResult" method="post">
                            <input type="hidden" name="resultId" value="<%= item.getResultId() %>">
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