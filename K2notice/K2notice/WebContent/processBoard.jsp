<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	PreparedStatement pstmt = null;

	String sql = "insert into board values(board_seq.nextval,?,?,?,SYSDATE)";

	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("http://localhost:8080/K2notice/Main.jsp");
%>
