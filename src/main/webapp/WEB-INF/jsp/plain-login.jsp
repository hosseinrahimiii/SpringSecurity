<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Custom Login Page</title>

    <style>
        .failed {
            color: red;
        }
    </style>
</head>

<body>
<h3>My Custom Login Page</h3>
<form:form action="/authenticatedTheUser" method="POST">

    <!-- Check for login error -->

    <%--When login fails, by default Spring Security
    will actually send a user back to your login page
    and also append an error parameter called error.--%>
    <c:if test="${param.error != null}">

        <i class="failed">Sorry! You entered invalid username/password.</i>

    </c:if>

    <c:if test="${param.logout != null}">

        <div class="alert alert-success col-xs-offset-1 col-xs-10">
            You have been logged out.
        </div>

    </c:if>

    <%--name="username" should not be changed--%>
    <p>
        User name: <input type="text" name="username" />
    </p>

    <%--name="password" should not be changed--%>
    <p>
        Password: <input type="password" name="password" />
    </p>

    <input type="submit" value="Login" />

</form:form>
</body>
</html>












