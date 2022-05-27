<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%@ page import="java.util.*" %>
<%
	GuestBookDao gbDao = new GuestBookDao();
	List<GuestBookVo> gList = gbDao.select();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록입니다</title>
</head>
<body>
	<form action="./add.jsp" method="post"><table border="1">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value=""></td>
			<td>비밀번호</td>
			<td><input type="text" name="password" value=""></td>
		</tr>
		<tr>
			<td colspan="4"><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<td><button type="submit">등록</button></td>
		</tr>
	</table></form><br>

	<% for (int i=0; i < gList.size(); i++) {%>
		<table border="1">
			<tr>
				<td><%=gList.get(i).getNo()%></td>
				<td><%=gList.get(i).getName()%></td>
				<td><%=gList.get(i).getRegDate()%></td>
				<td><a href="./deleteForm.jsp?no=<%=gList.get(i).getNo()%>">[삭제]</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=gList.get(i).getContent()%></td>
			</tr>
		</table><br>
	<%} %>	


</body>
</html>