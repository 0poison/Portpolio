<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 완료</title>
<c:import url="/WEB-INF/views/include/header_login.jsp" />
</head>
<body>
	<script>
		function Logout() {
			sessionStorage.clear();
		}
		alert('탈퇴가 완료 되었습니다')
		location.href = '${root}user/logout'
	</script>
</body>
</html>