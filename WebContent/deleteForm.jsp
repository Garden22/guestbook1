<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestBookDao gbDao = new GuestBookDao();
		
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="post">
		<input type="hidden" name="no" value=<%=no %>>
		<label for="pw">비밀번호</label>
		<input id="pw" type="password" name="pw" value="">
		<button type="submit">확인</button>
	</form>
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>