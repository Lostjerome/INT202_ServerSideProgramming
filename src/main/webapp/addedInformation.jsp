<%--
  Created by IntelliJ IDEA.
  User: ben10
  Date: 8/29/2022
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Added Information</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
</head>
<body>
<h1>Add Information</h1>
<form method="post" action="AddInformation">
    <p>Name: <input type="text" name="name" placeholder="name" required><br></p>
    <p>  Age: <input type="text" name="age" placeholder="age" required><br></p>
    <p> Email: <input type="text" name="email" placeholder="email" required><br></p>
    <p>  Phone:   <input type="text" name="phone" placeholder="phone" required><br></p>
    <p> Address: <input type="text" name="address" placeholder="address" required><br></p>
    <p>  City: <input type="text" name="city" placeholder="city" required><br></p>
    <p>  Country: <input type="text" name="country" placeholder="country" required><br></p>
    <p>Postal Code: <input type="text" name="postalCode" placeholder="postalCode" required><br></p>
    <!--        add checkbox of favourite food-->
    <p>Favourite Food:<br>
        <input type="checkbox" name="favouriteFood[]" value="Pizza"> Pizza
        <input type="checkbox" name="favouriteFood[]" value="Pasta"> Pasta
        <input type="checkbox" name="favouriteFood[]" value="Sushi"> Sushi
        <input type="checkbox" name="favouriteFood[]" value="Steak"> Steak
        <input type="checkbox" name="favouriteFood[]" value="Burger"> Burger<br>
        <input type="checkbox" name="favouriteFood[]" value="Fish"> Fish
        <input type="checkbox" name="favouriteFood[]" value="Chicken"> Chicken
        <input type="checkbox" name="favouriteFood[]" value="Beef"> Beef
        <input type="checkbox" name="favouriteFood[]" value="Pasta"> Pasta
        <input type="checkbox" name="favouriteFood[]" value="Sushi"> Sushi<br>
        <input type="checkbox" name="favouriteFood[]" value="Steak"> Steak
        <input type="checkbox" name="favouriteFood[]" value="Burger"> Burger
        <input type="checkbox" name="favouriteFood[]" value="Fish"> Fish
        <input type="checkbox" name="favouriteFood[]" value="Chicken"> Chicken
        <input type="checkbox" name="favouriteFood[]" value="Beef"> Beef<br>
        <input type="checkbox" name="favouriteFood[]" value="Pasta"> Pasta
        <input type="checkbox" name="favouriteFood[]" value="Sushi"> Sushi
        <input type="checkbox" name="favouriteFood[]" value="Steak"> Steak
        <br>
        <input type="submit" value="Submit">
</form>
<hr>
<h1>Added Information</h1>
<p>Name: ${name}</p>
<p>Age: ${age}</p>
<p>Email: ${email}</p>
<p>Phone: ${phone}</p>
<p>Address: ${address}</p>
<p>City: ${city}</p>
<p>Country: ${country}</p>
<p>Postal Code: ${postalCode}</p>
<p>Favourite foods: </p>
<c:forEach items="${favouriteFoods}" var="food">
    <p>${food}</p>
</c:forEach>

</body>
</html>
