<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 6/1/18
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>Please choose color</h1>
    <form action="/color" method="POST">
        <div class="form-group">
            <label for="color">Enter Color</label>
            <input id="color" name="color" class="form-control" type="text" placeholder="Enter your favorite color" autofocus required>
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
