<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/13/2022
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/ProductServlet?action=create">Create new product</a>
</p>


<table border="1">
    <tr>

        <td>Product Name</td>
        <td>Product Price</td>
        <td>Product Description</td>
        <td>Product Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach  items='${requestScope.products}' var="product">
        <tr>
            <td><a href="/ProductServlet?action=view&id=${product.getId()}">${product.getProductName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="/ProductServlet?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/ProductServlet?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
