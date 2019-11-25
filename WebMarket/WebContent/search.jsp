<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String usersc = request.getParameter("search");

		if (usersc.equals("ㄴ")) {
			response.sendRedirect("http://localhost:8080/WebMarket/product.jsp?id=P1236");
		} else if (usersc.equals("설국열차") || usersc.equals("열차")) {
			response.sendRedirect("http://localhost:8080/WebMarket/product.jsp?id=P1234");
		} else {
			response.sendRedirect("http://localhost:8080/WebMarket/product.jsp?id=P1235");
		}
	%>
</body>
</html>

