<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="../image/right.css" rel="stylesheet" type="text/css" />
</head>
<body>

<form action="../../login" method="post" name="form1">
<table width="399" border="0" align="center" cellpadding="0"
	cellspacing="0" bordercolor="#EBEBEB">

	<c:choose>
		<c:when test="${empty sessionScope.isLoginUser}">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr align="left">
				<td height="35" colspan="2" bgcolor="#EAF0FB" class="p16">
					<div align="center"><span class="d6"><strong>会员登陆 </strong></span></div>
				</td>
			</tr>

			<tr>
				<td width="141" height="45" align="center" bgcolor="#EBEBEB"
					class="d5">您的账号:</td>
				<td width="265" align="left" bgcolor="#EBEBEB"><input
						name="userName" type="text" /></td>
			</tr>
			<tr>

			</tr>
			<tr>
				<td height="45" align="center" bgcolor="#EBEBEB" class="d5">
					您的密码:</td>
				<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB"><input
						name="password" type="password" size="20" /></td>
			</tr>
			<tr align="left">
				<td height="35" colspan="2" align="right" bgcolor="#EAF0FB"
					class="p16">
					<div align="right"><span class="d6"><strong><a
							href="register.jsp" class="dong02">我要注册</a>&nbsp;</strong></span></div>
				</td>
			</tr>
			<tr>
				<td height="60" colspan="2" valign="bottom">
					<div align="center"><input name="submit" type="submit"
											   class="d6" value="登录" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
							name="reset" type="reset" class="d6" value="重置" /></div>
				</td>
			</tr>
			<tr>

			</tr>
		</c:when>
		<c:otherwise>
				<c:choose>
					<c:when test="${not empty sessionScope.ermessage}">
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="left">
							<td height="35" colspan="2" bgcolor="#EAF0FB" class="p16">
								<div align="center"><span class="d6"><strong>会员登陆 </strong></span></div>
							</td>
						</tr>
						<tr>
							<td>${sessionScope.ermessage}</td>
						</tr>
						<tr>
							<td width="141" height="45" align="center" bgcolor="#EBEBEB"
								class="d5">您的账号:</td>
							<td width="265" align="left" bgcolor="#EBEBEB"><input
									name="userName" type="text" /></td>
						</tr>
						<tr>

						</tr>
						<tr>
							<td height="45" align="center" bgcolor="#EBEBEB" class="d5">
								您的密码:</td>
							<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB"><input
									name="password" type="password" size="20" /></td>
						</tr>
						<tr align="left">
							<td height="35" colspan="2" align="right" bgcolor="#EAF0FB"
								class="p16">
								<div align="right"><span class="d6"><strong><a
										href="register.jsp" class="dong02">我要注册</a>&nbsp;</strong></span></div>
							</td>
						</tr>
						<tr>
							<td height="60" colspan="2" valign="bottom">
								<div align="center"><input name="submit" type="submit"
														   class="d6" value="登录" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
										name="reset" type="reset" class="d6" value="重置" /></div>
							</td>
						</tr>
						<tr>

						</tr>
					</c:when>
					<c:otherwise>
						<c:redirect url="../../index.jsp">
							<c:param name="username" value="${sessionScope.isLoginUser}"></c:param>
						</c:redirect>
					</c:otherwise>
				</c:choose>
		</c:otherwise>
	</c:choose>

</table>
</form>

</body>

</html>
