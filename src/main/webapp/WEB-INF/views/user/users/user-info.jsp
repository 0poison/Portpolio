<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<div class="tab-pane fade show active" id="list-profile" role="tabpanel"
	aria-labelledby="list-profile-list">
	<div class="mb-3 row">
		<label class="col-sm-2 col-form-label">이름</label>
		<div class="col-sm-10">
			<input type="text" readonly class="form-control-plaintext"
				value="${loginUserBean.userName}">Look at This!!!!
		</div>
	</div>

	<div class="mb-3 row">
		<label class="col-sm-2 col-form-label">아이디</label>
		<div class="col-sm-10">
			<input type="text" readonly class="form-control-plaintext"
				value="id1234">
		</div>
	</div>

	<div class="mb-3 row">
		<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
		<div class="col-sm-5">
			<input type="password" class="form-control" id="">
		</div>
	</div>

	<div class="mb-3 row">
		<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호
			확인</label>
		<div class="col-sm-5">
			<input type="password" class="form-control" id="">
		</div>
	</div>

	<form class="row g-3">
		<div class="col-sm-2 col-form-label">
			<label>이메일</label> <input type="text" readonly
				class="form-control-plaintext" id="">
		</div>
		<div class="col-auto">
			<input type="email" class="form-control" id=""
				placeholder="name@example.com">
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary mb-3">인증</button>
		</div>
	</form>

	<div class="mb-3 row">
		<label for="inputText" class="col-sm-2 col-form-label">상세주소</label>
		<div class="col-sm-5">
			<input type="text" class="form-control" id=""
				placeholder="형이 쓰신 api 넣으면 될 것 같습니다.">
		</div>
	</div>
</div>