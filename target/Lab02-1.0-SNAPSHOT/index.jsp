<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Jerome - Server side programming</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div class="p-5 text-center bg-dark ">
    <h1 class="text-white "><%= "Jerome - Server side programming" %>
    </h1><br/>
</div>

<div class="d-flex flex-row justify-content-center mt-5">
    <a href="hello-servlet" class="btn btn-outline-dark mr-2">Hello Servlet</a><br>
    <form action="SubjectListServlet" method="get">
        <input type="submit" class="btn btn-outline-dark mr-2" value="Subject list"/>
    </form>
    <br>
    <a href="subject_form.html" class="btn btn-outline-dark mr-2">Add New Subject</a><br>
    <a href="calculator.html" class="btn btn-outline-dark mr-2">Calculator</a><br>
    <a href="addedInformation.jsp" class="btn btn-outline-dark mr-2">Add Information</a><br>
    <form action="TestScopeServlet" method="post">
        <input type="submit" value="Test scope" class="btn btn-outline-dark mr-3">
    </form>
</div>
</body>
</html>