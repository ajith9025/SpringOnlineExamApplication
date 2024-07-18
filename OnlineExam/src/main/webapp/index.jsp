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
	background-image: url("pencil-eraser-paper-clip-with-blue-card-paper-white-backdrop.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: black;
	padding: 4px 5px;
}

.navbar .logo {
	display: flex;
	align-items: center;
}

.navbar .logo img {
	height: 40px;
	margin-right: 10px;
}

.navbar .logo .site-name {
	color: white;
	font-size: 24px;
	font-weight: bold;
}

.navbar ul {
	list-style-type: none;
	display: flex;
	margin: 0;
	padding: 0;
}

.navbar ul li {
	margin-right: 20px;
}

.navbar ul li a {
	color: white;
	text-decoration: none;
	padding: 15px 15px;
	transition: background-color 0.3s ease;
}

.navbar ul li a:hover {
	background-color: #ddd;
	color: black;
}

.active {
	background-color: aqua;
}

main {
	padding: 130px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.welcome {
	background-color: #fff;
	padding: 30px;
	margin-bottom: 10px;
	margin-top: -30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 80%;
	position: relative;
    left: 310px;
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

.container {
	max-width: 1000px;
	margin: 0 auto;
	text-align: center;
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
	<nav class="navbar">
		<div class="logo">
			<img src="online-course_11131091.png" alt="Logo">
			<span class="site-name">SkillCheck Evaluator</span>
		</div>
		<ul>
			<li><a class="active" href="#">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="register.jsp">Sign up</a></li>
		</ul>
	</nav>

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
