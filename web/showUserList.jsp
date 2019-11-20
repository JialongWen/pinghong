<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/17
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>管理人员-管理</title>
    <link rel="stylesheet" type="text/css" href="image/style_admin.css">
</head>
<body>
<table cellspacing="1" cellpadding="4" width="100%"
       class="tableborder" id="table3">
        <tr>
            <td colspan="15" class="header">
                用户管理
            </td>
        </tr>
    <form method="get"></form>
        <c:choose>
            <c:when test="${not empty requestScope.userlist}">
        <c:forEach var="user" items="${requestScope.userlist}">
        <tr>
            <td align="center" class="altbg1">
                <b>${user.username}</b>
            </td>
            <td align="center" class="altbg1">
                <b>${user.rank}</b>
            </td>
            <td align="center" class="altbg1">
                <a href="delectType?username=${user.username}"onClick="return window.confirm('确认要删除选中的信息')">删除</a>
            </td>
        </tr>
        </c:forEach>
        </c:when>
        <c:otherwise>
        <tr>
            <td>暂无信息!</td>
        </tr>
        </c:otherwise>
        </c:choose>

</table>
</body>
</html>