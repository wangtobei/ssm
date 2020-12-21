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
    <a href="${pageContext.request.contextPath}/admin/dashboard/news/add" class="layui-btn layui-btn-sm"><i
            class="layui-icon"></i></a>
    <br>
    <div class="layui-row" style="margin-top: 10px">
        <div class="layui-col-md9">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                   class="layui-input"
                   id="title">
        </div>
        <div class="layui-col-md3">
            <button type="button" class="layui-btn" onclick="search()">搜索</button>
        </div>
    </div>
    <table class="layui-hide" id="test" lay-filter="test"></table>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="${pageContext.request.contextPath}/lib/axios.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/qs.min.js"></script>
<script>
    var table = layui.table;
    layui.use('table', function () {

        table.render({
            elem: '#test'
            , url: '${pageContext.request.contextPath}/admin/dashboard/news/all'
            , parseData: function (res) {
                return {
                    "code": 0,
                    "data": res
                }
            }
            , title: '用户数据表'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {field: 'id', title: 'ID', fixed: 'left', unresize: true, sort: true}
                , {field: 'type', title: '新闻类型', edit: 'text'}
                , {field: 'title', title: '新闻标题', edit: 'text'}
                , {field: 'content', title: '新闻', edit: 'text'}
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
                        axios("${pageContext.request.contextPath}/admin/dashboard/news/delete/" + data.id).then((res) => {
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
            layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
            console.log(obj.data)
            axios.post("${pageContext.request.contextPath}/admin/dashboard/news/update", Qs.stringify(obj.data)).then((res) => {
                console.log(res.data)
            })
        });
    });

    function search() {
        var title = document.getElementById("title").value;
        if (title !== "") {
            table.reload('test', {
                url: '${pageContext.request.contextPath}/admin/dashboard/news/query/' + title
                , where: {} //设定异步数据接口的额外参数
                //,height: 300
            });
        } else {
            table.reload('test', {
                url: '${pageContext.request.contextPath}/admin/dashboard/news/all'
                , where: {} //设定异步数据接口的额外参数
                //,height: 300
            });
        }
    }
</script>
</body>
</html>
