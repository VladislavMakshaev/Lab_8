<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<header>
    <h1><a href="/">Catalog</a> > Journey</h1>
</header>
<form method="post">
    <input type="submit" value="Clear">
</form>
<main>
<ol>
<c:forEach items="${journey}" var="item">
    <li>
            ${item}
    </li>
</c:forEach>
</ol>
</main>
</body>
</html>
