<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}


input[type=text],input[type=email], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color:red;;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color:black;
}


.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}


.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}


  .column, input[type=submit] {
    width: 50%;
    margin-top: 0;
  }

</style>
<script>
function handleSubmit(event) {
  event.preventDefault();
  alert("Thank you for submitting the message");
  event.target.submit(); 
}
</script>
</head>
<body>


<div class="container">
  <div style="text-align:center">
    <h2>Contact Us</h2>
  </div>
  <div class="row">
    <div class="column">
      <img src="pexels-zen-chung-5537527.jpg" style="width:100%" alt="">
    </div>
    <div class="column">
      <form onsubmit="handleSubmit(event)">
        <label for="firstname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder=" Enter Your  Firstname" required>
        <label for="lastname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder=" Enter Your Lastname"required>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder=" Enter Your Email"required>
        <label for="Exam Name">Exam Name</label>
         <select id="Exam" name="Exam">
          <option>Java</option>
          <option>HTML</option>
          <option>CSS</option>
          <option>Python</option>
        </select>
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Enter your Message" style="height:170px"></textarea>
        <input type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>

</body>
</html>
    