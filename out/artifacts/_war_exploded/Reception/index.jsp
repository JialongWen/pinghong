<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0030)http://localhost:8080/company/ -->
<HTML>
<HEAD><TITLE>品红公司</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=gb2312">
    <LINK href="image/css.css" type=text/css rel=stylesheet>
    <STYLE type=text/css>BODY {
        MARGIN: 0px
    }
    </STYLE>

    <META content="MSHTML 6.00.2900.5726" name=GENERATOR>
    <script src="https://code.jquery.com/jquery-1.10.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.readyState==4 && xmlhttp.status==200){
                    var productlist = JSON.parse(xmlhttp.responseText);
                    $.each(productlist,function(index,product){
                        var img = $("<IMG height=107 src='"+"../"+ product.picture_path +"' width=\"100%\" align=middleborder=0>")
                        $("div#demo1").append(img);
                    });
                };
            }

            xmlhttp.open("GET","../indexAdmin",true);
            xmlhttp.send();
        });
    </script>
</HEAD>
<BODY>
<SCRIPT type=text/javascript>

    function openChat() {
        alert("打开");
        window.open("chat/index.jsp", "", "left=250   top=200   width=500   height=400");
    }
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <TBODY>
    <TR>
        <TD background=image/d.jpg height=3></TD>
    </TR>
    </TBODY>
