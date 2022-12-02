<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 9/26/2022
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Multiplication</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-3">
    <h3>Multiplication Table of ${param.x}</h3>
    <table class="table">
        <c:forEach begin="2" end="12" var="n">
            <tr style="background-color: ${n%2==0?'#EBECF0':'white'}">
                <td>${param.x}</td>
                <td>x</td>
                <td>${n}</td>
                <td>=</td>
                <td>${n*param.x}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
