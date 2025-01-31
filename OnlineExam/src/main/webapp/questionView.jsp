<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.chainsys.onlineexam.model.AddQuestion"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Exam</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	padding: 20px;
}

.question {
	background-color: #ffffff;
	padding: 10px;
	margin-bottom: 15px;
}

.question p {
	margin: 15px 0;
}

.question input[type="radio"] {
	display: none;
}

.question label {
	display: block;
	padding: 10px;
	border: 1px solid #ccc;
	margin-bottom: 5px;
	cursor: pointer;
}

.question input[type="radio"]:checked+label {
	background-color: #ff6347;
	color: white;
}

button {
	background-color: orange;
	color: black;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
}

button:hover {
	background-color: black;
	color: white;
}

#timer {
	background-color: #ffffff;
	padding: 20px;
	margin-bottom: 15px;
	float: right;
}

#timer #time {
	font-weight: bold;
	color: #ff6347;
}

#submitBtn {
	background-color: orange;
	color: black;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
}

#submitBtn:hover {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<form id="quizForm" action="/results" method="get"
		onsubmit="return validateForm();">
		<div id="examName">
			<h2>MCQ Questions</h2>
		</div>

		<div id="timer">
			Time Left: <span id="time">10:00</span>
		</div>

		<%
		ArrayList<AddQuestion> questions = (ArrayList<AddQuestion>) request.getAttribute("questions");
		if (questions != null) {
			int questionIndex = 0;
			for (AddQuestion question : questions) {
		%>

		<div class="question"
			style="<%=(questionIndex == 0) ? "" : "display: none;"%>">
			<p>
				<strong><%=++questionIndex%></strong>.
				<%=question.getQuestionText()%></p>

			<input type="hidden" name="examId" value="<%=question.getExamId()%>">
			<p>
				<input type="radio" id="option1_<%=question.getExamId()%>"
					name="answer_<%=question.getExamId()%>" value="option1"> <label
					for="option1_<%=question.getExamId()%>"><%=question.getOption1()%></label>
			</p>
			<p>
				<input type="radio" id="option2_<%=question.getExamId()%>"
					name="answer_<%=question.getExamId()%>" value="option2"> <label
					for="option2_<%=question.getExamId()%>"><%=question.getOption2()%></label>
			</p>
			<p>
				<input type="radio" id="option3_<%=question.getExamId()%>"
					name="answer_<%=question.getExamId()%>" value="option3"> <label
					for="option3_<%=question.getExamId()%>"><%=question.getOption3()%></label>
			</p>
			<p>
				<input type="radio" id="option4_<%=question.getExamId()%>"
					name="answer_<%=question.getExamId()%>" value="option4"> <label
					for="option4_<%=question.getExamId()%>"><%=question.getOption4()%></label>
			</p>
		</div>

		<%
		}
		}
		%>

		<button type="button" onclick="previousQuestion()"
			style="display: none;">Previous Question</button>
		<button type="button" onclick="nextQuestion()">Next Question</button>
		<input id="submitBtn" type="submit" style="display: none;"
			value="Submit">
	</form>
	<script>
		var currentQuestion = 0;
		var totalQuestions =
	<%=questions.size()%>
		;
		var examDuration = 10 * 60;

		function startTimer(duration, display) {
			var timer = duration, minutes, seconds;
			var intervalId = setInterval(function() {
				minutes = parseInt(timer / 60, 10);
				seconds = parseInt(timer % 60, 10);

				minutes = minutes < 10 ? "0" + minutes : minutes;
				seconds = seconds < 10 ? "0" + seconds : seconds;

				display.textContent = minutes + ":" + seconds;

				if (--timer < 0) {
					clearInterval(intervalId);
					timer = 0;
					document.getElementById('quizForm').submit();
				}
			}, 1000);
		}

		window.onload = function() {
			var display = document.querySelector('#time');
			startTimer(examDuration, display);
		};

		function nextQuestion() {
			if (currentQuestion < totalQuestions - 1) {
				document.getElementsByClassName('question')[currentQuestion].style.display = 'none';
				currentQuestion++;
				document.getElementsByClassName('question')[currentQuestion].style.display = 'block';
			}
			toggleButtons();
		}

		function previousQuestion() {
			if (currentQuestion > 0) {
				document.getElementsByClassName('question')[currentQuestion].style.display = 'none';
				currentQuestion--;
				document.getElementsByClassName('question')[currentQuestion].style.display = 'block';
			}
			toggleButtons();
		}

		function toggleButtons() {
			if (currentQuestion === 0) {
				document.getElementById('submitBtn').style.display = 'none';
				document.getElementsByTagName('button')[0].style.display = 'none';
				document.getElementsByTagName('button')[1].style.display = 'inline-block';
			} else if (currentQuestion === totalQuestions - 1) {
				document.getElementById('submitBtn').style.display = 'inline-block';
				document.getElementsByTagName('button')[0].style.display = 'inline-block';
				document.getElementsByTagName('button')[1].style.display = 'none';
			} else {
				document.getElementById('submitBtn').style.display = 'none';
				document.getElementsByTagName('button')[0].style.display = 'inline-block';
				document.getElementsByTagName('button')[1].style.display = 'inline-block';
			}
		}
	</script>
</body>
</html>
