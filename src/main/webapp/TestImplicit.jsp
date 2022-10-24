<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 9/26/2022
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test EL's Implicit Object</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-3">

    <div class="card">
        <div class="card-body">
            <h1>ID: ${param.id}</h1>
            <h1>Name: ${param.name}</h1>
            <h1>Grade: ${param.grade}</h1>
            <h1>Favourite Subjects</h1>
            <hr/>
            <p>- ${paramValues.fav[0]}</p>
            <p>- ${paramValues.fav[1]}</p>
            <p>- ${paramValues.fav[2]}</p>
            <hr/>
            <h1>Favourite Subjects (Loop)</h1>
            <c:forEach items="${paramValues.fav}" var="fav">
                <p>- ${fav}</p>
            </c:forEach>
            </hr>
            <p>Connection: ${header.connection}</p>
            <p>Cookie: ${header.cookie}</p>
            <p>Host: ${header.host}</p>
        </div>
    </div>
</div>
<hr/>
</body>
</html>
