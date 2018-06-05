<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.isLoggedIn != null}">
                <li>
                    <a>
                        <form action="/logout" method="POST">
                            <button type="submit" style="font-weight: bold; background: none!important; border: none;outline: 0!important; " value="Logout">Logout</button>
                        </form>
                    </a>
                </li>
            </c:if>
            <c:if test="${sessionScope.isLoggedIn == null}">
                <li><a href="/login" style="font-weight: bold">Login</a></li>
            </c:if>
            <li><a href="/ads" style="font-weight: bold">Ads</a></li>
            <c:if test="${sessionScope.isLoggedIn != null}">
                <li><a href="/profile" style="font-weight: bold">Profile</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
