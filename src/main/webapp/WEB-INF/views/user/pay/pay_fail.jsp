<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>결제 성공</title>
</head>
<body>
	<script>
		alert('결제에 실패 하였습니다')
		location.href = "${root}user/order_form"
	</script>
</body>
</html>