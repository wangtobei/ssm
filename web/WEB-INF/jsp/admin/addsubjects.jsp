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
    <title>添加科目</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div style="margin-left: 210px;margin-top: 50px">
    <div style="width: 500px;margin: auto">
        <form class="layui-form" action="${pageContext.request.contextPath}/admin/dashboard/subjects/addtodb">
            <div class="layui-form-item">
                <label class="layui-form-label">科目</label>
                <div class="layui-input-block">
                    <input type="text" name="subject" autocomplete="off" placeholder="请输入科目名称"
                           required
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">费用</label>
                <div class="layui-input-block">
                    <input type="text" name="price" autocomplete="off" placeholder="请输入费用"
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
