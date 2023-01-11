<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="member.Member"%>
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
Member member = new Member();
member.setId(request.getParameter("id"));
member.setPass(request.getParameter("pass"));
member.setName(request.getParameter("name"));
member.setGender(Integer.parseInt(request.getParameter("gender")));
member.setTel(request.getParameter("tel"));
member.setEmail(request.getParameter("email"));

Class.forName("oracle.jdbc.OracleDriver");//2
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kic","1111");//(url,username,password) database연결
PreparedStatement pstmt = conn.prepareStatement("insert into member values (?,?,?,?,?,?,?)"); //4. sql전달, result 받는다

pstmt.setString(1, member.getId());
pstmt.setString(2, member.getPass());
pstmt.setString(3, member.getName());
pstmt.setInt(4, member.getGender());
pstmt.setString(5, member.getTel());
pstmt.setString(6, member.getEmail());
pstmt.setString(7, "");

int count = pstmt.executeUpdate(); //insert 갯수



%><%=count %> 저장 되었습니다
</body>
</html>