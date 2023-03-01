<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>문의 내역 작성</title>
<!-- 헤더 -->
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>
	<div class="container">
		<form action="${root }support/write_pro" method="post">
			<div class="mb-3">
				<label for="supportTitle" class="form-label">제목</label> <input
					type="text" class="form-control" name="supportTitle"
					id="supportTitle" placeholder="제목을 입력해주세요">
			</div>
			<div class="mb-3">
				<label for="supportTheme" class="form-label">종류</label> <select
					class="form-control" name="supportTheme">
					<option value="결제">결제</option>
					<option value="주문">주문</option>
					<option value="배송">배송</option>
					<option value="상품">상품</option>
					<option value="기타">기타</option>
				</select>
			</div>
			<input type="hidden" name="supportUserId"
				value="${supportUserId.supportUserId}">
			<div class="mb-3">
				<label for="supportContent" class="form-label">내용</label>
				<textarea class="form-control" id="supportContent"
					name="supportContent" rows="10"></textarea>
			</div>
			<div>
				<input type="submit" class="btn btn-primary" value="완료">
			</div>
		</form>
	</div>
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>