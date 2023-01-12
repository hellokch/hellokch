<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("UTF-8"); %>


이름:${param.name}<br>
나이:${param.age}<br>
성별:${param.gender == 1?"남":"여"}<br>
취미:${param.hobby}<br>
년도:${param.year}<br>
test:${param.test}

<h2>요청된파라미터에 저장된 모든 값 조회하기</h2>
<h3>취미 : </h3>
<c:forEach var ="v" items="${paramValues.hobby}">
	${v},
</c:forEach>

<table>
	<tr><th>파라미터 이름 (Enumeration)</th><th>파라미터값</th></tr>
	
	<c:forEach var ="v" items="${paramValues}">
	<tr><td>${v.key}</td>
	
	<td>${v.value}</td></tr>
	</c:forEach>
	

</table>





</body>
</html>