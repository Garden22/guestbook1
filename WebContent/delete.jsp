<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("pw");
	
	GuestBookDao gbDao = new GuestBookDao();
	if (pw.equals(gbDao.findPW(no))) {
		gbDao.delete(no);
	} 
	
	response.sendRedirect("./addList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>