<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/18
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <style>
        .nav {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
        }
    </style>
</head>
<body>
<ul class="layui-nav layui-nav-tree nav" lay-filter="test">
    <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
    <li class="layui-nav-item layui-nav-itemed">
        <a href="javascript:;">信息查看</a>
        <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath}/admin/dashboard">公告管理</a></dd>
            <dd><a href="${pageContext.request.contextPath}/admin/dashboard/news">新闻管理</a></dd>
            <dd><a href="${pageContext.request.contextPath}/admin/dashboard/subjects">科目管理</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/admin/dashboard/signrecord">查看报名表</a></li>
    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/admin/dashboard/user">用户管理</a></li>
</ul>
<script src="${pageContext.request.contextPath}/lib/layui/layui.all.js"></script>
</body>
</html>
