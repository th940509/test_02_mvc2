<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<div align="center">
		<c:if test="${id ne null }">
		<a href="Update.do">입사지원정보수정</a> <br><br>
		<a href="Logout.do">로그아웃</a> <br><br>
		</c:if>
		
		<c:if test="${id eq null }">
			<a href="Join.do">회원가입</a> <br><br>  <!-- 1번 -->
			<a href="Login.do">로그인</a> <br><br>  <!-- 2번 -->
		</c:if>
	</div>
	
	<br><br>
	<hr>
	<br><br>
	
	<div align="center">
		<a href="Apply.do"><img alt="입사지원하기" src="img/applyonline.png"></a>
	</div>
</body>
</html>