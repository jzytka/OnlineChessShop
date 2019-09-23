<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>${empty category.id ? 'Add category' : 'Edit category'}</div>

    <form:form method="post" modelAttribute="category">
        <form:hidden path="id" value="${category.id}"/>
        <div>
            <label for="nameId">Category name:</label>
            <form:input path="name" id="nameId"/>
            <form:errors path="name"/>
        </div>
        <input type="submit" value="Add">
    </form:form>
</body>
</html>
