<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>
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
<c:import url="/WEB-INF/views/include/header_login.jsp" />
</head>
<body>
<!-- <script> -->

<!-- 	$(document).ready(function() { -->
<%-- 		var msg = "${msg}"; --%>
<!-- 		if(msg != "") { -->
<!-- 		alert(msg);     -->
<!-- 		} -->
<!-- 	}); -->
	 
<!-- 	function fnSubmit() { -->
	 
<!-- 	if ($("#user_name").val() == null || $("#user_name").val() == "") { -->
<!-- 		alert("이름을 입력해주세요."); -->
<!-- 		$("#user_name").focus(); -->
	 
<!-- 	return false; -->
<!-- 	} -->
	 
<!-- 	if ($("#user_pw").val() == null || $("#user_pw").val() == "") { -->
<!-- 		alert("비밀번호를 입력해주세요."); -->
<!-- 		$("#user_pw").focus(); -->
	 
<!-- 	return false; -->
<!-- 	} -->
	 
<!-- 	if (confirm("아이디를 찾으시겠습니까?")) { -->
	 
<!-- 	$("#createForm").submit(); -->
	 
<!-- 	return false; -->
<!-- 	} -->
<!-- 	} -->
	 
<!-- </script> -->

<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
				<form:form action="${root }account/search_result_id" method='post' modelAttribute="SearchUserBean">
  					<div class="mb-3 row">
      				<h3>아이디를 잊으셨나요?</h3>
  					</div>
      				<div class="mb-3 row">
      					<form:label path="userName">이름</form:label>
          				<form:input path="userName" class='form-control'/>
      				</div>
      				<div class="mb-3 row">
      					<form:label path="userPw">비밀번호</form:label>
         				<form:password path="userPw" class='form-control'/>
      				</div>
      				<div class="mb-3 row">
      					<div class="text-right">
      					<form:button class='btn btn-primary'>아이디 찾기</form:button>
      					</div>
      				</div>
			 	</form:form>
 </div></div></div></div></div>
</body>
</html>