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
    <a class="navbar-brand" href="#">
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor"
             class="bi bi-emoji-sunglasses" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path fill-rule="evenodd"
                  d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM6.5 6.497V6.5h-1c0-.568.447-.947.862-1.154C6.807 5.123 7.387 5 8 5s1.193.123 1.638.346c.415.207.862.586.862 1.154h-1v-.003l-.003-.01a.213.213 0 0 0-.036-.053.86.86 0 0 0-.27-.194C8.91 6.1 8.49 6 8 6c-.491 0-.912.1-1.19.24a.86.86 0 0 0-.271.194.213.213 0 0 0-.036.054l-.003.01z"/>
            <path d="M2.31 5.243A1 1 0 0 1 3.28 4H6a1 1 0 0 1 1 1v1a2 2 0 0 1-2 2h-.438a2 2 0 0 1-1.94-1.515L2.31 5.243zM9 5a1 1 0 0 1 1-1h2.72a1 1 0 0 1 .97 1.243l-.311 1.242A2 2 0 0 1 11.439 8H11a2 2 0 0 1-2-2V5z"/>
        </svg>
        网上报名系统
    </a>
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
