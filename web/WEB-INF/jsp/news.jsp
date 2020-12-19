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
    <div class="alert alert-info" role="alert">
        热点新闻
    </div>
    <div class="row">
        <c:forEach var="item" items="${list}">
            <div class="card col-3 border-secondary mb-3" style="max-width: 18rem;margin: 10px">
                <div class="card-header">${item.type}</div>
                <div class="card-body text-secondary">
                    <h5 class="card-title">${item.title}</h5>
                    <p class="card-text">${item.content}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
