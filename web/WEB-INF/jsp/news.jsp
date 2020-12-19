<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/18
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻资讯</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 20px">
    <c:forEach var="item" items="${list}">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">${item.title}</h4>
            <p>${item.content}</p>
        </div>
        <br>
    </c:forEach>
</div>
</body>
</html>
