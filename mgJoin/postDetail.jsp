<%@page import="mgJoin_p.BoardDAO"%>
<%@page import="mgJoin_p.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>postDetail </title>
<%
	BoardDTO dto = new BoardDAO().detail(2);

%>
<c:set var="dto" value="<%=dto %>"/>
</head>
<body>
<form action="">
	<table border="" width="1000px" align="center">
		<tr align="center">
			<td width="10%">제목</td>
			<td width="90%"> 
				${dto.postTitle }
			</td>
		</tr>
		<tr align="center">
			<td width="10%">작성자</td>
			<td width="90%">
				${dto.pname }
			</td>
		</tr>
		<tr align="center">
			<td width="10%">작성된 날짜</td>
			<td width="90%">
				${dto.postDay }
			</td>
		</tr>
		<tr align="center">
			<td width="10%">첨부파일</td>
			<td width="90%">
				${dto.postFile }
			</td>
		</tr>
		<tr align="center">
			<td width="10%">내용</td>
			<td width="90%" height="500px">
				${dto.contents }
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<a href="board.jsp">목록으로</a>
				<a href="modify.jsp">수정</a>
				<a href="delete.jsp">삭제</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>