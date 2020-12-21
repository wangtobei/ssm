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
    <title>信息完善</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 20px">
    <div class="alert alert-info" role="alert">
        完善个人信息
    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">ID</th>
            <th scope="col">用户名</th>
            <th scope="col">密码</th>
            <th scope="col">真实姓名</th>
            <th scope="col">联系方式</th>
            <th scope="col">性别</th>
            <th scope="col">登录次数</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row"></th>
            <td>${user.userid}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.realname}</td>
            <td>${user.phone}</td>
            <td>${user.sex}</td>
            <td>${user.logintimes}</td>
        </tr>
        </tbody>
    </table>
    <div class="row" style="width: 500px;margin: auto">
        <form method="post" action="${pageContext.request.contextPath}/dashboard/userinfo/update"
              style="width: 500px;margin: auto">
            <div class="form-group">
                <label for="exampleFormControlInput1">用户名：</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="用户名" name="username"
                       value="${user.username}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput2">密码：</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="密码" name="password"
                       value="${user.password}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput3">真实姓名：</label>
                <input type="text" class="form-control" id="exampleFormControlInput3" placeholder="真实姓名"
                       value="${user.realname}"
                       name="realname">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput4">联系方式：</label>
                <input type="text" class="form-control" id="exampleFormControlInput4" placeholder="联系方式" name="phone"
                       value="${user.phone}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">性别：</label>
                <select class="form-control" id="exampleFormControlSelect1" name="sex">
                    <option>男</option>
                    <option>女</option>
                    <option>保密</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success">提交</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
