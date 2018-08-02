<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 7/31/2018
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="style.css" type="text/css">
<html>
  <head>
    <title>Calculator Deposits</title>
  </head>
  <body>
  <h1 >Calculator Interest</h1>
  <h1>${error}</h1>
  <fieldset>
    <legend><h1>Calculator Interest</h1></legend>
    <form method="post" action="/interest">
      <label>Deposits: </label> <br>
      <input type="text" name="deposits"> <br>
      <label>Monthly Interest Rate: </label> <br>
      <input type="text" name="rate"> <br>
      <label>Months: </label> <br>
      <input type="number" name="months"> <br>
      <input type="submit" name="calculator" value="Calculator">
    </form>
  </fieldset>
  </body>
</html>
