<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 6/8/18
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create User"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container mt-5">
    <div class="card bg-light">
        <div class="card-body">

            <form action="/register" method="POST">
                <div class="form-group">
                    <label for="inputUsername" class="font-weight-bold">Username</label>
                    <input type="text" class="form-control" id="inputUsername" placeholder="Enter username">
                </div>
                <div class="form-group">
                    <label for="inputEmail1" class="font-weight-bold">Email address</label>
                    <input type="email" class="form-control" id="inputEmail1" aria-describedby="emailHelp"
                           placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.
                    </small>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="font-weight-bold">Password</label>
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>


</body>
</html>
