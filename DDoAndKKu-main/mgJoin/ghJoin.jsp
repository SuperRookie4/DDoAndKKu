<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<form action="ghJoinReg.jsp" method="get">
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
			<td>이름</td>
			<td><input type="text" name="pname"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="birth"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email"/></td>
		</tr>
		<tr>
			<td>연락처</td>
			<td>
			<input type="number" name="phone"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="가입"/> 
			</td>
		</tr>
	</table>
</form>
</body>
</html>