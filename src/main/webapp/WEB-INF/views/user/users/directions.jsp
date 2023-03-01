<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
<c:import url="/WEB-INF/views/include/header_login.jsp" />
</head>
<body>
	<div class="map">
		<div class="mapBanner">
			<div class="mapText">
				<img alt="map" class="icon" src="${root}resources/image/map.svg">
				찾아오시는 길
			</div>
			<div class="mapMap">
				<div id="map" style="width: 100%; height: 500px;"></div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02cd9ff1fbf7fcc7c487d1e07ad2af2f"></script>
			</div>
		</div>
	</div>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
	</script>
</body>
</html>