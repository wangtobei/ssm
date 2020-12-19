<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/17
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top:20px">
    <c:forEach var="item" items="${notices}">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">${item.title}</h1>
                <p class="lead">${item.content}</p>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
