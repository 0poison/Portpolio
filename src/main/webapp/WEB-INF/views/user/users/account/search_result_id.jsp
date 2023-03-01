<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기 완료</title>
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
<script>                                                                                                                    
	var path = "${pageContext.request.contextPath }";                                                                           
		$(document).ready(function() {                                                                                            
		});                                                                                                                       
                                                                                            
</script>

<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
    			<div class="mb-3 row">
    			<h3>아이디를 확인해 주세요.</h3>
    			</div><br>
       	 			<c:choose>
            			<c:when test="${empty searchBean}">
                			<strong class="alert alert-warning">조회결과가 없습니다.</strong><br><br>
                			<div class="mb-3 row">
                				<div class="text-right">
                				<a href="${root }user/search_id">
                				<button class='btn btn-primary'>다시 찾기</button></a>
                				</div>
                			</div>
            			</c:when>
            		<c:otherwise>
                			<strong class="alert alert-success">고객님의 아이디는 ${searchBean.userId} 입니다.</strong><br><br>
                			<div class="mb-3 row">
                				<div class="text-right">
                				<a href="${root }user/login">
                				<button class='btn btn-primary'>로그인 하러가기</button></a>
                				</div>
                			</div>
            		</c:otherwise>
        			</c:choose>
</div></div></div></div></div>
</body>
</html>