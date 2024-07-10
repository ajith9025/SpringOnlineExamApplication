<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.chainsys.onlineexam.model.Exam"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
form {
	margin-bottom: 3px;
}

label {
	font-weight: bold;
}

input[type="text"], input[type="submit"] {
	padding: 5px 5px;
	font-size: 16px;
}
</style>
</head>
<body>
	<h2>ALL THE EXAM VIEW</h2>

	<form action="/searchExam" method="post" class="form-inline mb-3">
		<label for="examName" class="mr-sm-2">Search:</label> <input
			type="text" id="examName" name="examName"
			class="form-control mr-sm-2" placeholder="Search..."> <input
			type="submit" value="Search" class="btn btn-primary">
	</form>

	<div class="table-responsive">
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
                
			       <th>Exam Name</th>
			       <th>Exam Date</th>
			       <th>Duration</th>
			       <th>Total Marks</th>
			       <th>Delete</th>
			       <th>Edit</th>
                   
				</tr>
			</thead>
			<tbody>
				<%
				List<Exam> list = (List<Exam>) request.getAttribute("exams");
				if (list != null)
					for (Exam item : list) {
				%>
				<tr>

				
					<td><%=item.getExamName()%></td>
					<td><%=item.getExamDate()%></td>
					<td><%=item.getDuration()%></td>
					<td><%=item.getTotalMarks()%></td>

					<td>
						<form action="/deleteExam" method="post">
							<input type="hidden" name="examId"
								value="<%=item.getExamId()%>"> <input type="hidden"
								value="delete" name="action">
							<button type="submit" class="btn btn-danger">Delete</button>
						</form>
					</td>
					<td>
						<form action="/getUpdateExam" method="post">
							<input type="hidden" name="examId"
								value="<%=item.getExamId()%>"> <input type="hidden"
								value="update" name="action">
							<button type="submit" class="btn btn-primary">Edit</button>
						</form>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>