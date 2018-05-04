<%--
  Created by IntelliJ IDEA.
  User: himedere
  Date: 04/05/2018
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Create new Product</title>
<style>
    .message{
        color: forestgreen;
    }
</style>
</head>
<body>
<h1>Create new Product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Brand: </td>
                <td><input type="text" name="brand" id="brand"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
