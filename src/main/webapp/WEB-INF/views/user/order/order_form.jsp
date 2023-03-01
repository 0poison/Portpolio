<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>주문 양식</title>
<!-- 헤더 -->
<c:import url="/WEB-INF/views/include/header_user.jsp" />
<!-- 가져온 코드 증감 등 적용되게 하는 코드 -->
<script type="text/javascript">
//이벤트 리스너 등록

document.addEventListener('DOMContentLoaded', function(){

    // "선택 상품 삭제" 버튼 클릭

    document.querySelector('.basketrowcmd a:first-child').addEventListener('click', function(){

        basket.delCheckedItem();

    });

    // "장바구니 비우기" 버튼 클릭

    document.querySelector('.basketrowcmd a:nth-child(2)').addEventListener('click', function(){

        basket.delAllItem();

    });

    // 장바구니 행 "삭제" 버튼 클릭

    document.querySelectorAll('.basketcmd a').forEach(

        function(item){

            item.addEventListener('click', function(){

                basket.delItem();

            });

        }

    );   

    // 수량변경 - 이벤트 델리게이션으로 이벤트 종류 구분해 처리

    document.querySelectorAll('.updown').forEach(

        function(item, idx){

            //수량 입력 필드 값 변경

            item.querySelector('input').addEventListener('keyup', function(){

                basket.changePNum(idx+1);

            });

            //수량 증가 화살표 클릭

            item.children[1].addEventListener('click', function(){

                basket.changePNum(idx+1);

            });

            //수량 감소 화살표 클릭

            item.children[2].addEventListener('click', function(){

                basket.changePNum(idx+1);

            });

        }

    );

    //앵커 # 대체해 스크롤 탑 차단

    document.querySelectorAll('a[href="#"]').forEach(function(item){

        item.setAttribute('href','javascript:void(0)');

    });

});
let basket = {

	    totalCount: 0, //전체 갯수 변수

	    totalPrice: 0, //전체 합계액 변수

	    //체크한 장바구니 상품 비우기

	    delCheckedItem: function(){

	        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {

	            item.parentElement.parentElement.parentElement.remove();

	        });

	        //AJAX 서버 업데이트 전송

	    

	        //전송 처리 결과가 성공이면

	        this.reCalc();

	        this.updateUI();

	    },

	    //장바구니 전체 비우기

	    delAllItem: function(){

	        document.querySelectorAll('.row.data').forEach(function (item) {

	            item.remove();

	          });

	          //AJAX 서버 업데이트 전송

	        

	          //전송 처리 결과가 성공이면

	          this.totalCount = 0;

	          this.totalPrice = 0;

	          this.reCalc();

	          this.updateUI();

	    },

	    //재계산

	    reCalc: function(){

	        this.totalCount = 0;

	        this.totalPrice = 0;

	        document.querySelectorAll(".p_num").forEach(function (item) {

	            var count = parseInt(item.getAttribute('value'));9999

	            this.totalCount += count;

	            var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');

	            this.totalPrice += count * price;

	        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg

	    },

	    //화면 업데이트

	    updateUI: function () {

	        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';

	        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';

	    },

	    //개별 수량 변경

	    changePNum: function (pos) {

	        var item = document.querySelector('input[name=p_num'+pos+']');

	        var p_num = parseInt(item.getAttribute('value'));

	        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? 

	p_num-1 : event.target.value;

	        

	        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }



	        item.setAttribute('value', newval);

	        item.value = newval;



	        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');

	        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";

	        //AJAX 업데이트 전송



	        //전송 처리 결과가 성공이면    

	        this.reCalc();

	        this.updateUI();

	    },

	    //상품 삭제

	    delItem: function () {

	        event.target.parentElement.parentElement.parentElement.remove();

	    }

	}

</script>

</head>
<!-- 데이터 끌고오는지 테스트용 -->
${loginUserBean}<br/>
test<br/> ${productInfoBean}
<body>



