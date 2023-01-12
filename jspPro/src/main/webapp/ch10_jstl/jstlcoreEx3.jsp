<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 태그 예제 : 반복구문</title>
</head>
<body>

<h3>for Each 태그를 이용하여 List 객체 출력하기</h3>
 <%
List<Integer> list = new ArrayList<Integer>();
for(int i = 1; i <10; i++){
	list.add(i*10);}
request.setAttribute("list", list);
%>
<c:forEach var="i" items="${list}">
	${i} &nbsp;&nbsp;&nbsp;
</c:forEach>

<c:forEach var="i" items="${list}" varStatus="stat">
	<c:if test="${stat.index == 0 }">
		<h4>for Each 태그의 varStatus 속성연습</h4>
		</c:if>
	${stat.count}-${stat.index }:${i }<br>
</c:forEach>

<%
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("name", "홍길동");
	map.put("today", new Date());
	map.put("age", 20);
	pageContext.setAttribute("map",map);
%>
<h3>forEach 태그를 이용하여 Map객체 출력</h3>
<c:forEach var="m" items="${map}" varStatus="stat">
${stat.count}:${m.key}=${m.value}<br>
</c:forEach>
<h3>EL을 이용하여 Map객체 출력하기</h3>
name = ${map.name}
<br> today = ${map.today}
<br> age = ${map.age}
<br>





</body>
</html>