<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 5/31/18
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username.equals("admin") && password.equals("password")) {
                response.sendRedirect("profile.jsp  ");
            }
        }
    %>
<html>
<head>
    <title>Title</title>
   <jsp:include page="partials/head.jsp"/>
</head>
<body>




<div id="container">
<form method="POST" action="/login.jsp">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">
    <br>

    <label for="password">Password</label>
    <input id="password" name="password" type="password">
    <br>

    <input type="submit">


</form>
</div>





</body>
</html>


<%--When a user visits /login.jsp, they should see a form for logging in--%>

<%--This form should have a 'username' and 'password' field.--%>

<%--This form should submit a POST request to /login.jsp--%>

<%--Inside of login.jsp write some code to check the submmitted values. --%>

<%--If the username submitted is "admin", and the password is "password", --%>

<%--redirect the user to the profile page, otherwise, redirect back to the login form.--%>