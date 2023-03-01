<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!-- 하위폴더 상관없이 메인으로 가는 절대경로용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta>
<title>관리자 페이지</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<!-- favicon -->
<link rel="icon" href="../webapp/resources/image/favicon_32x32.png">
</head>
<body>
	<!-- 메인 컨테이너 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<c:if test="${fail == true }">
							<div class="alert alert-danger">
								<h3>로그인 실패</h3>
								<p>아이디 비밀번호를 확인해주세요</p>
							</div>
						</c:if>
						<form:form action="${root }admin/login_pro" method='post'
							modelAttribute="tempLoginAdminBean">
							<div class="form-group">
								<form:label path="adminId">아이디</form:label>
								<form:input path="adminId" class='form-control' />
								<form:errors path='adminId' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="adminPw">비밀번호</form:label>
								<form:password path="adminPw" class='form-control' />
								<form:errors path='adminPw' style='color:red' />
							</div>
							<div class="form-group text-right">
								<form:button class='btn btn-primary'>로그인</form:button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<!-- 메인 컨테이너 끝 -->
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
