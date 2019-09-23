<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>${empty user.id ? 'Add user' : 'Edit user'}</div>

    <form:form method="post" modelAttribute="user">
        <form:hidden path="id" value="${user.id}"/>
        <div>
            <label for="firstNameId">First name:</label>
            <form:input path="firstName" id="firstNameId"/>
            <form:errors path="firstName"/>
        </div>
        <div>
            <label for="lastNameId">Last name:</label>
            <form:input path="lastName" id="lastNameId"/>
            <form:errors path="lastName"/>
        </div>
        <div>
            <label for="emailId">Email:</label>
            <form:input path="email" id="emailId"/>
            <form:errors path="email"/>
        </div>
        <div>
            <label for="passwordId">Password:</label>
            <form:input path="password" id="passwordId"/>
            <form:errors path="password"/>
        </div>
        <div>
            <label for="adminId">Admin:</label>
            <form:checkbox path="admin" id="adminId"/>
            <form:errors path="admin"/>
        </div>
        <input type="submit" value="Add">
    </form:form>
</body>
</html>
