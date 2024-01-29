<%@page import="mgJoin_p.JoinDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
	<%
		JoinDTO dto = new JoinDTO();
		dto.setPid(request.getParameter("pid"));
		dto.setPw(request.getParameter("pw"));
		dto.setPname(request.getParameter("pname"));
		dto.setBirth(request.getParameter("birth"));
		dto.setEmail(request.getParameter("email"));
		dto.setPhone(request.getParameter("phone"));
		
		System.out.println(dto.getPid());
	%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<script type="text/javascript">
	alert("회원가입 성공");
	location.href = "ghMypage.jsp?pid=<%=dto.getPid()%>&pw=<%=dto.getPw()%>&pname=<%=dto.getPname()%>&birth=<%=dto.getBirth()%>&email=<%=dto.getEmail()%>&phone=<%=dto.getPhone()%>";
</script>
</body>
</html>