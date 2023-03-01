<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<c:import url="/WEB-INF/views/include/header_login.jsp" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<script>
		function checkSome(obj) {
			if (obj.value.length < 2) {
				document.querySelector('[data-name=' + obj.name + ']').innerHTML = '아이디는 2글자 이상이어야 합니다'
			}
		}
	</script>
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
						<form:form action="${root }user/users/login_pro" method='post'
							modelAttribute="tempLoginUserBean">
							<div class="form-group">
								<form:label path="userId">아이디</form:label>
								<form:input path="userId" class='form-control'
									onchange="checkSome(this)" />
								<form:errors path='userId' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="userPw">비밀번호</form:label>
								<form:password path="userPw" class='form-control' />
								<form:errors path='userPw' style='color:red' />
							</div>
							<div class="form-group text-center">
								<form:button class='btn btn-primary'>로그인</form:button>
								&nbsp; <a href="${root }user/join" class="btn btn-danger">회원가입</a>
							</div>
							<div class="form-group text-center">
								<a href="${root }account/search_id" class="btn btn-link">아이디
									찾기</a>
							</div>
							<div class="form-group text-center">
								<a href="${root }account/search_pw" class="btn btn-link">비밀번호
									찾기</a>
							</div>
						</form:form>

						<script type="text/javascript"
							src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
							charset="utf-8"></script>
						<div id="naverIdLogin"></div>
						<script type="text/javascript">
							var naverLogin = new naver.LoginWithNaverId({
								clientId : "x3i_GgSm28bYZsUrx3NX",
								callbackUrl : "http://pc.java-webapp.blog",
								isPopup : false,
								loginButton : {
									color : "green",
									type : 3,
									height : 48
								}
							});

							naverLogin.init();
						</script>
						<br>

						<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
						<script
							src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
						<div>
							<a id="kakao-login-btn"></a>
							<div id="result"></div>
						</div>
						<script type="text/javascript">
							function unlinkApp() {
								Kakao.API
										.request({
											url : '/v1/user/unlink',
											success : function(res) {
												alert('success: '
														+ JSON.stringify(res))
											},
											fail : function(err) {
												alert('fail: '
														+ JSON.stringify(err))
											},
										})
							}
						</script>
						<script type="text/javascript">
							Kakao.init('02cd9ff1fbf7fcc7c487d1e07ad2af2f');
							console.log(Kakao.isInitialized());

							Kakao.Auth
									.createLoginButton({
										container : '#kakao-login-btn',
										success : function(authObj) {
											Kakao.API
													.request({
														url : '/v2/user/me',
														fail : function(error) {
															alert('login success, but failed to request user information: '
																	+ JSON
																			.stringify(error))
														},
													})
										},
										fail : function(err) {
											alert('failed to login: '
													+ JSON.stringify(err))
										},
									})
						</script>
					</div>
				</div>
			</div>
		</div>

	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />	
</body>
</html>
