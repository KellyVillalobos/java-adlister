<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String isLoggedIn = (String) session.getAttribute("isLoggedIn");
if (isLoggedIn!=null){

}else{
    response.sendRedirect("/login");
}

%>


<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
    </div>

</body>
</html>
