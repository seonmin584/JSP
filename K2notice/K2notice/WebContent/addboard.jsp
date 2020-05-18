<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="./dbconn.jsp"%>
<html>
<head>
<script
	src="https://cdn.ckeditor.com/ckeditor5/19.0.0/classic/ckeditor.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css">
<title>게시판 등록</title>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1>게시판 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="Board" action="./processBoard.jsp" method="post">
			<div class="form-group row">
				<label class="col-sm-1">작성자 :</label>
				<div class="col-sm-2">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-1">제 목 :</label>
				<div class="col-sm-2">
					<input type="text" name="title" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">내용 :</label>
			</div>
			<textarea name="content" id="editor"></textarea>
			<script>
   			 ClassicEditor
    	    .create( document.querySelector( '#editor' ) )
        	.catch( error => {
			console.error( error );
        });
    </script>
			<input type="submit" id="sum" class="btn btn-primary" value="저장">
		</form>
	</div>
</body>
</html>