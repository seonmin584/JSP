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
			<h2>ȸ�� ����</h2>
			<form action="form_process.jsp" name="member" method="post">
				<p>
					���̵� : <input type="text" name="id"> <input type="reset"
						value="���̵� �ߺ� �˻�">
				<p>
					�̸��� : <input type="text" name="email">@<select name="gmail">
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.com">daum.com</option>
						<option value="net.com">net.com</option>
					</select>
				<p>
					��й�ȣ : <input type="password" name="password">
				<p>
					�̸� : <input type="text" name="name">
				<p>
					����ó : <select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> - <input type="text" maxlength="4" size="4 name="phone2">
					- <input type="text" maxlength="4" size="4" name="phone3">
				<p>
					<select name="city" size="3">
						<option value="�����">����Ư����</option>
						<option value="��⵵">��⵵</option>
						<option value="��õ��">��õ������</option>
						<option value="��û��">��û��</option>
						<option value="����">����</option>
						<option value="���">���</option>
					</select> <input type="text" name="address">
				<p>
					���� : <input type="radio" name="sex" value="����" checked> ����
					<input type="radio" name="sex" value="����">����
				<p>
					��� : ����<input type="checkbox" name="hobby1" checked> �<input
						type="checkbox" name="hobby2"> ��ȭ<input type="checkbox"
						name="hobby3">
				<p>
					<input type="submit" value="�����ϱ�"><input type="reset"
						value="�ٽ� ����">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>