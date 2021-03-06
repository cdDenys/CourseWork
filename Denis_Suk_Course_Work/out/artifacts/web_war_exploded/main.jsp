<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<html>

<head>
    <meta charset="UTF-8">
    <title>Site</title>
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

<jstl:choose>

    <jstl:when test="${not empty sessionScope.user}">

        <jstl:if test="${sessionScope.user.admin == true}">
            <form  method="post" action="create_new_news.jsp">
                <input class="btn btn-outline-primary" type="submit" value="Create new news"/>
            </form>
        </jstl:if>

        <p class="input group text">${sessionScope.user.name}
            <a class="btn btn-secondary" href="controller?action=logout">Logout</a>
        </p>
        <form method="post" action="controller?action=searchCategory">
            <p>
                <select class="custom-select d-block w-100"name="category">
                    <jstl:forEach items="${sessionScope.site.categories}" var="categorySelect">
                        <option value = "${categorySelect}">${categorySelect}</option>
                    </jstl:forEach>
                </select>
                <input class="btn btn-outline-primary" type="submit" value="Search"/>
            </p>
        </form>

        <form method="post" action="controller?action=search">
            <p><input class="form-control" type="text" name="search" placeholder="Find by key word"/>
                <input class="btn btn-outline-primary" type="submit" value="Search"/></p>
        </form>

        <jstl:forEach items="${requestScope.news}" var="news">
            <form method="post" action="controller?action=go_to_news">
                <p><input class="jumbotron" type="text" name="news" value="${news.header}" readonly>
                    <input class="btn btn-outline-primary" type="submit" value="View"/></p>
            </form>
        </jstl:forEach>

    </jstl:when>

    <jstl:otherwise>
<center>
        <p><a class="mb-6 btn btn-outline-primary" href="register.jsp">Registration</a></p>
        <p><a class="mb-6 btn btn-outline-primary" href="login.jsp">Login</a></p>
</center>

    </jstl:otherwise>
</jstl:choose>

</body>
</html>

