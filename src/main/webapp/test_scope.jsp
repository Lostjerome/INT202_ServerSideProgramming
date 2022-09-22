<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 9/19/2022
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Scope</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
</head>
<body>
<div class="container mt-3">
<p>Request Scope: ${rc}</p>
<p>Session Scope: ${sc}</p>
<p>Application Scope: ${ac}</p>
<form action="TestScopeServlet" method="get">
    <a href="index.jsp" class="btn btn-outline-dark">Back</a>
    <input type="submit" value="Test scope" class="btn btn-dark mr-3">
</form>
</div>
</body>
</html>
