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
		alert('결제가 성공적으로 완료 되었습니다')
		location.href = "${root}user/order_list"
	</script>
</body>
</html>