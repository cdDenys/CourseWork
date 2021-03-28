<%--
  Created by IntelliJ IDEA.
  User: anton
  Date: 11.02.2020
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Laba2</title>
  </head>
  <style>
  body {
    background-image: url(images/bg.jpg);
  }
  </style>
    <form action="servlet" method="post">
      <font size="4", color="maroon"><center>Enter a:<input type="text" name="a" value="${cookie['ac'].getValue()}"/></center></font>
      <font size="4", color="maroon"><center>Enter b:<input type="text" name="b" value="${cookie['bc'].getValue()}"/></center></font>
      <font size="4", color="maroon"><center>Enter с:<input type="text" name="c" value="${cookie['cc'].getValue()}"/></center></font>
      <font size="4", color="maroon"><center>Enter d:<input type="text" name="d" value="${cookie['dc'].getValue()}"/></center></font>
      <center><input type="submit" value="Calculate" /></center>
    </form>
  </body>
</html>
