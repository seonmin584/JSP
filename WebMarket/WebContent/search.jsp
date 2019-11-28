<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String p_name = request.getParameter("p_name");

	session.setAttribute("sessionPname", p_name);

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select p_id from product where p_name=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, p_name);

	rs = pstmt.executeQuery();

	if (rs.next()) {
%>
<script>
	location.href="http://localhost:8080/WebMarket/product.jsp?p_name=<%=p_name%>";
</script>
<%
	}
%>
<script>
	alert("<%=p_name%>(이)란 상품이 존재하지않습니다.");
	location.href = "./welcome.jsp";
</script>