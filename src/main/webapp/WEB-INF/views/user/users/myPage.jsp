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
<title>마이페이지</title>
<!-- Bootstrap CDN -->
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
	<div class="container">
		<div class="row">
			<!-- 좌측 메뉴 -->
			<div class="col-4">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-item-action active"
						id="list-profile-list" data-bs-toggle="list" href="#list-profile"
						role="tab" aria-controls="list-profile">회원 정보</a> <a
						class="list-group-item list-group-item-action"
						id="list-order-list" data-bs-toggle="list" href="#list-order"
						role="tab" aria-controls="list-order">주문 내역</a> <a
						class="list-group-item list-group-item-action"
						id="list-support-list" data-bs-toggle="list" href="#list-support"
						role="tab" aria-controls="list-support">문의 내역</a> <a
						class="list-group-item list-group-item-action"
						id="list-review-list" data-bs-toggle="list" href="#list-review"
						role="tab" aria-controls="list-review">후기 관리</a> <a
						class="list-group-item list-group-item-action"
						id="list-withdraw-list" data-bs-toggle="list"
						href="#list-withdraw" role="tab" aria-controls="list-withdraw">회원
						탈퇴</a>
				</div>
			</div>
			<!-- 우측 내용 -->
			<div class="col-8">
				<div class="card">
					<div class="card-body">
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="list-profile"
								role="tabpanel" aria-labelledby="list-profile-list">
								<c:import url="${root}user/modify" />
							</div>
							<!-- 주문 내역 -->
							<div class="tab-pane fade" id="list-order" role="tabpanel"
								aria-labelledby="list-order-list">
								<table style="border-bottom: 1px solid #efefef">
									<caption></caption>
									<tbody>
										<tr>
											<td style="padding: 0px"><a href="${root }product/info"><img
													src="${root}resources/image/main_list_product1.jpg"
												="150" style="border: 1px solid #eaeaea"></a></td>
											<td height="120" style="padding: 10px 0 10px 10px">
												<table>
													<tbody>
														<tr>
															<td style="padding: 0 0 10px 0"><a
																href="${root }product/info"><b class="tx16B"
																	style="color: #3d3d3d">삼성전자 DDR4-3200 8GB</b></a></td>
														</tr>
														<tr>
															<td></td>
														</tr>
														<tr>
															<td style="padding: 0 0 10px 0"><a
																href="${root }product/info">삼성전자 / 데스크탑 / DDR4 /
																	DIMM / 8(GB) / 3200(MHz),PC4-25600 / 전압 : 1.20(V) / 패키지
																	구성 : 1(EA) /</a></td>
														</tr>
														<tr>
															<td><a href="${root }review/list" target="_parent"><span
																	class="small_gray2">리뷰 : </span><span class="red_bold">0</span><span
																	class="small_gray2">건 </span></a> &nbsp;&nbsp;&nbsp;&nbsp;</td>
														</tr>
													</tbody>
												</table>
											</td>
											<td="120" bgcolor="#ffffff"
												style="padding: 0 15px 0 0">
												<div align="right" class="pricetitle2">
													<span class="red_bold"> <span class="price1"
														price1="style1">31,300</span>원 <br> <br
														style="line-height: 10px"> <a href="#"><img
															src="/skin/shop/basic/images/bn/bkn_ad_point.gif"
															align="absmiddle"></a></span><span class="brown_1"> 90
													</span>
												</div>
											</td>
											<td="120" bgcolor="#ffffff"
												style="padding-top: 3px; padding-bottom: 3px; padding-left: 3px; padding-right: 3px">
												<div align="center">
													<a href="${root}cart/list">장바구니</a><br> <a
														href="${root }order/info">구매하기</a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 문의내역 -->
							<div class="tab-pane fade" id="list-support" role="tabpanel"
								aria-labelledby="list-support-list">
								<table class="table" >
									<colgroup>
										<col>
										<col>
										<col>
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th>번호</th>
											<th></th>
											<th>내용</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>추천</th>
										</tr>
									</thead>
									<tbody>
										<!-- 1 -->
										<tr>
											<td>193</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241824,'Used');">
													<p>
														발열 신경쓰여서 좋은거 구매했는데 좋네요~~ㅎㅎㅎ<em class="photo"></em>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241824">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241824"
											style="display: none;">
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">발열 신경쓰여서 좋은거 구매했는데
												좋네요~~ㅎㅎㅎ
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241824');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624049_1.jpg"></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241824,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241824">0</span></span>
												</button>
											</td>
										</tr>
										<!-- 2 -->
										<tr>
											<td>192</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241823,'Used');">
													<p>
														듬직하니 좋습니다~!!!! 발열은 진짜 걱정 없을듯 하네요~ 감사합니다~!!! <i
															class="photo"></i>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241823">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241823"
											style="display: none;">
											<!--제목 누르면 내용 보이게 해주세요-->
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">듬직하니 좋습니다~!!!! 발열은
												진짜 걱정 없을듯 하네요~ 감사합니다~!!!
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241823');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624048_1.jpg" alt=""></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241823,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241823">0</span></span>
												</button>
											</td>
										</tr>
										<!-- 3 -->
										<tr>
											<td>191</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241822,'Used');">
													<p>
														너무 멋있네요~!!! 듬직 합니다~!!!ㅎㅎㅎ<em class="photo"></em>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241822">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241822"
											style="display: none;">
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">너무 멋있네요~!!! 듬직
												합니다~!!!ㅎㅎㅎ
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241822');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624047_1.jpg"></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241822,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241822">0</span></span>
												</button>
											</td>
										</tr>
									</tbody>
								</table>
								<div>
									<form action="" method="get">
										<div id="support_search" class="input-group mb-3">
											<input type="text" class="form-control"
												aria-describedby="button-addon2"> <input
												type="submit" class="btn btn-primary" value="검색">
										</div>
									</form>
									<a href="${root }support/write">
										<button type="button" class="btn btn-primary">글쓰기</button>
									</a>
								</div>
							</div>
							<!-- 후기 관리 -->
							<div class="tab-pane fade" id="list-review" role="tabpanel"
								aria-labelledby="list-review-list">
								<table class="table">
									<thead>
										<tr>
											<th>번호</th>
											<th>별점</th>
											<th>내용</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>추천</th>
										</tr>
									</thead>
									<tbody>
										<!-- 1 -->
										<tr>
											<td>193</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241824,'Used');">
													<p>
														발열 신경쓰여서 좋은거 구매했는데 좋네요~~ㅎㅎㅎ<em class="photo"></em>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241824">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241824"
											style="display: none;">
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">발열 신경쓰여서 좋은거 구매했는데
												좋네요~~ㅎㅎㅎ
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241824');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624049_1.jpg" alt=""></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241824,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241824">0</span></span>
												</button>
											</td>
										</tr>
										<!-- 2 -->
										<tr>
											<td>192</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241823,'Used');">
													<p>
														듬직하니 좋습니다~!!!! 발열은 진짜 걱정 없을듯 하네요~ 감사합니다~!!! <i
															class="photo"></i>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241823">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241823"
											style="display: none;">
											<!--제목 누르면 내용 보이게 해주세요-->
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">듬직하니 좋습니다~!!!! 발열은
												진짜 걱정 없을듯 하네요~ 감사합니다~!!!
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241823');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624048_1.jpg" alt=""></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241823,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241823">0</span></span>
												</button>
											</td>
										</tr>
										<!-- 3 -->
										<tr>
											<td>191</td>
											<td><div class="S_star_area">
													<span class="avgDetail_starN"><span
														class="avgDetail_star" style="width: 100%"></span></span>
												</div></td>
											<td class="align_l title"><a style="cursor: pointer;"
												onclick="showReviewDetailLayer(6241822,'Used');">
													<p>
														너무 멋있네요~!!! 듬직 합니다~!!!ㅎㅎㅎ<em class="photo"></em>
													</p>
											</a></td>
											<td>jjag****</td>
											<td>2022-10-27</td>
											<td class="used_like6241822">0</td>
										</tr>
										<tr class="reviewDetailTr" id="reviewDetail_6241822"
											style="display: none;">
											<td></td>
											<td></td>
											<td colspan="3" class="align_l con">너무 멋있네요~!!! 듬직
												합니다~!!!ㅎㅎㅎ
												<div class="photo_img">
													<span onclick="pusPhotoDetailLayer('6241822');"
														style="cursor: pointer;"><img
														src="//image2.compuzone.co.kr/img/postscript_order/ProductForUsed_4/896343/1624047_1.jpg" alt=""></span>
												</div>
											</td>
											<td>
												<button type="button" class="btn_hand"
													onclick="chk_like(6241822,'N');">
													<em class="ico_hand"></em> <span class="num"><span
														class="used_like6241822">0</span></span>
												</button>
											</td>
										</tr>
									</tbody>
								</table>
								<div>
									<form action="${root }support/search" method="get">
										<div id="support_search" class="input-group mb-3">
											<input type="text" class="form-control"
												aria-describedby="button-addon2"> <input
												type="submit" class="btn btn-primary" value="검색">
										</div>
									</form>
									<a href="${root }user/support/write">
										<button type="button" class="btn btn-primary">글쓰기</button>
									</a>
								</div>
								<!-- 문의 게시판 끝-->
							</div>
							<!-- 회원 탈퇴 -->
							<div class="tab-pane fade" id="list-withdraw" role="tabpanel"
								aria-labelledby="list-withdraw-list">
								<c:import url="${root}user/delete" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
