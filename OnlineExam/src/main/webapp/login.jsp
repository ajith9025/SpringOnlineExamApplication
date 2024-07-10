<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
  /* Custom CSS for centering the form */
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
  }

  .container {
    width: 100%;
    max-width: 400px; /* Adjust the maximum width of the form */
    padding: 20px;
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
  }

  .content {
    position: relative;
    margin-bottom: 20px;
  }

 
</style>
</head>
<body>
<div class="container">
  <h2 class="mb-4">Login Form</h2>
  <form action="/login" method="get">
   
    <div class="content">
      <i class="fa fa-envelope icon"></i>
      <input type="email" id="email" placeholder="Email" name="email" required>
    </div>
    
    <div class="content">
       <i class="fa fa-key icon"></i>
      <input type="password" id="password" placeholder="Password" name="password" required>   
    </div> 
     
    <button type="submit" class="btn btn-primary">Login</button>
  </form>
</div>
</body>
</html>

  