<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<html>

<head>
    <meta charset="UTF-8">
    <title>News</title>
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




    <form method="post" action="controller?action=search">
        <p><input class="form-control" type="text" name="search"/>
            <input class="btn btn-outline-primary" type="submit" value="Search"/></p>
    </form>

    <jstl:forEach items="${requestScope.searchNewsKey}" var="news">
        <form method="post" action="controller?action=go_to_news">
            <p><input class="jumbotron" type="text" name="news" value="${news.header}" readonly>
                <input class="btn btn-outline-primary" type="submit" value="View"/></p>
        </form>
    </jstl:forEach>

</body>
</html>
