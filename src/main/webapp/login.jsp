<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
</head>
<body>

    <h2>User Login</h2>

    <form action="LoginServlet" method="post">

        <label>Username:</label>
        <input type="text" name="username" required>
        <br><br>

        <label>Password:</label>
        <input type="password" name="password" required>
        <br><br>

        <input type="submit" value="Login">

    </form>

    <br>

    <a href="register.jsp">New User? Register Here</a>

</body>
</html>