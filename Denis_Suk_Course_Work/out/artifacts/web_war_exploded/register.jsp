<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<html>

<head>
    <meta charset="UTF-8">
    <title>Реєстрація на форумі</title>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal">ASAP NEWS</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark"  href="controller?action=main">Main page</a>
        <a class="p-2 text-dark" href="about.html">About us</a>
    </nav>
</div>


        <jstl:if test="${not empty requestScope.notAdd}">
            <p>User already exists</p>
        </jstl:if>

        <form method="post" action="controller?action=register">

            <p><input class="form-control" type="text" name="name" placeholder="username"/></p>
            <p><input class="form-control" type="password" name="password"placeholder="password" /></p>
            <p>
                <select class="custom-select d-block w-100" size="2" name="admin">
                    <option value = "true">Admin</option>
                    <option value = "false">User</option>
                </select>
            </p>
            <p><input class="btn btn-outline-primary" type="submit" value="REGISTER"/></p>
        </form>
</body>
</html>
