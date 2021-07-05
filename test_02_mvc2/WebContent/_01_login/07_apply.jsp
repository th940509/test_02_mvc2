<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>자바 개발자 지원서</h2>
		<p>JAVA, JSP, SPRING에 대한 기술적 이해와 경험이 있는 분을 찾습니다!</p>
		<hr>
		<form action="ApplyAction.do" method="post"> 
			<h4>개인정보</h4>
			<label>이름 : &nbsp</label><input type="text" id="name" name="name" value= ${mdto.name }>
			<br>
			<label>연락처 : &nbsp</label><input type="text" id="tel" name="tel" value= ${mdto.tel }>
			<br>
			<label>이메일  : &nbsp</label><input type="email" id="email" name="email" value= ${mdto.email }>
			<hr>
			<h4>지원분야</h4>
			<input type="radio" id="field" name="field" value="publishing">웹 퍼블리싱
			<input type="radio" id="field" name="field" value="frontend">프론트앤드
			<input type="radio" id="field" name="field" value="application">웹 어플리케이션 개발
			<hr>
			<h4>기술능력</h4>
			<input type="checkbox" id="skill" name="skill" value="html">HTML
			<input type="checkbox" id="skill" name="skill" value="css">CSS
			<input type="checkbox" id="skill" name="skill" value="javascript">JavaScript
			<input type="checkbox" id="skill" name="skill" value="java">Java
			<input type="checkbox" id="skill" name="skill" value="jsp">JSP
			<input type="checkbox" id="skill" name="skill" value="spring">Spring
			<hr>
			<h4>전공분야</h4>
			<label>학과</label><select id="major" name="major">
				<option value="conputer"> 컴퓨터 공학과 </option>
				<option value="elec"> 전기전자공학과 </option>
				<option value="mechanic"> 기계공학과 </option>
				<option value="indust"> 산업 공학과 </option>
			</select>
			<br>
			<hr>
			<div>
				<input type="submit" value="접수하기">
				<input type="reset" value="다시쓰기">
			</div>
		</form>
	</div>
</body>
</html>