<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$( document ).ready(function() {
	setTotalInfo();
    
	// 수량 조절
	$(".plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
	});
	
	$(".minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
	});
	
	// 체크 정보 변화
	$(".individual_cart_checkbox").on("change", function(){
		// 총 주문 정보 세팅
		setTotalInfo($(".cart_info_div"));
	});
	
	// 전체선택
	$(".all_check_input").on("click", function(){
		
		// 체크 선택 및 해제
		if($(".all_check_input").prop("checked")){
			$(".individual_cart_checkbox").prop("checked", true);
		} else{
			$(".individual_cart_checkbox").prop("checked", false);
		}
		setTotalInfo($(".cart_info_div"));
	});
	
	function setTotalInfo(){
		let totalPrice = 0;
		
		$(".cart_info_div").each(function(index, element){
			//체크여부
			if($(element).find(".individual_cart_checkbox").is(":checked") === true){
				// 총 가격
				totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		}
	});
		$(".totalPrice_span").text(totalPrice.toLocaleString());
	};
});
</script>



	<div class="container" style="margin-top : 50px;">
		<div>
			<div></div>
			<!-- 장바구니 리스트 -->
			<div></div>
			<!-- 장바구니 가격 합계 -->
			<!-- cartInfo -->
			<div>
				<!-- 체크박스 전체 여부 -->
				<div class="all_check_input_div">
					<input type="checkbox" class="all_check_input" checked="checked">
					<span class="all_chcek_span">전체선택</span>
				</div>
				<table class="table" style="table-layout: fixed">
					<caption></caption>
					<thead class="table-light">
						<tr>
							<!-- 체크 박스 -->
							<th>선택</th>
							<!-- 이미지 -->
							<th>미리보기</th>
							<th>제품명</th>
							<th>가격</th>
							<th>수량</th>
							<th>합계</th>
							<th>삭제</th>
						</tr>
					</thead>
				</table>
				<table class="table">
					<caption></caption>
					<th></th>
					<tbody>
						<tr>
							<!-- 체크 박스 -->
							<td>
							<input type="checkbox" class="individual_cart_checkbox" checked="checked"></td>
							<!-- 이미지 -->
							<td><img id="cart_img"
								src="${root}resources/image/main_list_product_1.jpg" alt=""></td>
							<td>이름</td>
							<div class="cart_info_div">
							<td id="price">
							<input class="individual_price_input" value="10000"></td>
							<td>
							<div class="button">
								<div class="quantity_div">
									<input type="text" class="quantity_input" value="1" style=>
									<button class="quantity_btn plus_btn">+</button>
									<button class="quantity_btn minus_btn">-</button>
								</div>
							</div>
							</td>
							<td> 원</td>
							</div>
							<td>
								<button type="button" class="btn btn-dark" data-cartid="">삭제</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 가격 종합 -->
			<div>
				<div>
					<table class="table">
						<caption></caption>
						<th></th>
						<tr>
							<td>
								<table class="table table-borderless">
									<caption></caption>
									<th></th>
									<tbody>
										<tr>
											<td><strong>총 결제 금액</strong></td>
											<td><span class="totalPrice_span"/> 원</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- 구매 버튼 영역 -->
			<div style="text-align : right;">
<%-- 			<a href='${root}order/form'></a> --%>
				<button type="button" class="btn btn-primary" onclick='pay_btn()'>주문하기</button>
			</div>

			<!-- 수량 조정 form -->
			<form action="" method="post">
				<input type="hidden" name=""> <input type="hidden" name="">
				<input type="hidden" name="" value="">
			</form>

			<!-- 삭제 form -->
			<form action="" method="post">
				<input type="hidden" name=""> <input type="hidden" name=""
					value="">
			</form>

			<!-- 주문 form -->
			<form action="" method="get"></form>
		</div>
	</div>
	
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function pay_btn(){

			$.ajax({
				url:'/order/pay',
				dataType:'json',
				success:function(data){
					var box = data.next_redirect_pc_url
					window.open(box);
				},
				error:function(error){
					alert(error);
				}
			})
	}
</script>
	
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>