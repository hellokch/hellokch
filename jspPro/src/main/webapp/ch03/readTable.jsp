<%@page import="java.sql.*"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
//1. jar파일 build path 연결 WEB-INF/lib/obdbc11.jar
	Class.forName("oracle.jdbc.OracleDriver");//2
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kic","1111");//(url,username,password) database연결
	PreparedStatement pstmt = conn.prepareStatement("select * from emp"); //4. sql전달, result 받는다
	ResultSet rs = pstmt.executeQuery();
	ResultSetMetaData rsmt = rs.getMetaData();
%>
<table class ="w3-table-all w3-bordered w3-striped w3-border test w3-hoverable" style="color:#000">
<tbody><tr class="w3-green">
<%for(int i=1; i <=rsmt.getColumnCount();i++){ %>
<th><%=rsmt.getColumnName(i)%></th>
<% }%>
</tr>
<%while(rs.next()){
	%><tr><%
	for(int i=1;i <= rsmt.getColumnCount();i++){%>
<td> <%=rs.getString(i) %></td>
	<%}%>
</tr>
<%}%> 
</tbody></table>


</body>
</html>