</TABLE>
<%@include file="inc/Table2.jsp" %>
<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <TBODY>
    <TR>
        <TD background=image/d.jpg height=3></TD>
    </TR>
    </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
    <%@ include file="inc/head.jsp" %>
    <TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
        <TBODY>
        <TR>
            <TD background=image/d.jpg height=3></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=799 align=center border=0>
        <TBODY>
        <TR>
            <TD vAlign=top>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY id="newsTbody">
                    <TR>
                        <TD width=352>
                            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                <TBODY>
                                <TR>
                                    <TD background=image/d02.jpg><IMG height=35 src="image/d_r7_c1.jpg" width=101></TD>
                                    <TD align=right background=image/d02.jpg><IMG height=35 src="image/d_r7_c14.jpg"
                                                                                  width=94></TD>
                                </TR>
                                <TR>
                                    <TD colSpan=2><IMG height=1 src="image/d03.jpg" width=352></TD>
                                </TR>
                                <TR>
                                    <TD align=right colSpan=2><A href="http://localhost:8080/company/#"><IMG height=33
                                                                                                             src="image/d_r11_c15.jpg"
                                                                                                             width=51
                                                                                                             border=0></A>
                                    </TD>
                                </TR>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr id="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                <tr class="i01">
                                    <td> &nbsp;</td>
                                </tr>
                                </TBODY>
                            </TABLE>
                        </TD>
                        <TD vAlign=top align=right>
                            <TABLE cellSpacing=0 cellPadding=0 width=268 border=0>
                                <TBODY>
                                <TR>
                                    <TD><A
                                            href="http://localhost:8080/company/showProductList.jsp"><IMG
                                            height=63 src="image/d_r11_5_r1_c1.jpg" width=268
                                            border=0></A></TD>
                                </TR>
                                <TR>
                                    <TD><A
                                            href="http://localhost:8080/company/showProductList.jsp"><IMG
                                            height=59 src="image/d_r11_5_r3_c1.jpg" width=268
                                            border=0></A></TD>
                                </TR>
                                <TR>
                                    <TD><A
                                            href="http://localhost:8080/company/showProductList.jsp"><IMG
                                            height=61 src="image/d_r11_5_r4_c1.jpg" width=268
                                            border=0></A></TD>
                                </TR>
                                <TR>
                                    <TD><A
                                            href="http://localhost:8080/company/showProductList.jsp"><IMG
                                            height=64 src="image/d_r11_5_r5_c1.jpg" width=268
                                            border=0></A></TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                        <TD background=image/d_r11_8.jpg><IMG height=27
                                                              src="image/d_r13_c1.jpg" width=160></TD>
                        <TD align=right background=image/d_r11_8.jpg><A
                                href="http://localhost:8080/company/#"><IMG height=27
                                                                            src="image/d_r13_c21.jpg" width=66
                                                                            border=0></A></TD>
                    </TR>
                    </TBODY>
                </TABLE>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c1.jpg" width=143
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c8.jpg" width=142
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c16.jpg" width=141
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c22.jpg" width=142
                                border=0></A></TD>
                    </TR>
                    <TR>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c2.jpg" width=143
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c81.jpg" width=142
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c116.jpg" width=141
                                border=0></A></TD>
                        <TD align=middle width="25%"><A
                                href="showProductList.jsp"><IMG
                                height=112 src="image/d_r11_10_r1_c221.jpg" width=142
                                border=0></A></TD>
                    </TR>
                    </TBODY>
                </TABLE>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                        <TD width="25%" background=image/d_r11_11_r1_c15.jpg><IMG
                                height=27 src="image/d_r11_11_r1_c1.jpg" width=185></TD>
                        <TD width="25%" background=image/d_r11_11_r1_c15.jpg>&nbsp;</TD>
                        <TD width="25%" background=image/d_r11_11_r1_c15.jpg><IMG
                                height=27 src="image/d_r11_11_r1_c21.jpg" width=160></TD>
                        <TD align=right width="25%"
                            background=image/d_r11_11_r1_c15.jpg><A
                                href="http://localhost:8080/company/#"><IMG height=27
                                                                            src="image/d_r11_11_r1_c30.jpg" width=63
                                                                            border=0></A></TD>
                    </TR>
                    <TR>
                        <TD width="50%" bgColor=#fcfcfc colSpan=2>
                            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                <TBODY>
                                <TR>
                                    <TD width=28 height=29><IMG height=32
                                                                src="image/d_r11_12_r1_c1.jpg" width=28></TD>
                                    <TD class=d06 style="FONT-WEIGHT: bold" align=middle
                                        width=100>&nbsp;业务专线：
                                    </TD>
                                    <TD class=d06 style="FONT-WEIGHT: bold">010-88888888</TD>
                                </TR>
                                <TR>
                                    <TD width=28 height=29><IMG height=32
                                                                src="image/d_r11_12_r1_c1.jpg" width=28></TD>
                                    <TD class=d06 align=middle width=100>&nbsp;<SPAN
                                            style="FONT-WEIGHT: bold">售后服务：</SPAN></TD>
                                    <TD class=d06 style="FONT-WEIGHT: bold">010-66666666</TD>
                                </TR>
                                <TR>
                                    <TD width=28 height=29><IMG height=32
                                                                src="image/d_r11_12_r1_c1.jpg" width=28></TD>
                                    <TD class=bold align=middle width=100>&nbsp;<SPAN class=d06
                                                                                      style="FONT-WEIGHT: bold">传&nbsp;&nbsp;&nbsp;&nbsp;真：</SPAN>
                                    </TD>
                                    <TD class=d06
                                        style="FONT-WEIGHT: bold">010-88888888
                                    </TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                        <TD width="50%" bgColor=#fcfcfc colSpan=3>
                            <TABLE cellSpacing=0 cellPadding=0 width=287 align=center
                                   border=0>
                                <TBODY>
                                <TR>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/f1.gif" width=90></TD>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/f2.gif" width=88></TD>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/f3.gif" width=90></TD>
                                </TR>
                                <TR>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/d_r11_13_r6_c13.jpg" width=90>
                                    </TD>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/d_r11_13_r1_c1.jpg" width=90>
                                    </TD>
                                    <TD align=middle width=97 height=47><IMG height=33
                                                                             src="image/d_r11_13_r1_c7.jpg"
                                                                             width=88></TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD vAlign=top width=175 bgColor=#fcfcfc>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                        <TD vAlign=top><A href="http://localhost:8080/company/cgal.asp"><IMG
                                height=42 src="image/d_r11_6.jpg" width=175
                                border=0></A></TD>
                    </TR>
                    <TR>
                        <TD height=590><!-- 指向链接图片url -->
                            <DIV id=demo
                                 style="BACKGROUND: #214984; OVERFLOW: hidden; WIDTH: 180px; COLOR: #ffffff; HEIGHT: 600px">
                                <DIV id=demo1><!-- 定义图片 -->
                                    <IMG height=107 src="image/d_r11_10_r1_c1.jpg" width="100%" align=middleborder=0>
                                </DIV>
                                <DIV id=demo2></DIV>
                            </DIV>
                            <SCRIPT>
                                var speed = 30;
                                demo2.innerHTML = demo1.innerHTML;
                                demo.scrollTop = demo.scrollHeight;

                                function Marquee() {
                                    if (demo1.offsetTop - demo.scrollTop >= 0)
                                        demo.scrollTop += demo2.offsetHeight;
                                    else {
                                        demo.scrollTop--;
                                    }
                                }

                                var MyMar = setInterval(Marquee, speed);
                                demo.onmouseover = function () {
                                    clearInterval(MyMar)
                                }
                                demo.onmouseout = function () {
                                    MyMar = setInterval(Marquee, speed);
                                }
                            </SCRIPT>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
        </TR>
        </TBODY>
    </TABLE>
    <LINK
            href="image/css.css" type=text/css rel=stylesheet>
    <STYLE type=text/css>BODY {
        MARGIN: 0px
    }
    </STYLE>

    <TABLE cellSpacing=0 cellPadding=0 width=800 align=center border=0>
        <TBODY>
        <TR>
            <TD align=middle width=800 background=image/d_r11_15.jpg
                height=29></TD>
        </TR>
        </TBODY>
    </TABLE>

</BODY>
</HTML>

