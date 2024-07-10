/*
		var currentQuestion = 0;
		var totalQuestions =
	<%=questions.size()%>
		;
		var examDuration = 10 * 60; // Total exam duration in seconds (assuming 30 minutes)

		// Function to update the timer every second
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
					// Optionally, you can automatically submit the form when time runs out
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
*/