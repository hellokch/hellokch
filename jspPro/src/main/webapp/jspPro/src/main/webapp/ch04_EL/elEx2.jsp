<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String tel = "010-111-9999";
%>
<h3>JSP의 EL을 이용하여 파라미터와 속성값 출력</h3>
PageContext test 속성값 : ${test}<br>
session test 속성값 : ${sessionScope.test }<br>
today 속성값 : ${today }<br>
name 파라미터값 : ${param.name }<br>
tel 변수값 : EL로 표현 불가<br>
tel 속성값 : ${tel }<br>
no Attribute 속성값 : ${noAttribute }<br>

<h3>JSP의 스크립트를 이용하여 파라미터와 속성값 출력</h3>
PageContext test 속성값 : <%=pageContext.getAttribute("test") %><br>
session test 속성값 : <%=session.getAttribute("test") %><br>
today 속성값 : <%=session.getAttribute("today") %><br>
name 파라미터값 : <%=request.getParameter("name") %><br>
tel 변수값 : <%=tel%><br>
tel 속성값 : <%=pageContext.getAttribute("tel") %><br>
no Attribute 속성값 : <%=pageContext.getAttribute("noAttribute") %><br>


</body>
</html>