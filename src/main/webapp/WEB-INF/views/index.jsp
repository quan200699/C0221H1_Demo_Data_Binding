<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Register</h1>
<form:form action="/register" method="post" modelAttribute="user">
    <div>
        <label for="username">Username</label>
        <form:input type="text" path="username" id="username"/>
    </div>
    <div>
        <label for="password">Password</label>
        <form:input type="password" path="password" id="password"/>
    </div>
    <div>
        <label for="email">Email</label>
        <form:input type="text" path="email" id="email"/>
    </div>
    <div>
        <label for="phone">Phone Number</label>
        <form:input type="text" path="phoneNumber" id="phone"/>
    </div>
    <div>
        <input type="submit" value="Register">
    </div>
</form:form>
</body>
</html>
