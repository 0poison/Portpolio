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
<title>회원가입</title>
<c:import url="/WEB-INF/views/include/header_login.jsp" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
<script>
	function checkUserIdExist(){
		
		var userId = $("#userId").val()
		
		if(userId.length == 0){
			alert('아이디를 입력해주세요')
			return
		}
		
		$.ajax({
			url : '${root}user/checkUserIdExist/' + userId,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					alert('사용할 수 있는 아이디입니다')
					$("#userIdExist").val('true')
				} else {
					alert('사용할 수 없는 아이디 입니다')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
	
	function execution_daum_address(){
		 
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	var addr = '';
                var extraAddr = '';
 
                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }
 
                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    addr += extraAddr;
                
                } else {
                	 addr += ' ';
                }
 
                $(".userAddress1").val(data.zonecode);
                $(".userAddress2").val(addr);
                $(".userAddress3").attr("readonly",false);
                $(".userAddress3").focus();
	        }
	    }).open();    
	 
	}
	
</script>

<body>


	<div class="container join">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form:form action="${root }user/join_pro" method='post'
							modelAttribute="joinUserBean">
							<form:hidden path="userIdExist" />
							<div class="form-group">
								<form:label path="userName">이름</form:label>
								<form:input path="userName" class='form-control' placeholder="한글만 입력 가능합니다" />
								<form:errors path="userName" style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="userId">아이디</form:label>
								<div class="input-group">
									<form:input path="userId" class='form-control'
										onkeypress="resetUserIdExist()" placeholder="영문대소문자, 숫자만 가능합니다" />
									<div class="input-group-append">
										<button type="button" class="btn btn-primary"
											onclick='checkUserIdExist()'>중복확인</button>
									</div>
								</div>
								<form:errors path="userId" style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="userPw">비밀번호</form:label>
								<form:password path="userPw" class='form-control' placeholder="영문대소문자, 숫자만 가능합니다" />
								<form:errors path='userPw' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="userPw2">비밀번호 확인</form:label>
								<form:password path="userPw2" class='form-control' />
								<form:errors path='userPw2' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="userPhone">전화번호</form:label>
								<form:input path="userPhone" class='form-control' />
							</div>
							<div class="form-group">
								<form:label path="userAddress1">주소</form:label>
								<div class="input-group">
									<form:input path="userAddress1" class='userAddress1'
										readonly="readonly" />
									<div class="input-group-append">
										<button type="button" class="btn btn-primary"
											onclick="execution_daum_address()">찾기</button>
									</div>
								</div>
								<div>
								<form:input path="userAddress2" class='userAddress2'
									readonly="readonly" />
									</div>
									<div>
								<form:input path="userAddress3" class='userAddress3'
									readonly="readonly" />
									<div>
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class='btn btn-primary'>회원가입</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>
