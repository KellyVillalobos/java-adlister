<%--
  Created by IntelliJ IDEA.
  User: sinergetic
  Date: 6/4/18
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Ad Listings"/>
    </jsp:include>
</head>
<body>

<%--<form action="/ads" class="form-inline my-2 my-lg-0">--%>
<%--<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
<%--</form>--%>

<%--<jsp:include page="/partials/ad.jsp"/>--%>
<div style="margin-top: 25px;" class="container">
    <div class="row">
        <c:forEach var="ad" items="${allAds}">
            <div class="col-md-6">
                <div class="well">
                    <h5 class="panel-heading">${ad.title}</h5>
                    <div class="panel-body">
                        <p class="card-text">${ad.description}</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


</body>
</html>
