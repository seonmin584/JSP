<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
			<a href="addProduct.jsp" class="btn btn-info"
				style="margin-left: 1000px">상품 등록 &raquo;</a>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>

			<div class="col-md-4">
				<a
					href="http://localhost:8080/WebMarket/resources/Image/<%=rs.getString("p_fileName")%>"><img
					src="./resources/Image/<%=rs.getString("p_fileName")%>"
					style="width: 100%; height: 300px;"></a>
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p><%=rs.getString("p_UnitPrice")%>원 &raquo;
				<p>
					<a href="./product.jsp?p_name=<%=rs.getString("p_name")%>"
						class="bin btn-secondary" role="button"> 상세 정보 </a>
			</div>
			<%
				}
			%>
			<%
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>