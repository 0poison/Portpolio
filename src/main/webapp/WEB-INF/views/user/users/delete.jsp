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
<title>회원 탈퇴</title>
<c:import url="/WEB-INF/views/include/header_login.jsp" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/userInterface.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<c:if test="${fail == true }">
							<div class="alert alert-danger">
								<p>비밀번호를 확인해주세요</p>
							</div>
						</c:if>
						<form:form action="${root }user/delete_success" method='post'
							modelAttribute="deleteBean">
							<div class="mb-3 row">
								<form:input type="hidden" path="userId" />
							</div>
							<div class="mb-3 row">
								<h3>탈퇴 하시겠습니까?</h3>
							</div>
							<div class="mb-3 row">
								<form:label path="userPw">비밀번호</form:label>
								<form:password path="userPw" class='form-control' />
								<form:errors path='userPw' style='color:red' />
							</div>
							<div class="mb-3 row">
								<div class="text-right">
									<form:button class='btn btn-primary'>회원 탈퇴</form:button>
									&nbsp; <a href="${root }main">
										<button type="button" class='btn btn-primary'>취소</button>
									</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 	function deleteUser(){
		// 		const data = {
		// 				userId : $('[name=userId]').val(),
		// 				userPw : $('[name=userPw]').val()
		// 		}
		// 		$.ajax({
		// 			url:'/user/delete-user',
		// 			type:'POST',
		// 			contentType:'application/json',
		// 			data:JSON.stringify(data),
		// 			success:function(res){
		// 				if(res){
		// 					alert('회원탈퇴가 성공하였습니다.');
		// 					location.href='${root}'
		// 				}else{
		// 					alert('error!');
		// 				}
		// 			}
		// 		})
		// 	}
	</script>
</body>
</html>