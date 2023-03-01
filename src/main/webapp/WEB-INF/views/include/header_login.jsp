<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>사용자</title>
<c:import url="/WEB-INF/views/include/head_setting.jsp" />
</head>
<body>
	<!-- 우측 상단 네비게이터 -->
	<div class="flex-container flex-end">
		<c:choose>
			<c:when	test="${loginUserBean.userLogin == true }">
				<div class="flex-item">${loginUserBean.userName}님 어서오세요</div>
         &nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }user/logout">로그아웃</a>
				</div>
				<!--          &nbsp;&nbsp; -->
				<!--          <div class="flex-item "> -->
				<%--                <a href="${root }user/myPage">마이페이지</a> --%>
				<!--             </div> -->
         &nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }cart/list">장바구니</a>
				</div>
         &nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }user/modify">정보수정</a>
				</div>
				&nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }user/delete">회원탈퇴</a>
				</div>
				&nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }support/list">고객센터</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="flex-item ">
					<a href="${root }user/login">로그인</a>
				</div>
				&nbsp;&nbsp;
         <div class="flex-item ">
					<a href="${root }user/join">회원가입</a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- 우측 상단 네비게이터 끝 -->
	<!-- 로고 -->
	<div class="container">
		<div class="flex-logo">
			<a href="${root }main"><img src="../resources/image/LOGO.png"
				width="60" , height="70" alt=""></a> <a id="logo"
				href="${root }main">eZen Computer</a>
		</div>
	</div>
	<!-- 로고 끝-->
</body>
</html>