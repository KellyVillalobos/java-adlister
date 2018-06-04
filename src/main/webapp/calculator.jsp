<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 6/1/18
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>Enter your numbers</h1>
    <form action="/calculator" method="POST">
        <input id="number1" class="form-control" name="numOne" type="number">
        <br>
        <br>
        <input id="number2" name="numTwo" class="form-control" type="number">
        <input type="submit" name="operator" class="btn btn-primary btn-block" value="add" autofocus required>
        <input type="submit" name="operator" class="btn btn-primary btn-block" value="multiply" autofocus required>
    </form>


</div>
</body>
</html>
