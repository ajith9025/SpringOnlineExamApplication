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
	background-color: #f8f9fa;
	margin: 0;
	padding: 0;
}

.navbar {
	background-color: black;
}

.navbar a {
	color: white;
}

.navbar a:hover {
	background-color: #555;
}

.navbar a.active {
	background-color: aqua;
	color: black;
}

.views {
	padding: 50px 20px;
	text-align: center;
}

.view {
	border: 1px solid #ccc;
	padding: 20px;
	margin: 20px;
	background-color: white;
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
		<ul class="navbar-nav mr-auto">
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
					<div class="view">
						<h3>
							<a href="/examDetails">View All Exams</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="view">
						<h3>
							<a href="/questionDetails">View All Questions</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="view">
						<h3>
							<a href="/resultsDetails">View All Results</a>
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
