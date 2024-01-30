<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="mgJoin_p.BoardDTO"%>
<%@page import="mgJoin_p.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%

	BoardDTO dto = new BoardDTO();
 	dto.setPostTitle(request.getParameter("title"));
	dto.setPid(request.getParameter("pid"));
 	dto.setPname(request.getParameter("pname"));
	dto.setPostFile(request.getParameter("file"));
	dto.setPostDayStr(request.getParameter("date"));
	dto.setContents(request.getParameter("contents"));
 	
	int cnt = new BoardDAO().write(dto);
	//System.out.println(request.getParameter("date"));
%>
</head>
<body>
<script>
	alert("게시글이 등록되었습니다.")
	location.href="board.jsp"
</script>
</body>
</html>