<%--
  Created by IntelliJ IDEA.
  User: niyaz
  Date: 25.09.2019
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login Page</title>
  </head>
  <body>
  <form action="/kt/account" method="post">
    <input type="text" name="username" placeholder="Имя пользователя" required>
    <input type="password" name="password" placeholder="Пароль" required>
    <input class="button" type="submit">
  </form>
  </body>
</html>
