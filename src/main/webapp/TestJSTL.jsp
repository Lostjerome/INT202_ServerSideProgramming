<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 10/3/2022
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test JSTL</title>
</head>
<body>
<h1>Your session ID is ${cookie.JSESSIONID.value}</h1>
<h3>Hello <c:out value="${param.name}" default="No name"/></h3>
<c:set var="score" value="${param.score}"/>
<c:choose>
    <c:when test="${score>=80}">
        <c:set var="grade" value="A"/>
    </c:when>
    <c:when test="${score>=70}">
        <c:set var="grade" value="B"/>
    </c:when>
    <c:when test="${score>=60}">
        <c:set var="grade" value="C"/>
    </c:when>
    <c:otherwise>
        <c:set var="grade" value="F"/>
    </c:otherwise>
</c:choose>
<h3>Your score is <c:out value="${score}"/> and your grade is <span style="color: ${grade=="F"?"red":"blue"}"><c:out
        value="${grade}"/></span>
</h3>
<table>
    <tr>
        <th>Number</th>
        <th>Multiple</th>
    </tr>
    <c:forEach var="i" begin="1" end="10">
        <tr>
            <td><c:out value="${param.number}"/></td>
            <td>x</td>
            <td><c:out value="${i}"/></td>
            <td>=</td>
            <td><c:out value="${i*param.number}"/></td>
        </tr>
    </c:forEach>
</table>
<form action="index.jsp" method="get">
    <input type="hidden" name="x" value="209"/>
    <input type="submit">
</form>
</body>
</html>
