<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
<!-- 헤더 -->
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>

	
		<form action="" method="get">
			</div>
		</div>

		<div class="order">
			<div class="menu_sub_black" style="font-size: 25px;">주문 정보</div>

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
				<button type="button" class="btn btn-light">뒤로가기</button>
			</div>
		</div>

	</div>
	</form>

	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>