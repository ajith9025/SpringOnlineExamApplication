<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url("top-view-office-stationery-with-pen-notebook.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
}

.navbar {
	background-color: purple;
}

.navbar a {
	color: white;
}

.views {
	margin: 50px 0;
	padding: 50px 20px;
	text-align: center;
}

.view {
	margin-bottom: 30px;
	transition: transform 0.3s;
	border: 1px solid black;
	padding: 20px;
	margin: 20px;
	background-color: lightwhite;
}

.view:hover {
	transform: scale(1.05);
}

.view .card {
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.view h3 a {
	text-decoration: none;
	color: black;
}

.view h3 a:hover {
	color: black;
}

footer {
	background-color: black;
	color: #fff;
	text-align: center;
	padding: 20px;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand" href="#"> <img src="online-course_11131091.png" width="35"
			height="30" class="d-inline-block align-top" alt="logo">SkillCheck Evaluator
		</a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="exam.jsp">Add
					Exam</a></li>
			<li class="nav-item"><a class="nav-link" href="question.html">Add
					Question</a></li>
			<li class="nav-item"><a class="nav-link" href="results.jsp">Add
					Results</a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
		</ul>
	</nav>

	<div class="container">
		<h1 class="text-center mt-4">Online Exam</h1>

		<section class="views">
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6">
					<div class="view card text-center">
						<h3>
							<a href="/examDetails" class="card-link">View All Exams</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="view card text-center">
						<h3>
							<a href="/questionDetails" class="card-link">View All
								Questions</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="view card text-center">
						<h3>
							<a href="/resultsDetails" class="card-link">View All Results</a>
						</h3>
					</div>
				</div>
			</div>
		</section>
	</div>

	<footer>
		<div class="container">
			<p>&copy; 2024 Online Examination Skill Evaluator. All rights
				reserved.</p>
		</div>
	</footer>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
