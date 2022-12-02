<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 10/3/2022
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Created Cookie</title>
</head>
<body style="background-color: ${cookie["backgroundColor"].value}">
<div style="color: ${cookie["fontColor"].value}">
    <h1 >Cookie Created</h1>
    <h2>Background color: ${cookie["backgroundColor"].value}</h2>
    <h2>Font color: ${cookie["fontColor"].value}</h2>
</div>
</body>
</html>
