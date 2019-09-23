<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>


    <section>
        <div class="container">
            <div class="row">
                <c:forEach items="${list}" var="product">
                    <div class="card" style="width: 15rem;">
                        <img src="..." class="card-img-top" style="height: 200px" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text">${product.description}</p>
                            <a href="#" class="btn btn-primary">Add to cart</a>
                            <span class="ml-4">${product.price}$</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>







<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th>Id</th>--%>
<%--            <th>Product name</th>--%>
<%--            <th>Product description</th>--%>
<%--            <th>Product category</th>--%>
<%--        </tr>--%>
<%--        <c:forEach items="${list}" var="product">--%>
<%--            <tr>--%>
<%--                <td>${product.id}</td>--%>
<%--                <td>${product.name}</td>--%>
<%--                <td>${product.description}</td>--%>
<%--                <td>${product.category.name}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
