<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 80vh;
	margin: 0;
	background-image: url("top-view-office-stationery-with-pen-notebook.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
	
}

.container {
	width: 100%;
	max-width: 300px;
	padding:50px;
	border: 1px solid black;
	background-color: lightWhite;
	border-radius: 8px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
	position: relative;
	margin-top:100px;
	left:230px;
}

.content {
	position: relative;
	margin-bottom: 30px;
}

.error {
	color: red;
	margin-top:10px;
	text-align:center;
}
</style>
</head>
<body>
	<div class="container">
		<h2 class="mb-4">Login Form</h2>
		<form action="/login" method="get">

			<div class="content">
				<i class="fa fa-envelope icon"></i> <input type="email" id="email"
					placeholder="Email" name="email" required>
			</div>

			<div class="content">
				<i class="fa fa-key icon"></i> <input type="password" id="password"
					placeholder="Password" name="password" required>
			</div>

			<button type="submit" class="btn btn-primary">Login</button>
		</form>
		<div class="error"
			style="display: ${not empty errorMessage ? 'block' : 'none'};">
			${errorMessage}</div>
	</div>
</body>
</html>

