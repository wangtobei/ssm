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
    <title>打印准考证</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="container" style="margin-top: 20px">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">姓名</th>
            <th scope="col">联系方式</th>
            <th scope="col">报考科目</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>${signrecord.username}</td>
            <td>${signrecord.phone}</td>
            <td>${signrecord.subject}</td>
        </tr>
        </tbody>
    </table>
    <p>
        1、考生在报名时填写《报名卡》或以其他形式按报名点要求提供相关信息，按规定履行各项手续，随后还要按当地考试机构指定的时间和地点领取《准考证》和《考试通知单》，否则依然无法参加考试。考生报名时要认真核验《准考证》上的信息内容，有错误时应及时要求报名点更改。</p>
    <p>2、开考前一天，考生最好先到《考试通知单》上所安排的考试地点，熟悉自己所在的考场。</p>
    <p> 3、考试时考生应严格遵守《考生守则》并听从监考人员的指导，违反考试规定者将取消其考试成绩。</p>
    <p>4、考试前，考生一定要准备好黑色字迹的签字笔以及2B铅笔。考试中，不得使用其他类型的笔。</p>
    <p>5、考生要按时参加考试。笔试考生从8:30开始入场，8:45后不得入场。上午进行的口试考生从8:30开始入场，9:00后不得入场；下午进行的口试考生从13:30开始入场，14:00后不得入场。</p>
    <button type="button" class="btn btn-success" onclick="window.print()">打印准考证</button>
</div>
</body>
</html>
