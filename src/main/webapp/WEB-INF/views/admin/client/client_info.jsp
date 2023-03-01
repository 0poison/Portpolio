<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<!-- 	회원 정보 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<div class="form-group">
							<label for="board_writer_name">아이디</label> <input type="text"
								id="board_writer_name" name="board_writer_name"
								value="${userAllInfo.userId}" class="form-control"
								disabled="disabled">
						</div>
						<div class="form-group">
							<label for="board_date">가입날짜</label> <input type="text"
								id="board_date" name="board_date" class="form-control"
								value="${userAllInfo.userRegDate}" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_subject">전화번호</label> <input type="text"
								id="board_subject" name="board_subject" class="form-control"
								value="${userAllInfo.userPhone}" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_content">주소</label><input type="text"
								id="board_subject" name="board_subject" class="form-control"
								value="${userAllInfo.userAddress2}" disabled="disabled" />
						</div>
						<div class="form-group">
							<label for="board_content">나머지 주소</label><input type="text"
								id="board_subject" name="board_subject" class="form-control"
								value="${userAllInfo.userAddress3}" disabled="disabled" />
						</div>
						<div class="form-group">
							<div class="text-right">
								<a href="${root }admin/client" class="btn btn-primary">목록보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>