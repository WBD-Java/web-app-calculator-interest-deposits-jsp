<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 7/31/2018
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="interest.css" type="text/css">
</head>
<body>
<h1>Calculator Interest</h1>
<form action="calculate">
    <fieldset>
        <legend><h1>Calculator Interest</h1></legend>
        <pre>
            Deposits             : $<%=request.getParameter("deposits")%>
            Monthly Interest Rate: <%=request.getParameter("rate")%>%
            Months               : <%=request.getParameter("months")%>
            Interest Money       : $${interest_money}
        </pre>
    </fieldset>
</form>
</body>
</html>
