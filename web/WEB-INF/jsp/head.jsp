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
    <title>用户界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="#">在线报名系统</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/dashboard">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/dashboard/signup">报名</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/dashboard/news">新闻资讯</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    我的
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/dashboard/signed">已报名</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">退出系统</a>
                </div>
            </li>
        </ul>
    </div>
</nav>
<script src="${pageContext.request.contextPath}/lib/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
</body>
</html>
