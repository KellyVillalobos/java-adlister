<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 5/31/18
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<form method="POST" action="login.jsp">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">
    <br>

    <label for="password">Password</label>
    <input id="password" name="password" type="password">
    <br>

    <input type="submit">


</form>

<c:if test="${param.username =='admin' && param.password =='password'}">

    <%
        String redirectURL = "profile.jsp";
        response.sendRedirect(redirectURL);
    %>
</c:if>


</body>
</html>


<%--When a user visits /login.jsp, they should see a form for logging in--%>

<%--This form should have a 'username' and 'password' field.--%>

<%--This form should submit a POST request to /login.jsp--%>

<%--Inside of login.jsp write some code to check the submmitted values. --%>

<%--If the username submitted is "admin", and the password is "password", --%>

<%--redirect the user to the profile page, otherwise, redirect back to the login form.--%>