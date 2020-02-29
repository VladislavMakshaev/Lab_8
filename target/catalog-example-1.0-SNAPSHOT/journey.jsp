<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
    <h1><a href="/">Catalog</a> > Journey</h1>
</header>
<form method="post">
    <input type="submit" value="Clear">
</form>
<h3>${journey.list}</h3>
<ul>
<c:forEach items="${journey.list}" var="path">
    <li>
        ${path}
    </li>
</c:forEach>
</ul>

</body>
</html>
