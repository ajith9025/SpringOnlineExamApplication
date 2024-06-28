<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Online Examination Skill Evaluator</title>
<style>
body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
    background-image: url("bram-naus-n8Qb1ZAkK88-unsplash.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
} 
ul{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
}

nav {
    background-color:black;
    overflow: hidden;
}

.navbar {
    list-style-type: none;
    display: flex;
    justify-content:end;
}
.navbar li {
    float: left;
}
.navbar a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.navbar a.active {
  background-color:aqua;
  color: white;
}

main .welcome {
    text-align: center;
    padding: 4em 0;
    background-color: #f9f9f9;
}

main .welcome h2 {
    margin-bottom: 0.5em;
}

main .welcome p {
    margin-bottom: 1em;
    font-size: 1.2em;
    color: #666;
}

main .welcome .btn {
    display: inline-block;
    padding: 0.8em 1.5em;
    color: white;
    background-color: #4CAF50;
    text-decoration: none;
    border-radius: 0.3em;
    transition: background 0.3s;
}

main .welcome .btn:hover {
    background-color: #45a049;
}

footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
}

footer .container {
    margin: 0 auto;
    max-width: 1200px;
    padding: 0 1em;
}

.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.4);
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
    max-width: 500px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    animation-name: animatetop;
    animation-duration: 0.4s
}

@keyframes animatetop {
    from {top: -300px; opacity: 0}
    to {top: 0; opacity: 1}
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

.modal-body {
    padding: 2px 16px;
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
                    <p>Assess your skills and improve your knowledge through our comprehensive online exams. Sign up today and start your learning journey!</p>
                    <a href="register.jsp">Get Started</a>
                </div>
            </section><br><br><br><br><br><br><br><br>
        </main>
        <footer>
            <div class="container">
                <p>&copy; 2024 Online Examination Skill Evaluator. All rights reserved.</p>
            </div>
        </footer>
        
</body>
</html>
