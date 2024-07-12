<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

.container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


.content {
	margin-bottom: 20px;
}

.error {
	color: red;
	font-size: 12px;
}

@media screen and (max-width: 600px) {
	.container {
		width: 90%;
	}
}

.alert {
	font-weight: bold; 
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
}

.alert-success {
	background-color: #d4edda;
	border-color: #c3e6cb;
	color: #155724;
}

.alert-danger {
	background-color: #f8d7da;
	border-color: #f5c6cb;
	color: #721c24;
}
</style>
</head>
<body>
	<div class="container">
		<h2 class="mb-4">Register Form</h2>

		<%
		if (request.getAttribute("success") != null) {
		%>
		<div class="alert alert-success"><%=request.getAttribute("success")%></div>
		<%
		}
		%>

		<%
		if (request.getAttribute("error") != null) {
		%>
		<div class="alert alert-danger"><%=request.getAttribute("error")%></div>
		<%
		}
		%>

		<form action="/register" method="post">
			<div class="content">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="username"
					pattern="[A-Za-z]+" > <span id="usernameError"
					class="error"></span>
			</div>

			<div class="content">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password"
					pattern="(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{8}" >
				<span id="passwordError" class="error"></span>
			</div>

			<div class="content">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email"
					pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" >
				<span id="emailError" class="error"></span>
			</div>

			<div class="content">
				<label for="contact no">Contact No:</label> <input type="tel"
					class="form-control" id="contact no" name="contact no"
					pattern="[0-9]{10}" > <span id="contact noError"
					class="error"></span>
			</div>

			<button type="submit" class="btn btn-primary">Register</button>
		</form>
		<div class="error"
			style="display: ${not empty errorMessage ? 'block' : 'none'};">
			${errorMessage}</div>
		<br>
		<br> <a href="login.jsp">already have account ? </a>
	</div>

	<script>
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							var usernameInput = document
									.getElementById('username');
							var passwordInput = document
									.getElementById('passWord');
							var emailInput = document.getElementById('email');
							var ContactNoInput = document
									.getElementById('contactNo');
							var submitBtn = document
									.getElementById('submitBtn');

							usernameInput
									.addEventListener(
											'input',
											function() {
												var usernameError = document
														.getElementById('usernameError');
												if (!/^[A-Za-z]+$/
														.test(usernameInput.value)) {
													usernameError.textContent = 'Please enter only letters.';
												} else {
													usernameError.textContent = '';
												}
											});

							contactNoInput
									.addEventListener(
											'input',
											function() {
												var contactnoError = document
														.getElementById('contactnoError');
												if (!/^[0-9]{10}$/
														.test(contactnoInput.value)) {
													contact
													noError.textContent = 'Please enter a valid 10-digit mobile number.';
												} else {
													contact
													noError.textContent = '';
												}
											});

							emailInput
									.addEventListener(
											'input',
											function() {
												var emailError = document
														.getElementById('emailError');
												if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
														.test(emailInput.value)) {
													emailError.textContent = 'Please enter a valid email address.';
												} else {
													emailError.textContent = '';
												}
											});

							passwordInput
									.addEventListener(
											'input',
											function() {
												var passwordError = document
														.getElementById('passwordError');
												if (!/(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{8}/
														.test(passwordInput.value)) {
													passwordError.textContent = 'Password must be at least 8 characters only and include at least one letter, one number, and one special character.';
												} else {
													passwordError.textContent = '';
												}
											});

							submitBtn
									.addEventListener(
											'click',
											function(event) {
												var isValid = true;

												if (!/^[A-Za-z]+$/
														.test(usernameInput.value)) {
													document
															.getElementById('usernameError').textContent = 'Please enter only letters.';
													isValid = false;
												}

												if (!/^[0-9]{10}$/
														.test(mobileInput.value)) {
													document
															.getElementById('contactnoError').textContent = 'Please enter a valid 10-digit mobile number.';
													isValid = false;
												}

												if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
														.test(emailInput.value)) {
													document
															.getElementById('emailError').textContent = 'Please enter a valid email address.';
													isValid = false;
												}

												if (!/(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{8}/
														.test(passwordInput.value)) {
													document
															.getElementById('passwordError').textContent = 'Password must be at least 8 characters only and include at least one letter, one number, and one special character.';
													isValid = false;
												}

												if (!isValid) {
													event.preventDefault();
												}
											});
						});
	</script>


</body>
</html>

