<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="src/main/webapp/main.css" type="text/css"/>
</head>

<body>
<div class="container">
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <div>
        <label>Email:</label>
        <span>${user.email}</span>
    </div>
    <div>
        <label>First Name:</label>
        <span>${user.firstName}</span>
    </div>
    <div>
        <label>Last Name:</label>
        <span>${user.lastName}</span>
    </div>

    <p>To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

    <form action="emailList" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</div>
</body>
</html>
