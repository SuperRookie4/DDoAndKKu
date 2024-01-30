<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write </title>
<%
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String day = sdf.format(today);
%>
<style>

	textarea{
		resize: none; 
		border:none;
		
	}
	.text{
		width:100%;
		border:none;
	}

</style>
</head>
<body>
<form action="writesuccess.jsp?date=<%=day %>" method="post"> <!-- 보낼때 파라미터 값으로 오늘날짜 보내 -->
	<table border="" width="1000px" align="center">
		<tr align="center">
			<td width="10%">제목</td>
			<td width="90%">
				<input class="text" type="text" name="title">
			</td>
		</tr>
		<tr align="center">
			<td width="10%">닉네임</td>
			<td width="90%">
				<input class="text" type="text" name="pname"> <!-- 나중에 닉네임 받아와야 고정 -->
			</td>
		</tr>
		<tr align="center">
			<td width="10%">첨부파일</td>
			<td width="90%">
				<input type="file" value="첨부파일" name="file">
			</td>
		</tr>
		<tr align="center">
			<td width="10%">작성일</td>
			<td width="90%"><%=day %></td>
		</tr>
		<tr align="center">
			<td width="10%">내용</td>
			<td width="90%" height="500px">
				<textarea cols="110px" rows="31" name="contents"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4"  align="right">
				<input type="submit" value="등록">
			</td>
		</tr>
	</table>
</form>
</body>
</html>