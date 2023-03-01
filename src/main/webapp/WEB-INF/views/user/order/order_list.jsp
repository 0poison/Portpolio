<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>주문 목록</title>
<!-- 헤더 -->
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>
	<h1>order_list.jsp(주문 내역)</h1>
	<div class="container"></div>
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>