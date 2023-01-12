<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 태그 예제 : taglib 지시어 표시해야 한다.</title>
</head>
<body>
<h3>반복관련 태그 : forEach</h3>
<c:forEach var = "num" begin = "1" end="10" step="2">
${num}&nbsp;&nbsp;&nbsp;&nbsp;
</c:forEach>
<c:forEach var = "i" begin = "2" end="9">
	<h4>${i}단</h4>
		<c:forEach var="j" begin="2" end="9">
		${i} * ${j} = ${i*j}<br>
		</c:forEach>
</c:forEach>

<h3>1 부터 100까지의 합</h3>
<c:forEach var="i" begin="1" end ="100">
	<c:set var="sum" value="${sum+i}"/>
</c:forEach>



</body>
</html>