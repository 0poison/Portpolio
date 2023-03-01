<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>제품 정보 수정</title>
	<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
<div class="container" style="margin-top: 100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form action="${root}admin/product" method="post" id="modifyForm">
					<input type="hidden" value="${product.productIdx}" name="productIdx"/>
					<div class="form-group">
						<label for="product_name">제품명</label>
						<input type="text" id="product_name" name="productName"
							   class="form-control" value="${product.productName}"/>
					</div>
					<div class="form-group">
						<label for="product_type"></label> <input type="text" id="product_type" name="productType" class="form-control"
																  value="${product.productType}"
					/>
					</div>
					<div class="form-group">
						<label for="product_price">가격</label> <input type="text" id="product_price" name="productPrice" class="form-control"
																  value="${product.productPrice}"
					/>
					<div class="form-group">
						<label for="product_text">설명</label>
						<textarea id="product_text" name="productText" class="form-control" rows="10" style="resize: none"
						>${product.productText}</textarea>
					</div>
					<c:if test="${product.productDetail != null }">
						<div class="form-group">
							<label for="product_image">첨부 이미지</label> <img id="product_image" src="/resources/image${product.productDetail}" width="100%"  alt=""/>
						</div>
					</c:if>
					<div class="form-group">
						<div class="text-right">
							<a href="${root}admin/product" class="btn btn-primary">목록보기</a>
							<a href="#" id="modifyBtn"
							   class="btn btn-info" onclick="modify()"
							>수정하기</a>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
<script type="text/javascript">

	function modify () {
		var btn = document.getElementById("modifyBtn");
		var form = document.getElementById("modifyForm");
		console.log(form)
		form.submit();
	}


</script>
</html>