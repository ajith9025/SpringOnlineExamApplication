<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
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
  <h2 class="mb-4">Register Form</h2>
  <form action="/register" method="post">
    <div class="content">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" name="username" pattern="[A-Za-z0-9]{5}"  required>
    
    </div>
    
    <div class="content">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}" required>
     
    </div>
    
    <div class="content">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" required>
      
    </div>
    
    <div class="content">
      <label for="contact no">Contact No:</label>
      <input type="tel" class="form-control" id="contact no" name="contact no" pattern="[0-9]{10}"  required>
      <small class="form-text text-muted">Format: 10 digits only</small>
    </div>
  
    <button type="submit" class="btn btn-primary">Register</button>
  </form>
</div>
</body>
</html>

  