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
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top:20px">
    <form action="${pageContext.request.contextPath }/dashboard/signup/submit" method="post">
        <div class="row" style="width: 500px;margin: auto">
            <div class="col-12">
                <label for="rid">recordid</label>
                <input type="text" class="form-control" placeholder="课程id" id="rid" name="rid">
            </div>
            <div class="col-12">
                <label for="sid">科目编号</label>
                <input type="text" class="form-control" placeholder="课程id" id="sid" name="sid" value="${subject.sid}">
            </div>
            <div class="col-12">
                <label for="subject">课程名称</label>
                <input type="text" class="form-control" placeholder="课程名称" id="subject" name="subject"
                       value="${subject.subject}">
            </div>
            <div class="col-12">
                <label for="uid">报考人编号</label>
                <input type="text" class="form-control" placeholder="报考人id" id="uid" name="uid" value="${user.userid}">
            </div>
            <div class="col-12">
                <label for="username">报考人</label>
                <input type="text" class="form-control" placeholder="报考人" id="username" name="username"
                       value="${user.username}">
            </div>
            <div class="col-12">
                <label for="phone">电话</label>
                <input type="text" class="form-control" id="phone" placeholder="联系方式" name="phone" required>
            </div>
            <button type="submit" class="btn btn-primary">报名</button>
        </div>
    </form>
</div>
</body>
</html>
