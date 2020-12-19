<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/17
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已报名</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 20px">
    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">报考人</th>
            <th scope="col">考试名称</th>
            <th scope="col">联系人电话</th>
            <th scope="col">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${signRecord}">
            <tr>
                <td>${item.username}</td>
                <td>${item.subject}</td>
                <td>${item.phone}</td>
                <td>
                    <button type="button" class="btn btn-info btn-sm"
                            onclick="window.location.href='/dashboard/signrecord/delete/${item.sid}'">取消报名
                    </button>
                    <button type="button" class="btn btn-info btn-sm"
                            onclick="window.location.href='/dashboard/signrecord/print/${item.sid}'">打印追考证
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
