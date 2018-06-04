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
        <div>
            <label for="color1">Enter Color</label>
            <input type="color" id="color1" name="color1"  autofocus required>
        </div>
        <div>
            <label for="color2">Enter Color</label>
            <input type="color" id="color2" name="color2"  autofocus required>
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
