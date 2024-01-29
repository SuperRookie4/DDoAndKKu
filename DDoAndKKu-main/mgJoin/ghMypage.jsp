<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h1>마이페이지</h1>
<form action="" method="post">
	<table border="">
		<tr>
			<td>아이디</td>
			<td>${param.pid }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${param.pw }</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${param.pname }</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>${param.brith }</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${param.email }</td>
		</tr>
		<tr>
			<td>연락처</td>
			<td>${param.phone }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" onclick="location.href='ghJoinReg.jsp'" />
				<input type="button" value="삭제" onclick="location.href='ghJoinReg.jsp'" />  
			</td>
		</tr>
	</table>
</form>
</body>
</html>