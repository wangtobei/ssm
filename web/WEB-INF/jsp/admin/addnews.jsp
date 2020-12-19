<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/18
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新闻</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div style="margin-left: 210px;margin-top: 50px">
    <div style="width: 500px;margin: auto">
        <form class="layui-form" action="${pageContext.request.contextPath}/admin/dashboard/news/addtodb">
            <div class="layui-form-item">
                <label class="layui-form-label">新闻id</label>
                <div class="layui-input-block">
                    <input type="text" name="id" lay-verify="title" autocomplete="off" placeholder="请输入公告标题" required
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">新闻类型</label>
                <div class="layui-input-block">
                    <input type="text" name="type" lay-verify="title" autocomplete="off" placeholder="请输入公告标题" required
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">新闻标题</label>
                <div class="layui-input-block">
                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入公告内容"
                           required
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">新闻内容</label>
                <div class="layui-input-block">
                    <input type="text" name="content" lay-verify="title" autocomplete="off" placeholder="请输入公告内容"
                           required
                           class="layui-input">
                </div>
            </div>
            <div style="width: 216px; margin: 0 auto;">
                <button type="submit" class="layui-btn layui-btn-fluid">提交</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
