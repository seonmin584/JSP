<%@ page language="java" contentType="text/html; charset=
	utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Form Processing</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2>회원 가입</h2>
			<form action="form_process.jsp" name="member" method="post">
				<p>
					아이디 : <input type="text" name="id"> <input type="reset"
						value="아이디 중복 검사">
				<p>
					이메일 : <input type="text" name="email">@<select name="gmail">
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.com">daum.com</option>
						<option value="net.com">net.com</option>
					</select>
				<p>
					비밀번호 : <input type="password" name="password">
				<p>
					이름 : <input type="text" name="name">
				<p>
					연락처 : <select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> - <input type="text" maxlength="4" size="4 name="phone2">
					- <input type="text" maxlength="4" size="4" name="phone3">
				<p>
					<select name="city" size="3">
						<option value="서울시">서울특별시</option>
						<option value="경기도">경기도</option>
						<option value="인천시">인천광역시</option>
						<option value="충청도">충청도</option>
						<option value="전라도">전라도</option>
						<option value="경상도">경상도</option>
					</select> <input type="text" name="address">
				<p>
					성별 : <input type="radio" name="sex" value="남성" checked> 남성
					<input type="radio" name="sex" value="여성">여성
				<p>
					취미 : 독서<input type="checkbox" name="hobby1" checked> 운동<input
						type="checkbox" name="hobby2"> 영화<input type="checkbox"
						name="hobby3">
				<p>
					<input type="submit" value="가입하기"><input type="reset"
						value="다시 쓰기">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>