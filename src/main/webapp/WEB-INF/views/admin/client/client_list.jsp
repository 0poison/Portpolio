<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<!-- 회원 목록-->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">${boardInfoName}</h4>
				<table class="table table-hover" id='board_list'>
					<caption></caption>
					<thead>
						<tr>
							<th class="text-center w-20">아이디</th>
							<th class="text-center w-20">이름</th>
							<th class="text-center w-20">가입일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${list}">
							<tr>
								<td class="text-center d-none d-md-table-cell"><a
									href="${root}admin/client/info/${obj.userIdx}">${obj.userId}</a></td>
								<td class="text-center d-none d-md-table-cell"><a
									href="${root}admin/client/info/${obj.userIdx}">${obj.userName }</a></td>
								<td class="text-center d-none d-md-table-cell">${obj.userRegDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="d-none d-md-block">
					<ul class="pagination justify-content-center">
						<!-- 					페이징 -->
						<c:choose>
							<c:when test="${pageBean.prevPage <= 0 }">
								<li class="page-item disabled"><a href="#"
									class="page-link">이전</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root }admin/main?board_info_idx=${boardInfoIdx}&page=${pageBean.prevPage}"
									class="page-link">이전</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var='idx' begin="${pageBean.min }"
							end='${pageBean.max }'>
							<c:choose>
								<c:when test="${idx == pageBean.currentPage }">
									<li class="page-item active"><a
										href="${root }board/main?board_info_idx=${boardInfoIdx}&page=${idx}"
										class="page-link">${idx }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a
										href="${root }board/main?board_info_idx=${boardInfoIdx}&page=${idx}"
										class="page-link">${idx }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pageBean.max >= pageBean.pageCnt }">
								<li class="page-item disabled"><a href="#"
									class="page-link">다음</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root }board/main?board_info_idx=${boardInfoIdx}&page=${pageBean.nextPage}"
									class="page-link">다음</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>