<%--
  Created by IntelliJ IDEA.
  User: 一尊还酹江月丶
  Date: 2020/12/18
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻管理</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div style="margin-left: 210px">
    <br>
    <a href="${pageContext.request.contextPath}/admin/dashboard/subjects/add" class="layui-btn layui-btn-sm"><i
            class="layui-icon"></i></a>
    <table class="layui-hide" id="test" lay-filter="test"></table>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="${pageContext.request.contextPath}/lib/axios.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/qs.min.js"></script>
<script>
    layui.use('table', function () {
        var table = layui.table;
        table.render({
            elem: '#test'
            , url: '${pageContext.request.contextPath}/admin/dashboard/subjects/all'
            , parseData: function (res) {
                return {
                    "code": 0,
                    "data": res
                }
            }
            , title: '用户数据表'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {field: 'sid', title: 'ID', fixed: 'left', unresize: true, sort: true}
                , {field: 'subject', title: '考试科目', edit: 'text'}
                , {field: 'price', title: '考试费用', edit: 'text'}
                , {fixed: 'right', title: '操作', toolbar: '#barDemo'}
            ]]
            , page: false
        });
        //监听行工具事件
        table.on('tool(test)', function (obj) {
                var data = obj.data;
                if (obj.event === 'del') {
                    layer.confirm('确定要删除吗？', function (index) {
                        obj.del();
                        layer.close(index);
                        axios("${pageContext.request.contextPath}/admin/dashboard/subjects/delete/" + data.sid).then((res) => {
                            console.log(res.data)
                        })
                    });
                }
            }
        );
        //监听单元格编辑
        table.on('edit(test)', function (obj) {
            var value = obj.value //得到修改后的值
                , data = obj.data //得到所在行所有键值
                , field = obj.field; //得到字段
            layer.msg('[ID: ' + data.sid + '] ' + field + ' 字段更改为：' + value);
            console.log(obj.data)
            axios.post("${pageContext.request.contextPath}/admin/dashboard/subjects/update", Qs.stringify(obj.data)).then((res) => {
                console.log(res.data)
            })
        });
    });
</script>
</body>
</html>
