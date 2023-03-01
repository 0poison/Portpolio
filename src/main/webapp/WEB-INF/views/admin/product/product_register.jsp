<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value='${pageContext.request.contextPath}/' />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>제품 등록</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<c:import url="/WEB-INF/views/include/header_admin.jsp" />
</head>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form action='${root }admin/product/product_pro' method='get'
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="product_name">제품명</label> <input type="text"
									id="product_name" name="productName" class="form-control" />
							</div>
							<div class="form-group">
								<label for="product_type">종류</label> <select name="productType"
									id="product_type">
									<option value="cpu">프로세서(cpu)</option>
									<option value="mainboard">메인보드</option>
									<option value="ram">메모리</option>
									<option value="vga">그래픽 카드</option>
									<option value="ssd">SSD</option>
									<option value="hdd">하드디스크</option>
									<option value="power">파워(ATX)</option>
									<option value="cooler">쿨러(Cooler)</option>
								</select>
							</div>
							<div class="form-group">
								<label for="product_price">수량</label> <input type="number" name="count" id="count" min = "0" class="form-control" />
								<script>        // +, - 기호 막기
								let number = document.getElementById('count');

								number.onkeydown = function(e) {
									if(!((e.keyCode > 95 && e.keyCode < 106)
											|| (e.keyCode > 47 && e.keyCode < 58)
											|| e.keyCode === 8)) {
										return false;
									}
								}
								</script>
							</div>
							<div class="form-group">
								<label for="product_price">가격</label> <input type="text"
									id="product_price" name="productPrice" class="form-control" />
							</div>
							<div class="form-group">
								<label for="product_text">설명</label>
								<textarea id="product_text" name="productText"
									class="form-control" rows="10" style="resize: none"></textarea>
							</div>
							<div class="form-group">
								<label path="upload_file">첨부 이미지</label> <input type='file'
									path='upload_file' class="form-control" accept="image/*" />
							</div>
							<div class="form-group">
								<div class="text-right">
									<input class='btn btn-primary' type="submit"
										onclick="location.href='${root }admin/product/product_pro'">
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
</html>
