<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<div class="container">
    <h1>Viewing ${loggedInUsername} profile.</h1>
</div>
<div class="container">
    <form action="/logout" method="POST">
    <input  type="submit" class="btn btn-primary" value="Logout"/>
    </form>
</div>


</body>
</html>
