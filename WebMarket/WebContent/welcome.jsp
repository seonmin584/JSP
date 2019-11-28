<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<title>Welcome</title>
</head>
<body>
	<style>
btn {
	text-align: center;
}

.card {
	padding: 2px 30px;
}

.column {
	float: left;
	width: 25%;
	margin: 20px;
}

.Image {
	width: 100%;
	height: 80%;
	box-shadow: 0px 0px 10px 2px grey;
	background-image: url(resources/Image/bingo.jpg);
}

h1 {
	text-align: center;
	text-shadow: 3px 2px grey;
}

h2 {
	transition: 0.7s;
}

h2:hover {
	color: Aqua;
}
</style>
	<%@ include file="Header.jsp"%>
	<%!String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";%>
	<div class="Image">
		<div class="container">
			<h1 style="color: fuchsia;"><%=greeting%></h1>
		</div>
	</div>
	<main role="main">
	<div class="row">
		<div class="container">
			<div class="column">
				<div class="card">
					<img src="./resources/Image/P1234.jpg"
						style="width: 100%; height: 325.5px">
					<h4>iPhone 6s</h4>
					<p>800,000원</p>
					<div class="btn">
						<a
							href="http://localhost:8080/WebMarket/product.jsp?p_name=iPhone 6s"
							class="btn btn-success">자세히 보기 &raquo;</a>
					</div>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<img src="./resources/Image/P1235.jpg"
						style="width: 100%; height: 325.5px">
					<h4>LG PC 그램</h4>
					<p>1,500,000원</p>
					<div class="btn">
						<a
							href="http://localhost:8080/WebMarket/product.jsp?p_name=LG PC gram"
							class="btn btn-success">자세히 보기 &raquo;</a>
					</div>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<img src="./resources/Image/P1236.jpg"
						style="width: 100%; height: 325.5px">
					<h4>GalaxyTabS</h4>
					<p>900,000원</p>
					<div class="btn">
						<a
							href="http://localhost:8080/WebMarket/product.jsp?p_name=GalaxyTabS"
							class="btn btn-success">자세히 보기 &raquo;</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h2>
				<%
					Date day = new java.util.Date();
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					if (hour / 12 == 0) {
						am_pm = "AM";
					} else {
						am_pm = "PM";
						hour = hour - 12;
					}
					String CT = hour + ":" + minute + ":" + second + " " + am_pm;
					out.println("현재 접속 시간은 : " + CT + "\n");
				%>
			</h2>
		</div>
		<hr>
	</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>