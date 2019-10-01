<%--
  Created by IntelliJ IDEA.
  User: niyaz
  Date: 02.10.2019
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Page</title>
</head>
<body>
    <% if(request.getAttribute("authOk") != null && (boolean)request.getAttribute("authOk")) { %>
        <h2>Welcome, %
        <% out.print(request.getParameter("username")); %>
        %</h2>
    <% } else { %>
        <h3>You are not authorized</h3>
        <a href="/">Please Proceed</a>
    <% response.setStatus(403); } %>
</body>
</html>
