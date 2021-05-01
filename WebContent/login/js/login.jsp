<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
	<link rel="stylesheet" href="../css/login.css" />
</head>

<body>
	<table id="wrap">
		<tr>
			<td id="title"><a>MEETU</a></td>
		</tr>
		
		<tr>
			<td>
				<select id="position">
					<option value="0" selected>학부생</option>
					<option value="1">교직원</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="text" id="id" placeholder="아이디" />
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="password" id="pwd" placeholder="패스워드" />
			</td>
		</tr>
		
		<tr>
			<td>
				<input type="submit" id="loginBtn" value="로그인" />
			</td>
		</tr>
		
		<tr>
			<td>
				<div id="account">계정을 잊으셨나요? <a id="link">아이디 찾기</a> 또는 <a id="link">비밀번호 찾기</a></div>
			</td>
		</tr>
		
		<tr>
			<td>
				<div>아직 회원이 아니신가요? <a id="link">회원가입</a></div>
			</td>
		</tr>
	</table>
</body>
</html>