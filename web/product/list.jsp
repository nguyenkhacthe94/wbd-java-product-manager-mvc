<%--
  Created by IntelliJ IDEA.
  User: himedere
  Date: 03/05/2018
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products List:</h1>
<p><a href="/products?action=create"> Insert new Product</a></p>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Product name</td>
        <td>Product brand</td>
        <td>Selling Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}"</a></td>
            <td>${product.getBrand()}</td>
            <td>${product.getPrice()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
