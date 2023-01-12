<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 태그 연습 : 반복구문</title>
</head>
<body>
<h3>for Each 태그를 이용하여 List 객체 출력하기</h3>

<c:set var ="arr" value = "<%=new int[]{10,20,30,40,50} %>" />
<h3>배열 객체의 요소 출력</h3>
<c:forEach var="s" items="${arr}" varStatus="stat">
	arr[${stat.index}] = ${s}<br>
</c:forEach>
<h4> 배열 객체의 두번째 요소부터 세번째요소까지 출력</h4>
<c:forEach var="s" items="${arr}" varStatus="stat" begin="0" end="2">
	arr[${stat.index}]=${s}<br>
</c:forEach>

<h4>배열 객체의 짝수 첨자 기준으로 출력하기</h4>
<c:forEach var="s" items="${arr}" varStatus="stat" step="2">
	arr[${stat.index}] =${s}<br>	
</c:forEach>

<h4>배열 객체의 홀수 첨자 기준으로 출력하기</h4>
<c:forEach var="s" items="${arr}" varStatus="stat" step="2" begin="1">
	arr[${stat.index}]=${s}<br>	
</c:forEach>

</body>
</html>