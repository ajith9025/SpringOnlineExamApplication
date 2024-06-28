<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
</style>
</head>
<body>
<div class="container">
  <h2 class="mb-4">Login Form</h2>
  <form action="/" method="post">
   
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

  