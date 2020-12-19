<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/17
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <style>
        .form {
            margin: 100px auto;
            padding: 40px;
            width: 540px;
            height: 350px;
            border-radius: 20px;
            background-color: white;
            opacity: 85%;
        }

        body {
            background-image: url("${pageContext.request.contextPath}/img/background0.jpg");
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form">
        <h2 style="text-align: center">管理员登录</h2>
        <form action="${pageContext.request.contextPath}/admin/verify" method="post">
            <div class="form-group">
                <label for="username">用户名：</label>
                <input class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">密码：</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">登录</button>
            <span style="color: red">${tips}</span>
        </form>
    </div>
</div>
</body>
</html>
