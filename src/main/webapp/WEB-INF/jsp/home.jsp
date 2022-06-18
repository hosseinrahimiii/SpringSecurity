<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<p>
    Welcome to the luv2code company home page!
</p>

<!-- display user name and role -->
<p>
    User: <security:authentication property="principal.username" />
    <br><br>
    Role(s): <security:authentication property="principal.authorities" />
</p>

<hr>

<!-- Add a link to point to /leaders ... this is for the managers -->
<security:authorize access="hasRole('MANAGER')">
<p>
    <a href="/managers">Leadership Meeting</a>
    (Only for Manager peeps)
</p>
</security:authorize>
<!-- Add a link to point to /systems ... this is for the admins -->
<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="/systems">IT Systems Meeting</a>
    (Only for Admin peeps)
</p>
</security:authorize>
<hr>

<!-- Add a logout button -->
<form:form action="/logout" method="POST">

    <input type="submit" value="Logout" />

</form:form>
</body>
</html>