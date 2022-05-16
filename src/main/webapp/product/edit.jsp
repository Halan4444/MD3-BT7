<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/13/2022
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/ProductServlet">Back to customer list</a>
</p>
<form method="post" >
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Product Name: </td>
                <td><input type="text" name="productName" id="ProductName" value="${requestScope["products"].getProductName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="number" name="price" id="Price" value="${requestScope["products"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="description" id="description" value="${requestScope["products"].getAddress()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