<form name="orderform" id="orderform" method="post" class="orderform" action="/form">
	<div class="container">
		<div class="menu_title" style="margin-top: 50px;">주문 / 정보</div>
		<div class="MICEGothic">
			<div>
				<!-- 장바구니 가격 합계 -->
				<!-- cartInfo -->
				<div>
					<!-- 체크박스 전체 여부 -->
					<div>
						<input type="checkbox" checked="checked"><span>전체선택</span>
					</div>
					<table class="table" style="table-layout: fixed">
						<thead class="table-light">
							<tr>
								<!-- 체크 박스 -->
								<th>선택</th>
								<!-- 이미지 -->
								<th style="text-align: center;">미리보기</th>
								<th>제품명</th>
								<th>가격</th>
								<th>수량</th>
								<th>합계</th>
								<th>삭제</th>
							</tr>
						</thead>
					</table>
					<table class="table">
					
						<tbody>
						
							<tr>
							
								<!-- 체크 박스 -->
								<td><input type="checkbox" checked="checked"></td>
								<!-- 이미지 -->
								<td><img id="cart_img"
									src="${root}resources/image/main_list_product_1.jpg" alt=""></td>
								<td>이름 : ${productInfoBean.productName}</td>
								<td id="price">
										정가 : <fmt:formatNumber value="${productInfoBean.productPrice}" pattern="#,###"/><br>
										판매가 : <fmt:formatNumber value="${productInfoBean.productPrice*1.1}" pattern="#,###"/><br>
								<td>
								
<!-- 수량 증감 및 금액 변경 시도해보려고 가져온 코드 -->
   
 <div class="basket" id="basket">


        <!-- "장바구니 상품 목록" -->

        <div class="row data">


            <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="${productInfoBean.productPrice*1.1}"><fmt:formatNumber value="${productInfoBean.productPrice*1.1}" pattern="#,###"/>원</div>

            <div class="num">

                <!-- "장바구니 수량 변경" -->

                <div class="updown">

                    <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="1">
                   	<span><em class="fas fa-arrow-alt-circle-up up"></em></span>
                    <span><em class="fas fa-arrow-alt-circle-down down"></em></span>

                </div>

            </div>

            <!-- "장바구니 상품 합계" -->

            <div class="sum"><fmt:formatNumber value="${productInfoBean.productPrice*1.1}" pattern="#,###"/>원</div>

            <div class="basketcmd"><a href="#" class="abutton">삭제</a></div>

        </div>

    </div>

    <!-- "장바구니 기능 버튼" -->

    <div class="right-align basketrowcmd">

        <a href="#" class="abutton">선택상품삭제</a>

        <a href="#" class="abutton">장바구니비우기</a>

    </div>

    <!-- "장바구니 전체 합계 정보" -->

    <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 4개</div>

    <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 74,200원</div>



    <div id="goorder" class="">

        <div class="clear"></div>

        <div class="buttongroup center-align cmd">

            <a href="#">선택한 상품 주문</a>

        </div>

    </div>





								</td>
								<td> 원</td>
								<td>
									<button type="button" class="btn btn-dark">삭제</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>	
</form>
				<!-- 가격 종합 -->
				<div>
					<div>
						<table class="table">
							<tr>
								<td>
									<table class="table table-borderless">
										<tbody>
											<tr>
												<td><strong>총 결제 예상 금액</strong></td>
												<td><span><fmt:formatNumber value="${productInfoBean.productPrice*1.1}" pattern="#,###"/></span> 원</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
					</div>
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
				<form action="" method="get">
			</div>
		</div>

		<div class="order">
			<div class="menu_sub_black" style="font-size: 25px;">배송지 정보</div>

			<div>이름 : ${loginUserBean.userName}</div>
			<div>
				<label for="" class="form-label">전화 번호</label>
				<input type="text"
					class="form-control" id="" placeholder="${loginUserBean.userPhone}"
					style="width: 150px;">
			</div>
			<div class="display_flex">
				<div>배송지 선택 :</div>
				<div class="form-check">
					<input class="form-check-input" type="radio"
						name="flexRadioDefault" id="flexRadioDefault2" checked> <label
						class="form-check-label" for="flexRadioDefault2"> 기본 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio"
						name="flexRadioDefault" id="flexRadioDefault1"> <label
						class="form-check-label" for="flexRadioDefault1"> 신규 </label>
				</div>

			</div>
			<div>
				<label for="" class="form-label">주소</label>
				<div class="display_flex">
					<input type="text" class="form-control" id=""
						placeholder="${loginUserBean.userAddress2}" style="width: 500px;">
					<button type="button" class="btn btn-primary">찾기</button>
				</div>
			</div>

			<div>
				<label for="" class="form-label">상세 주소</label> <input type="text"
					class="form-control" id="" placeholder="${loginUserBean.userAddress3}"
					style="width: 500px;">
			</div>

			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">요청
					사항</label>
				<textarea class="form-control" id="" rows="3" style="width: 500px;"></textarea>
			</div>
			<div>
				<!-- <button type="button" class="btn btn-primary" onclick='pay_btn()'>주문하기</button> -->
				<button type="button" class="btn btn-primary" onclick="location.href='${root}order/info'">주문하기</button>
				<button type="button" class="btn btn-light">뒤로가기</button>
			</div>
		</div>
	</div>
	</form>
<!-- 
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
 -->
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>