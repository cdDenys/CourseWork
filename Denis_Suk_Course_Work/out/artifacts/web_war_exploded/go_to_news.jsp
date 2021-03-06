<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<html>

<head>
    <meta charset="UTF-8">
    <title>News creator: ${requestScope.news.creator.name}</title>

</head>


<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal">ASAP NEWS</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark"  href="controller?action=main">Main page</a>
        <a class="p-2 text-dark" href="about.html">About us</a>
        <a class="btn btn-outline-primary" href="controller?action=logout">Logout</a>
    </nav>
</div>
    <p class="user">${requestScope.news.header}</p>
    <p class="user">News creator - ${requestScope.news.creator.name}</p>
    <p class="user">Category - ${requestScope.news.category.category}</p>
    <p class="user">Post date - ${requestScope.news.date}</p>
    <p class="user2">${requestScope.news.news}</p>

</body>
</html>
