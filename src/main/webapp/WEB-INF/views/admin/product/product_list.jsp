<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품 관리</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<!-- 게시글 리스트 -->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">${boardInfoName }</h4>
				<table class="table table-hover" id='board_list'>
					<caption></caption>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">번호</th>
							<th class="text-center d-none d-md-table-cell">종류</th>
							<th class="w-20">계열</th>
							<th class="text-center d-none d-md-table-cell">상품명</th>
							<th class="text-center d-none d-md-table-cell">가격</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${productList }">
							<tr
								onclick="location.href='${root }admin/product/details/${obj.productIdx}'">
								<td class="text-center d-none d-md-table-cell">${obj.productIdx}</td>
								<td class="text-center d-none d-md-table-cell">${obj.productType}</td>
								<td class="text-center d-none d-md-table-cell">${obj.productName }</td>
								<td class="text-center d-none d-md-table-cell">${obj.productPrice }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="d-none d-md-block">
					<ul class="pagination justify-content-center">
						<c:choose>
							<c:when test="${pageBean.prevPage <= 0 }">
								<li class="page-item disabled"><a href="#"
									class="page-link">이전</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="${root}/admin/product?page=${pageBean.prevPage}"
									class="page-link">이전</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var='idx' begin="${pageBean.min }"
							end='${pageBean.max }'>
							<c:choose>
								<c:when test="${idx == pageBean.currentPage }">
									<li class="page-item active"><a
										href="${root}admin/product?page=${idx}" class="page-link">${idx }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a
										href="${root}admin/product?page=${idx}" class="page-link">${idx }</a></li>
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
									href="${root}admin/product?page=${pageBean.nextPage}"
									class="page-link">다음</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<div class="text-right">
					<a href="${root }admin/product/register" class="btn btn-primary">등록</a>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>