<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!-- 하위폴더 상관없이 메인으로 가는 절대경로용 -->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>리뷰 목록</title>

</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/include/header.jsp" />
	
	<div class="product_detail_review">
		<table class="table">
			<caption></caption>
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
							<span class="avgDetail_starN"><span class="avgDetail_star"
								style="width: 100%"></span></span>
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
							<span class="avgDetail_starN"><span class="avgDetail_star"
								style="width: 100%"></span></span>
						</div></td>
					<td class="align_l title"><a style="cursor: pointer;"
						onclick="showReviewDetailLayer(6241823,'Used');">
							<p>
								듬직하니 좋습니다~!!!! 발열은 진짜 걱정 없을듯 하네요~ 감사합니다~!!! <em class="photo"></em>
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
					<td colspan="3" class="align_l con">듬직하니 좋습니다~!!!! 발열은 진짜 걱정
						없을듯 하네요~ 감사합니다~!!!
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
							<span class="avgDetail_starN"><span class="avgDetail_star"
								style="width: 100%"></span></span>
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
					<!--제목 누르면 내용 보이게 해주세요-->
					<td></td>
					<td></td>
					<td colspan="3" class="align_l con">너무 멋있네요~!!! 듬직 합니다~!!!ㅎㅎㅎ
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
		<!-- 리뷰 게시판 끝-->
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/include/footer.jsp" />

	</div>
</body>
</html>