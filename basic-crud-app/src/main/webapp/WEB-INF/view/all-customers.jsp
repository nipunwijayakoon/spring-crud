<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hasika
  Date: 5/28/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<hr>
<a href="new-customer-form" class="btn btn-submit btn-sm">
    + New Customer</a>
<hr>
<div class="container">
    <h1>Customers</h1>
    <hr>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>#</th>
            <th>Customer Name</th>
            <th>Salary</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cus" items="${customers}">

            <c:url var="update" value="/customers/update-ui-form">
                <c:param  name="id" value="${cus.id}"/>
            </c:url>

            <c:url var="delete" value="/customers/delete-ui-form">
                <c:param  name="id" value="${cus.id}"/>
            </c:url>


            <tr>
                <td>${cus.id}</td>
                <td>${cus.name}</td>
                <td>${cus.salary}</td>
                <td>
                    <a href="${update}">Update Customer</a>&nbsp; | &nbsp;
                    <a href="${delete}">Delete Customer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>