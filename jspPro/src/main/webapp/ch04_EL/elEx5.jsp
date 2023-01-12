<%@page import="member.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% Member m = new Member();
	m.setName ("홍길동");
	m.setPass ("1234");
	request.setAttribute ("member", m);//object도 넣을 수 있음
%>
<body>
	${member.name}<br>
	${member.pass}
</body>
</html>