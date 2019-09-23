<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>${empty product.id ? 'Add product' : 'Edit product'}</div>

<form:form method="post" modelAttribute="product">
    <form:hidden path="id" value="${product.id}"/>
    <div>
        <label for="nameId">Name:</label>
        <form:input path="name" id="nameId"/>
        <form:errors path="name"/>
    </div>
    <div>
        <label for="descriptionId">Description:</label>
        <form:textarea path="description" id="descriptionId"/>
        <form:errors path="description"/>
    </div>
    <div>
        <label for="priceId">Price:</label>
        <form:input type="number" step="0.01" path="price" id="priceId"/>
        <form:errors path="price"/>
    </div>
    <div>
        <label for="categoryId">Category:</label>
        <form:select path="category.id" items="${categories}" itemLabel="name" itemValue="id" id="categoryId"/>
        <form:errors path="category"/>
    </div>
    <input type="submit" value="Add">
</form:form>
</body>
</html>
