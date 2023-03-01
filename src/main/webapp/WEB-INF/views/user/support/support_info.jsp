<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>문의 내역 정보</title>
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<form action="${root }support/modify" class="card-body">
						<input type="hidden" name="supportNum"
							value="${supportInfo.supportNum}">
						<div class="form-group">
							<label for="board_writer_name">작성자</label> <input type="text"
								id="supportUserId" name="supportUserId" class="form-control"
								value="${supportInfo.supportUserId}" />
						</div>
						<div class="form-group">
							<label for="board_date">작성날짜</label> <input type="text"
								id="board_date" name="board_date" class="form-control"
								value="${supportInfo.supportData}" />
						</div>
						<div class="form-group">
							<label for="board_subject">제목</label> <input type="text"
								id="board_subject" name="board_subject" class="form-control"
								value="${supportInfo.supportTitle}" />
						</div>
						<div class="form-group">
							<label for="board_content">내용</label>
							<textarea id="board_content" name="board_content"
								class="form-control" rows="10" style="resize: none">${supportInfo.supportContent}</textarea>
						</div>
						<div class="form-group">
							<label for="board_file">첨부 이미지</label> <img
								src="${root}resources/image/logo.png" width="100%" alt="" />
						</div>
						<div class="form-group">
							<label for="board_content">답변 내용</label> <input type="text"
								id="support_comment" name="supportComment" class="form-control"
								value="${supportInfo.supportComment}" disabled="disabled" />
						</div>
						<div class="form-group">
							<div class="text-right">
								<button type="submit" class="btn btn-primary">답변 등록/수정</button>
								<a href="${root }support/list" class="btn btn-primary">목록보기</a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>