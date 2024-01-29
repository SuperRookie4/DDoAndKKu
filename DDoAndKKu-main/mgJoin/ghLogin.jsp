<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<form action="ghloginReg.jsp" method="get">
	<table border="">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="pid" maxlength="20"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" maxlength="20"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인"/>
				<input type="button" value="회원가입" onclick="location.href='ghJoin.jsp'" /> 
			</td>
		</tr>
	</table>
</form>
</body>
</html>