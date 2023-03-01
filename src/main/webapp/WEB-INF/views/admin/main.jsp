<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<!-- 게시판 미리보기 부분 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<c:forEach var='sub_list' items="${list}" varStatus="idx">
				<div class="col-lg-6" style="margin-top: 20px">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">${mainList[idx.index].boardInfoName }</h4>
							<table class="table table-hover" id='board_list'>
								<caption></caption>
								<thead>
									<tr>
										<c:choose>
											<c:when test="${mainList[idx.index].boardInfoName=='회원 목록' }">
												<th>번호</th>
												<th>유저명</th>
												<th class="text-center d-none d-xl-table-cell">이메일</th>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when
														test="${mainList[idx.index].boardInfoName=='상품 관리' }">
														<th class="text-center w-25">품목</th>
														<th>픔목명</th>
														<th class="text-center w-25 d-none d-xl-table-cell">등록
															일자</th>
													</c:when>
													<c:otherwise>
														<c:choose>
															<c:when
																test="${mainList[idx.index].boardInfoName=='문의 내역' }">
																<th class="text-center w-25">번호</th>
																<th>문의 내역</th>
																<th class="text-center w-25 d-none d-xl-table-cell">문의
																	일자</th>
															</c:when>
															<c:otherwise>
																<th class="text-center w-25">주문 번호</th>
																<th>품목명</th>
																<th class="text-center w-25 d-none d-xl-table-cell">주문
																	일자</th>
															</c:otherwise>
														</c:choose>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</tr>
								</thead>
								<tbody>
									<c:forEach var='obj' items='${subList }'>
										<tr>
											<td class="text-center">${obj.contentIdx }</td>
											<td><a
												href='${root }admin/read?board_info_idx=${mainList[idx.index].boardInfoIdx}&content_idx=${obj.contentIdx}&page=1'>${obj.contentSubject }</a>
											<td class="text-center d-none d-xl-table-cell">${obj.contentDate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<a href="${root}admin/${mainList[idx.index].boardInfoId }"
								class="btn btn-primary">더보기</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>