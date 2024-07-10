<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        h1 {
            color: #333;
            font-size: 24px;
        }

        .instructions {
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 10px;
            line-height: 2;
        }

        form {
            text-align: center;
        }

        label {
            font-weight: bold;
            margin-right: 10px;
        }

        select {
            padding: 8px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .start-button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: orange;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .start-button:hover {
            background-color: black;
        }
    </style>
</head>
<body>

    <div class="container">
        <header>
            <h1>Online Test Instructions</h1>
        </header>
        <section class="instructions">
            <p>This is a FREE online test.Beware of scammers who ask for money to attend this test.</p>
            <p>Total number of questions: 10.</p>
            <p>Time allotted: 10 minutes.</p>
            <p>Each question carries 1 mark, there are no negative marks.</p>
            <p>All the best! Start the exam below.</p>
        </section>
    </div>
    

    <form action="/test" method="get">
        <label for="language">Exam Name:</label>
        <select id="language" name="language">
            <option>Java</option>
            <option>HTML</option>
            <option>CSS</option>
            <option>Python</option>
        </select><br><br>
        <button class="start-button">Start Test</button>
    </form>
</body>
</html>
