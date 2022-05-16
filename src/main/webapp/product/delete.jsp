<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/13/2022
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/ProductServlet">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Product Name: </td>
                <td>${requestScope["products"].getProductName()}</td>
            </tr>
            <tr>
                <td>Product Price: </td>
                <td>${requestScope["products"].getPrice()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["products"].getDescription()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/ProductServlet">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
