<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body> <!-- 선언 해야함 -->
	<c:if test="${isJoin eq true }">
		<script>
			alert("회원가입을 축하합니다!")
			location.href="main.do";
		</script>
	</c:if>
	<c:if test="${isJoin eq false }">
		<script>
			alert("아이디가 중복 됩니다!");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>