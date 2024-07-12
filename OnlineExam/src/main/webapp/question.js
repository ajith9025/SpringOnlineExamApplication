/*<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    border: 1px solid #ccc;
    padding: 10px;
    margin-bottom: 15px;
}

.question p {
    margin: 15px 0;
}

.question input[type="radio"] {
    margin-right: 10px;
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
    border: 2px solid #ccc;
    padding: 20px;
    margin-bottom: 15px;
    float: right;
}

 Additional styling for the timer span 
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

.correct-answer {
    background-color: lightgreen;
}

.wrong-answer {
    background-color: tomato;
}

.reviewed {
    background-color: #ddd;  Adjust as needed 
}

</style>
</head>
<body>
    <form id="quizForm" action="/results" method="get" onsubmit="return validateForm();">
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
        <div class="question" id="question_<%=question.getExamId()%>" style="<%=(questionIndex == 0) ? "" : "display: none;"%>">
            <p><strong><%=++questionIndex%></strong>. <%=question.getQuestionText()%></p>

            <input type="hidden" name="examId" value="<%=question.getExamId()%>">
            <input type="hidden" id="correctAnswer_<%=question.getExamId()%>" value="<%=question.getCorrectAnswer()%>">
            <p><input type="radio" name="answer_<%=question.getExamId()%>" value="option1"> <%=question.getOption1()%></p>
            <p><input type="radio" name="answer_<%=question.getExamId()%>" value="option2"> <%=question.getOption2()%></p>
            <p><input type="radio" name="answer_<%=question.getExamId()%>" value="option3"> <%=question.getOption3()%></p>
            <p><input type="radio" name="answer_<%=question.getExamId()%>" value="option4"> <%=question.getOption4()%></p>
        </div>
        <%
            }
        }
        %>
        <button type="button" onclick="previousQuestion()" style="display: none;">Previous Question</button>
        <button type="button" onclick="nextQuestion()">Next Question</button>
        <button type="button" id="reviewBtn" onclick="reviewQuestions()">Review Questions</button>
        <input id="submitBtn" type="submit" style="display: none;" value="Submit">
    </form>

    <script>
        var currentQuestion = 0;
        var totalQuestions = <%=questions.size()%>;
        var examDuration = 10 * 60;

        function startTimer(duration, display) {
            var timer = duration, minutes, seconds;
            setInterval(function() {
                minutes = parseInt(timer / 60, 10);
                seconds = parseInt(timer % 60, 10);

                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                display.textContent = minutes + ":" + seconds;

                if (--timer < 0) {
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
                document.getElementById('question_' + currentQuestion).style.display = 'none';
                currentQuestion++;
                document.getElementById('question_' + currentQuestion).style.display = 'block';
            }
            toggleButtons();
        }

        function previousQuestion() {
            if (currentQuestion > 0) {
                document.getElementById('question_' + currentQuestion).style.display = 'none';
                currentQuestion--;
                document.getElementById('question_' + currentQuestion).style.display = 'block';
            }
            toggleButtons();
        }

        function toggleButtons() {
            if (currentQuestion === 0) {
                document.getElementById('submitBtn').style.display = 'none';
                document.getElementById('reviewBtn').style.display = 'inline-block';
                document.getElementsByTagName('button')[0].style.display = 'none';
                document.getElementsByTagName('button')[1].style.display = 'inline-block';
            } else if (currentQuestion === totalQuestions - 1) {
                document.getElementById('submitBtn').style.display = 'inline-block';
                document.getElementById('reviewBtn').style.display = 'inline-block';
                document.getElementsByTagName('button')[0].style.display = 'inline-block';
                document.getElementsByTagName('button')[1].style.display = 'none';
            } else {
                document.getElementById('submitBtn').style.display = 'none';
                document.getElementById('reviewBtn').style.display = 'inline-block';
                document.getElementsByTagName('button')[0].style.display = 'inline-block';
                document.getElementsByTagName('button')[1].style.display = 'inline-block';
            }
        }

        function reviewQuestions() {
            for (var i = 0; i < totalQuestions; i++) {
                var questionId = 'question_' + i;
                var radios = document.getElementsByName('answer_' + i);
                var correctAnswer = document.getElementById('correctAnswer_' + i).value;

                for (var j = 0; j < radios.length; j++) {
                    radios[j].disabled = true; // Disable radio buttons after review
                    var label = radios[j].parentNode;

                    if (radios[j].value === correctAnswer) {
                        label.classList.add('correct-answer');
                    } else if (radios[j].checked && radios[j].value !== correctAnswer) {
                        label.classList.add('wrong-answer');
                    }

                    if (radios[j].value === correctAnswer) {
                        label.classList.add('correct-answer');
                    }
                }

                document.getElementById(questionId).classList.add('reviewed');
            }

            document.getElementById('reviewBtn').style.display = 'none';
            document.getElementById('submitBtn').style.display = 'inline-block';
        }
    </script>
</body>
</html>
*/