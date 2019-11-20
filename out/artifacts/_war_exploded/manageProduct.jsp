<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>管理人员-管理</title>
    <link rel="stylesheet" type="text/css" href="image/style_admin.css">
</head>
<body>
<table cellspacing="1" cellpadding="4" width="100%"
       class="tableborder" id="table3">
        <tr>
            <td colspan="15" class="header">
                商品管理
            </td>
        </tr>
        <c:choose>
            <c:when test="${not empty requestScope.productList}">
                <c:forEach var="product" items="${productList}">
                    <tr>
                        <td align="center" class="altbg1">
                            <b>${product.getId()}</b>
                        </td>
                        <td align="center" class="altbg1">
                            <b>${product.getProduct_name()}</b>
                        </td>
                        <td align="center" class="altbg1">
                            <b>${product.getProduct_id()}</b>
                        </td>
                        <td align="center" class="altbg1">
                            <b>${product.getProduct_model()}</b>
                        </td>
                        <td align="center" class="altbg1">
                            <b>${product.getProduct_price()}</b>
                        </td>
                        <td align="center" class="altbg1">
                            <b>修改</b>
                        </td>
                        <td align="center" class="altbg1">
                           <b><a href="delectProductType?Id=${product.getId()}"onClick="return window.confirm('确认要删除选中的信息')">删除</a></b>
                        </td>
                    </tr>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="8">暂无数据!</td>
                </tr>
            </c:otherwise>
        </c:choose>
 </table>
</body>
</html>
