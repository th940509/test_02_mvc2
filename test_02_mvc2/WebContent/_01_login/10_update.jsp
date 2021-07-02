<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	<div align="center">
		<c:choose>
			<c:when test="${isFirstApply eq false }">
				<h1>회원정보 수정</h1>
				<p>개인정보와 입사지원 내용을 확인해 주세요!</p>
				<hr>
				<form action="UpdateAction.do" method="post">
					<h3>개인정보</h3>
					<label for="id">아이디</label>
					<input type="text" id="id" name="id" value="${mdto.id }">
					<br>
					<label for="pw">패스워드</label>
					<input type="password" id="pw" name="pw" value="${mdto.pw }">
					<br>
					<label for="name">이름</label>
					<input type="text" id="name" name="name" value="${mdto.name }">
					<br>
					<label for="tel">연락처</label>
					<input type="text" id="tel" name ="tel" value="${mdto.tel }">
					<br>
					<label for="email">이메일</label>
					<input type="text" id="email" name="email" value="${mdto.email }">
					<h3>지원분야</h3>
					<label>
						<input type="radio" name="field" value="publishing"
							<c:if text="${mdto.field eq 'publishing' }">checked</c:if>> 웹 퍼블리싱
					</label>
					<label>
						<input type="radio" name="field" value="frontend"
							<c:if test="${mdto.field eq 'frontend' }">checked</c:if>> 프론트앤드
					</label>
					<label>
						<input type="radio" name="field" value="application"
							<c:if test="${mdto.field eq 'application' }">checked</c:if>>웹어플리케이션 개발
					</label>
					<h3>기술 능력</h3>
					<label>
						<input type="checkbox" name="skill" value="html"
							<c:if test="${html eq true }">checked</c:if>>HTML
					</label>
					<label>
						<input type="checkbox" name="skill" value="css"
							<c:if test="${css eq true }">checked</c:if>>CSS
					</label>
					<label>
						<input type="checkbox" name="skill" value="javascript"
							<c:if test="${javascript eq true }">checked</c:if>>JavaScript
					</label>
					<label>
						<input type="checkbox" name="skill" value="java"
							<c:if test="${java eq true }"checked</c:if>>Java
					</label>
					<label>
						<input type="checkbox" name="skill" value="jsp"
							<c:if test="${jsp eq true }">checked</c:if>>Jsp
					</label>
					<label>
						<input type="checkbox" name="skill" value="spring"
							<c:if test="${spring eq true }">checked</c:if>>Spring
					</label>
					<h3>전공분야</h3>
					<label for="major">학과</label>
					<select id="major" name="major">
						<option value="computer" <c:if test="${mdto.major eq 'computer' }">selected</c:if>>컴퓨터공학과</option>
						<option value="elec" <c:if test="${mdto.major eq 'elec' }">selected</c:if>>전기전자공학과</option>
						<option value="mechanic" <c:if test="${mdto.major eq 'mechanic' }">selected</c:if>>기계공학과</option>
						<option value="indust" <c:if test="${mdto.major eq 'indust' }">selected</c:if>>산업공학과</option>
					</select>
					<br><br>
					<div>
						<input type="submit" value="수정하기">
						<input type="reset" value="다시쓰기">
					</div>
				</form>
			</c:when>
			<c:otherwise>
				<script>
					alert("아직 입사지원을 하지 않으셨습니다!");
					history.go(-1);
				</script>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>