<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0039)http://localhost:8080/company/login.jsp -->
<HTML><HEAD>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <SCRIPT type=text/javascript>

        function openChat(){

            window.open("chat/index.jsp","","left=250   top=200   width=500   height=400");
        }
    </SCRIPT>

    <META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <TBODY>
    <TR>
        <TD background=image/d.jpg height=3></TD></TR></TBODY></TABLE>
<%@include file="inc/Table2.jsp"  %>
<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <TBODY>
    <TR>
        <TD background=image/d.jpg height=3></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <%@ include file="inc/head.jsp" %>
</TABLE><LINK href="image/right.css" type=text/css rel=stylesheet>
<TABLE height=28 cellSpacing=3 cellPadding=0 width=776 align=center
       background="" border=0>
    <TBODY>
    <TR vAlign=bottom>
        <TD>&nbsp;&nbsp;<A class=nav
                           href="http://localhost:8080/company/index.asp">首页</A><FONT class=nav> &gt;
        </FONT><A class=nav
                  href="http://localhost:8080/company/qyjz.asp">企业建站</A></TD></TR></TBODY></TABLE>
<TABLE height=1 cellSpacing=0 cellPadding=0 width=776 align=center
       bgColor=#cccccc border=0>
    <TBODY>
    <TR>
        <TD></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
    <TBODY>
    <TR>
        <TD vAlign=top width=195 background="" bgColor=#ffffff height=186><LINK
                href="image/css.css" type=text/css rel=stylesheet>
            <TABLE cellSpacing=0 cellPadding=0 width=193 border=0>
                <TBODY>
                <TR>
                    <TD vAlign=center align=middle><A
                            href="http://localhost:8080/company/showNewsList.jsp"><IMG height=25
                                                                                       src="image/cg1_r1_c2.jpg" width=175 border=0></A></TD></TR>
                <TR>
                    <TD vAlign=center align=middle><A
                            href="http://localhost:8080/company/showProductList.jsp"><IMG
                            height=25 src="image/cg1_r2_c2.jpg" width=175
                            border=0></A></TD></TR>
                <TR>
                    <TD vAlign=center align=middle><A
                            href="http://localhost:8080/company/after.jsp"><IMG height=25
                                                                                src="image/cg1_r4_c2.jpg" width=175 border=0></A></TD></TR>
                <TR>
                    <TD vAlign=center align=middle><A
                            href="http://localhost:8080/company/about.jsp"><IMG height=25
                                                                                src="image/cg1_r6_c2.jpg" width=175 border=0></A></TD></TR>
                <TR height=1>
                    <TD vAlign=center align=middle>&nbsp;</TD></TR>
                <TR>
                    <TD>
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                            <TBODY>
                            <TR>
                                <TD colSpan=2><IMG height=28 src="image/cg1_r10_c1.jpg"
                                                   width=188></TD></TR>
                            <TR>
                                <TD width=33><IMG height=28 src="image/cg5_1.jpg"
                                                  width=21></TD>
                                <TD class=d06 width=158>业务专线:010-88888888</TD></TR>
                            <TR>
                                <TD width=33 colSpan=2><IMG src="image/tiao.jpg"></TD></TR>
                            <TR>
                                <TD width=33><IMG height=28 src="image/cg5_1.jpg"
                                                  width=21></TD>
                                <TD class=d06 width=158>售后服务:010-66666666</TD></TR>
                            <TR>
                                <TD width=33 colSpan=2><IMG src="image/tiao.jpg"></TD></TR>
                            <TR>
                                <TD width=33><IMG height=28 src="image/cg5_1.jpg"
                                                  width=21></TD>
                                <TD class=d06
                                    width=158>传&nbsp;&nbsp;&nbsp;&nbsp;真:010-12345678</TD></TR>
                            <TR>
                                <TD width=33 colSpan=2><IMG
                                        src="image/tiao.jpg"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
        <TD vAlign=top width=3 bgColor=#e8e8e8></TD>
        <TD vAlign=top bgColor=#ffffff height=300>
                  <c:if test="${not empty sessionScope.ermessage}">
                    <div id="login_msg">
                        <span class="icon-cancel-circle light_pink" ></span>
                        <span class="light_pink" > <h2>${sessionScope.ermessage }</h2></span>
                    </div>
                  </c:if>
                    <FORM name="form1" action="../login" method="post">
                        <TABLE borderColor=#ebebeb cellSpacing=0 cellPadding=0 width=399
                               align=center border=0>
                            <TBODY>
                            <TR>
                                <TD>&nbsp;</TD></TR>
                            <TR>
                                <TD>&nbsp;</TD></TR>
                            <TR>
                                <TD>&nbsp;</TD></TR>
                            <TR align=left>
                                <TD class=p16 bgColor=#eaf0fb colSpan=2 height=35>
                                    <DIV align=center><SPAN class=d6><STRONG>管 理 员 登 录
            </STRONG></SPAN></DIV></TD></TR>
                            <TR>
                                <TD class=d5 align=middle width=141 bgColor=#ebebeb
                                    height=45>您的帐号：</TD>
                                <TD align=left width=258 bgColor=#ebebeb><INPUT name=userName></TD></TR>
                            <TR></TR>
                            <TR>
                                <TD class=d5 align=middle bgColor=#ebebeb height=45>您的密码：</TD>
                                <TD borderColor=#ebebeb align=left bgColor=#ebebeb><INPUT
                                        type=password size=21 name=password></TD></TR>
                            <TR align=left>
                                <TD class=p16 align=right bgColor=#eaf0fb colSpan=2 height=35>
                                    <DIV align=right><SPAN
                                            class=d6><STRONG></STRONG></SPAN>&nbsp;</DIV></TD></TR>
                            <TR>
                                <TD vAlign=bottom colSpan=2 height=60>
                                    <DIV align=center><INPUT class=d6 type=submit value="登  录" name=submit>
                                        &nbsp;&nbsp;&nbsp;&nbsp; <INPUT class=d6 type=reset value="重  置" name=reset></DIV></TD></TR>
                            <TR></TR></TBODY></TABLE></FORM>
        </TD></TR></TBODY></TABLE>
<LINK href="image/css.css" type=text/css rel=stylesheet>
<STYLE type=text/css>BODY {
    MARGIN: 0px
}
</STYLE>

<TABLE cellSpacing=0 cellPadding=0 width=800 align=center border=0>
    <TBODY>
    <TR>
        <TD align=middle width=800 background=image/d_r11_15.jpg
            height=29></TD></TR></TBODY></TABLE></BODY></HTML>

