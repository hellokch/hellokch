<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-container">
<h2>회원가입</h2>
	<form class="w3-container" action="/jspPro/member/joinPro" method = "post">
		
		<table class="w3-table-all">
			
			<tr>
				<td rowspan="4" valign="bottom" width="100px" class="w3-border">
				<img src="" width="100" height="120" id="pic"><br> <font size="1">
					<a  class="w3-button w3-green" 
						href="">사진등록</a></font></td>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>

				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>

				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>

				<td>성별</td>
				<td><input type="radio" name="gender" checked  value="0">
					남 <input type="radio" name="gender" value="1">여</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td colspan="2"><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td colspan="2"><input type="text" name="email"></td>
			</tr>
			<tr  align="center">
			<td colspan="2">&nbsp;</td>
				<td >
				<input type="submit" value="회원가입"></td>
			</tr>
		</table>
	</form></div>
</body>
</html>