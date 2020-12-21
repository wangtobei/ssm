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
    <title>开始报名</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <style>
        .price {
            display: block;
            padding: 10px;
            height: 60px;
            width: 200px;
            line-height: 40px;
            font-weight: bold;
            font-size: 300%;
        }
    </style>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top:20px">
    <form action="${pageContext.request.contextPath }/dashboard/signup/submit" method="post">
        <div class="row" style="width: 500px;margin: auto">
            <div class="col-12">
                <label for="sid">科目编号</label>
                <input type="text" class="form-control" id="sid" name="sid" value="${subject.sid}"
                       readonly required>
            </div>
            <div class="col-12">
                <label for="subject">课程名称</label>
                <input type="text" class="form-control" id="subject" name="subject" readonly
                       value="${subject.subject}" required>
            </div>
            <div class="col-12">
                <label for="uid">报考人编号</label>
                <input type="text" class="form-control" id="uid" name="uid" value="${user.userid}"
                       readonly required>
            </div>
            <div class="col-12">
                <label for="username">报考人</label>
                <input type="text" class="form-control" id="username" name="username" readonly
                       value="${user.realname}" required>
            </div>
            <div class="col-12">
                <label for="phone">电话</label>
                <input type="text" class="form-control" id="phone" placeholder="联系方式" name="phone" required
                       value="${user.phone}"
                >
            </div>
            <div class="col-12">
                <label>费用</label>
                <div class="layui-badge price">${subject.price}元</div>
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary" style="width: 200px;margin: 30px auto">报名</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
