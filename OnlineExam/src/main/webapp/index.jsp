<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Examination Skill Evaluator</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.navbar {
	list-style-type: none;
	margin: 0;
	padding: 14px 0;
	background-color: black;
	text-align: right;
}

.navbar li {
	display: inline;
	margin-right: 20px;
}

.navbar li a {
	color: white;
	text-decoration: none;
	padding: 15px 15px;
	transition: background-color 0.3s ease;
}

.navbar li a:hover {
	background-color: #ddd;
	color: black;
}

.active {
	background-color:  aqua;
	
}

h1 {
	text-align: center;
	margin: 20px 0;
}

main {
	padding: 20px;
}

.welcome {
	background-color: #fff;
	padding: 20px;
	margin-bottom: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.welcome h2 {
	font-size: 24px;
	margin-bottom: 10px;
}

.welcome p {
	font-size: 16px;
	line-height: 1.6;
}

.welcome a {
	display: inline-block;
	padding: 10px 20px;
	background-color: red;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	margin-top: 10px;
	transition: background-color 0.3s ease;
}

.welcome a:hover {
	background-color: black;
}

footer {
	background-color: black;
	color: #fff;
	text-align: center;
	padding: 10px 0;
	position: absolute;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<nav>
		<ul class="navbar">

			<li><a class="active" href="#">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="register.jsp">Sign up</a></li>
		</ul>
	</nav>

	<h1>Online Exam</h1>

	<main>
		<section class="welcome">
			<div class="container">
				<h2>Welcome to the Online Examination Skill Evaluator</h2>
				<p>Assess your skills and improve your knowledge through our
					comprehensive online exams. Sign up today and start your learning
					journey!</p>
				<a href="register.jsp">Get Started</a>
			</div>
		</section>
	</main>
	<footer>
		<div class="container">
			<p>&copy; 2024 Online Examination Skill Evaluator. All rights
				reserved.</p>
		</div>
	</footer>
</body>
</html>
