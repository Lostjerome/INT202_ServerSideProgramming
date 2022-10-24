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
N    <div class="card">
        <div class="card-body">
            <p>Request Scope: <span class="text-primary">${rc}</span></p>
            <p>Session Scope: <span class="text-primary">${sc}</span></p>
            <p>Application Scope: <span class="text-primary">${ac}</span></p>

                <a href="index.jsp" class="btn btn-outline-dark">Back</a>
                <a href="test_scope.jsp" class="btn btn-dark ">Go to test_scope.jsp</a>
        </div>
    </div>
</div>
</body>
</html>
