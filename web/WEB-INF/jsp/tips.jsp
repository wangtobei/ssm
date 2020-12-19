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
    <title>温馨提示</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 20px">
    <div class="alert alert-primary" role="alert">
        ${tips}
    </div>
</div>
</body>
</html>
