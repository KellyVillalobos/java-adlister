<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 6/1/18
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.

--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="container">
    <h1>Please Log In</h1>
    <form action="/name" method="POST">
        <div class="form-group">
            <label for="name">Enter Name</label>
            <input id="name" name="name" class="form-control" type="text" placeholder="Enter your name here please" autofocus required>
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
