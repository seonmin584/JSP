<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%String id = request.getParameter("id");%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/js/jquery-3.5.1.min.js" />
<title>회원 가입</title>
<script type="text/javascript">
	function idcheck() {
		window.name = "parentForm";
		var id = document.querySelector('#id').value;
		window.open("IdCheckForm.jsp?id="+id,
				"chkForm", "width=500, height=300, resizable=no, scrollbars = no");
	}
	function pwd() {
		var pwd1=$("#pwd1").val();
		var pwd2=$("#pwd2").val();
		/* console.log(pwd1,pwd2); */
		if(pwd1==pwd2) {
			alert("비밀번호가 일치합니다.")
		} else {
			alert("비밀번호가 일치하지 않습니다.");
		}
	}
</script>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" action="./processAddMember.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text"  name="id" id="id" class="form-control" placeholder="아이디">
					<input type="button" value="중복 확인" onclick="idcheck()">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="pwd1" name="password" class="form-control" placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호 한번더!</label>
				<div class="col-sm-3">
					<input type="password" id="pwd2" class="form-control" placeholder="비밀번호 한번더!">
					<input type="button" value="비밀번호 확인" onclick="pwd()">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" placeholder="이름">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" id="sum" class="btn btn-primary" value=등록>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
