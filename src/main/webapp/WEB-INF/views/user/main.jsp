<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!-- 하위폴더 상관없이 메인으로 가는 절대경로용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta>
<title>이젠컴퓨터</title>

<!--head 태그 내 추가-->
<c:import url="/WEB-INF/views/include/header_user.jsp" />
</head>
<body>
	<!-- 헤더 -->
	<!-- 캐러셀(슬라이드) -->
	<div class="carouselDiv" style="width: 100%; height: 700px;">
		<div style="width: 120px; height: 600px; margin-top: 0px;">
			<div class="card_banner_1" style="height: 200px; text-align: center;">
				<a href="${root}product/info"> <img
					src="${root}resources/image/card_banner_1.jpg" alt="">
				</a>
			</div>
			<div class="card_banner_1" style="height: 150px;">
				<a href="${root}product/info"> <img
					src="${root}resources/image/card_banner_2.jpg" alt="">
				</a>
			</div>
			<div class="card_banner_1" style="height: 150px;">
				<a href="${root}product/info"> <img
					src="${root}resources/image/card_banner_3.jpg" alt="">
				</a>
			</div>
		</div>
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="false"
			style="width: 1320px; margin: 50px 0; padding: 0px 12px;">
			<div class="carousel-inner">
				<!-- 1번 슬라이드 -->
				<div class="carousel-item active" data-src="holder.js/800x400?auto=yes&bg=777&fg=555&text=First slide">
					<a href="${root }product/info"> <img
						src="${root}resources/image/slide_1.jpg" class="d-block w-100"
						id="slide_image" alt="">
						<div class="carousel-caption d-none d-md-block opacity-75"
							style="background-color: #000000;">
							<div class="MICEGothic">
								<h5>어떤 게임을 원하세요?</h5>
								<p>
									어드벤처, 아케이드, 스포츠, MMORPG, 롤플레잉, 시뮬레이션, 퍼즐, MOBA.<br> 무엇을 즐기든
									최적의 환경에서 플레이 하고 싶은 당신을 위한 제품들을 모았습니다.
								</p>
							</div>
						</div>
					</a>
				</div>
				<!-- 2번 슬라이드 -->
				<div class="carousel-item" >
					<a href="${root }product/info"> <img
						src="${root}resources/image/slide_2.jpg" class="d-block w-100"
						id="slide_image" alt="">
						<div class="carousel-caption d-none d-md-block opacity-75"
							style="background-color: #000000;">
							<div class="MICEGothic">
								<h5>게이머가 추천하는 진품명품 시리즈[2] - 파워</h5>
								<p>하루를 기분좋게 시작하는 마법의 주문 : 내가 누구?AX1600i 80PLUS TITANIUM 오너.</p>
							</div>
						</div>
					</a>
				</div>
				<!-- 3번 슬라이드 -->
				<div class="carousel-item">
					<a href="${root }product/info"> <img
						src="${root}resources/image/slide_3.jpg" class="d-block w-100"
						id="slide_image">
						<div class="carousel-caption d-none d-md-block opacity-75"
							style="background-color: #000000;">
							<div class="MICEGothic">
								<h5>[속보] 대한민국의 '여름'이 위험하다.</h5>
								<p>쿨러마스터 MasterLiquid ML360 SUB-ZERO와 함께라면 한여름에도 패딩 입어야..</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!-- 이전 버튼 -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>

			<!-- 다음 버튼 -->
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div style="width: 120px; height: 600px; margin: 0;"></div>
	</div>
	<!-- 캐러셀(슬라이드) 끝-->
	<div class="container">

		<!-- 배너 타이틀 -->
		<div class="menu_title">진행중인 이벤트</div>

		<!--  메인 상품 배너 -->
		<div class="product_banner_out">
			<!-- 1 -->
			<div class="product_banner">
				<a href="${root }product/info"><img class="banner"
					src="${root}resources/image/event_product_1.jpg" alt=""></a>
			</div>

			<!-- 2 -->
			<div class="product_banner">
				<a href="${root }product/info"><img class="banner"
					src="${root}resources/image/event_product_2.jpg" alt=""></a>
			</div>
		</div>

		<!-- 배너 타이틀 -->
		<div class="menu_title">너.. 집에서 스타만 할거니?</div>
		<!-- 배너 서브 -->
		<div class="menu_sub">최신 게임을 위한 부품</div>
		<div class="cover hor_banner row row-cols-1 row-cols-md-3 g-4"
			style="margin-bottom: 100px;">

			<!-- 3x2 배너 -->
			<!-- 1 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_1.jpg"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body" style="padding-bottom: 0px;">
							<a href="${root }product/info">
								<h5 class="card-title">인텔 코어i5-12세대 12400F (엘더레이크) (정품)</h5>
								<p class="card-text">
									<small class="text-muted"> 인텔 / 세대명 : 엘더레이크(12세대) /
										코어i5-12400F / 코어 갯수 : 6 / 쓰레드 : 12 / 소켓 형태 : LGA1700 / 동작 클럭 :
										2.5(GHz) / 터보 클럭 : 4.4(GHz) / L3 캐시메모리 : 18(MB) / 내장그래픽 : 없음 /
										열 설계 전력(TDP) : 65(W) / 10nm(인텔7) / DDR5/DDR4 / 메모리 버스 :
										3200(MHz) / 정품BOX /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- 2 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_2.jpg"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body">
							<a href="${root }product/info">
								<h5 class="card-title">ASUS PRIME H610M-D D4 코잇</h5>
								<p class="card-text">
									<small class="text-muted"> ASUS / 인텔 / 소켓 : LGA1700 /
										칩셋 : H610 (인텔) / m-ATX / CPU 장착 개수 : 1 / DDR4 /
										3,200(MHz),PC4-25600 / 슬롯 : 2(EA) / 최대 64(GB) / 지원 채널 : 2 /
										M.2 : 1(EA) / SATA3 : 4(EA) / D-SUB / HDMI / PCI-Ex. x16 :
										1(EA) / PCI-Ex. x1 : 1(EA) / RJ-45(LAN) 포트 : 1(EA) / 기가비트 /
										7.1(Ch) /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- 3 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_3.jpg"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body">
							<a href="${root }product/info">
								<h5 class="card-title">삼성전자 DDR4-3200 8GB</h5>
								<p class="card-text">
									<small class="text-muted"> 삼성전자 / 데스크탑 / DDR4 / DIMM /
										8(GB) / 3200(MHz),PC4-25600 / 전압 : 1.20(V) / 패키지 구성 : 1(EA) /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- 4 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_4.png"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body">
							<a href="${root }product/info">
								<h5 class="card-title">이엠텍 지포스 RTX 3060 STORM X Dual OC D6
									12GB LHR</h5>
								<p class="card-text">
									<small class="text-muted">이엠텍 / nVIDIA / 부스트 클럭 :
										1,837(MHz) / PCIe4.0,16배속 / 칩셋모델 : Geforce RTX 30 / RTX 3060 /
										메모리용량 : 12(GB) / GDDR6 / 192(bit) / 15,000(MHz) / 출력단자(DP) :
										3(EA) / 출력단자(HDMI) : 1(EA) / 4K / 8K / LED라이트 / 백플레이트 /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- 5 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_5.jpg"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body">
							<a href="${root }product/info">
								<h5 class="card-title">마이크론 Crucial P2 M.2 2280 대원CTS
									(500GB)</h5>
								<p class="card-text">
									<small class="text-muted"> 마이크론 / PC/노트북 / 용량 : 500(GB)
										/ M.2(NVMe) / M.2사이즈 : 2280 / 메모리타입 : QLC / 낸드 구조 : 3D / 쓰기속도
										: 940(MB/s) / 읽기속도 : 2,300(MB/s) / 쓰기(IOPS) : 215(K) /
										읽기(IOPS) : 95(K) / 보증기간 : 5(년) /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- 6 -->
			<div class="card mb-5 border-0">
				<div class="row g-0">
					<div>
						<a href="${root }product/info"><img src="${root}resources/image/3x2_sample_6.jpg"
							class="img-fluid rounded-start" alt="..."> </a>
					</div>
					<div>
						<div class="card-body">
							<a href="${root }product/info">
								<h5 class="card-title">웨스턴디지털 WD BLUE 7200/64M (WD10EZEX,
									1TB)</h5>
								<p class="card-text">
									<small class="text-muted"> Western Digital / PC용 HDD /
										용량 : 1(TB) / SATA3 / 디스크 크기 : 8.9cm(3.5) / 회전수 : 7,200(RPM) /
										버퍼 크기 : 64(MB) / 최대 150(MB/s) / A/S 기간 : 2년 /</small>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  수평 배너 끝 -->

		<div class="tile is-ancestor">
			<div class="tile is-vertical is-8">
				<div class="tile">
					<div class="tile is-parent is-vertical">
						<article class="tile is-child box">
							<!-- Put any content you want -->
						</article>
						<article class="tile is-child box">
							<!-- Put any content you want -->
						</article>
					</div>
					<div class="tile is-parent">
						<article class="tile is-child box">
							<!-- Put any content you want -->
						</article>
					</div>
				</div>
				<div class="tile is-parent">
					<article class="tile is-child box">
						<!-- Put any content you want -->
					</article>
				</div>
			</div>
			<div class="tile is-parent">
				<article class="tile is-child box">
					<!-- Put any content you want -->
				</article>
			</div>
		</div>
	</div>

	<!-- fluid banner -->
	<div class="main_bgimg_edit">
		<div class="container" style="text-align: left;">
			<!-- 배너 타이틀 -->
			<div class="menu_title" style="padding-top: 40px;">위쳐3 한정판 에디션</div>

			<div class="container text-center"
				style="width: 600px; margin-left: 0px;">
				<div class="row" style="height: 400px;">

					<div class="col">
						<a href="${root }product/info"> <img
							src="${root}resources/image/wolf_1.png" class="card-img-top" alt="...">
							<h5 class="card-title">강철검, 은검 케이스</h5>
						</a>
					</div>
					<div class="col">
						<a href="${root }product/info"> <img
							src="${root}resources/image/wolf_2.png" class="card-img-top" alt="...">
							<h5 class="card-title">늑대 교단 케이스</h5>
						</a>
					</div>
				</div>
			</div>

			<div class="menu_title" style="padding-top: 40px;">사은품(랜덤 증정)</div>

			<div class="container text-center"
				style="width: 600px; margin-left: 0px;">

				<div class="row" style="height: 400px;">
					<div class="col">
						<img src="${root}resources/image/goods_1.png" class="card-img-top" alt="...">
						<h5 class="card-title">예니퍼 피규어</h5>
					</div>
					<div class="col">
						<img src="${root}resources/image/goods_2.png" class="card-img-top" alt="...">
						<h5 class="card-title">게롤트 피규어</h5>
					</div>
				</div>


				<div class="row" style="height: 400px;">
					<div class="col">
						<img src="${root}resources/image/wolf_5.png" class="card-img-top" alt="...">
						<h5 class="card-title" style="color: #ffffff">늑대 메달 1</h5>
					</div>
					<div class="col">
						<img src="${root}resources/image/wolf_6.png" class="card-img-top" alt="...">
						<h5 class="card-title" style="color: #ffffff">늑대 메달 2</h5>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container">
		<!-- best 상품 -->
		<!-- 배너 -->
		<div class="cover p-3 bg-light mb-3" style="height: 50px;">
			<div class="MICEGothic">
				<strong>BEST 상품</strong>
			</div>
			<div class="MICEGothic">
				<a href="#"> + 더보기</a>
			</div>
		</div>

		<!-- 상품 목록 5열 배치-->
		<div
			class="row row-cols-4 row-cols-md-5 g-4 mb-5 d-flex justify-content-between"
			style="margin-bottom: 80px;">

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_1.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[AMD] 라이젠5 세잔 5600G</a>
								</h5>
								<p class="card-text">6코어/12스레드/3.9GHz/쿨러포함/대리점정품/멀티팩</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_2.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[AMD] 라이젠7 버미어 5800X3D</a>
								</h5>
								<p class="card-text">8코어/16스레드/3.4GHz/쿨러미포함/대리점정품</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_3.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[AMD] 라이젠 3 피카소 3200G</a>
								</h5>
								<p class="card-text">4코어/4스레드/3.6GHz/쿨러포함/대리점정품</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_4.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[AMD] 라이젠5 버미어 5600X 스페셜</a>
								</h5>
								<p class="card-text">프리즘쿨러포함/대리점정품/멀티팩</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!-- 상품 목록 끝 -->

		<!-- 이번 달 인기 상품 -->
		<!-- 배너 -->
		<div class="cover p-3 bg-light mb-3" style="height: 50px;">
			<div class="MICEGothic">
				<strong>이번 달 인기 상품</strong>
			</div>
			<div class="MICEGothic">
				<a href="#"> + 더보기</a>
			</div>
		</div>

		<!-- 상품 목록 5열 배치-->
		<div
			class="row row-cols-4 row-cols-md-5 g-4 mb-5 d-flex justify-content-between">

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_5.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[AMD] 라이젠9 버미어 5950X</a>
								</h5>
								<p class="card-text">16코어/32스레드/3.4GHz/쿨러미포함/대리점정품</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_6.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[MSI] PRO H610M-B DDR4</a>
								</h5>
								<p class="card-text">인텔(소켓1700) / 인텔 H610 / M-ATX
									(24.4x21.1cm) / DDR4 / PC4-25600 (3,200MHz) / 메모리 용량: 최대 64GB /
									VGA 연결: PCIe4.0 x16</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_7.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[삼성전자] 공식인증 980 series 500GB
										M.2 NVMe 500GB MZ-V8V500BW</a>
								</h5>
								<p class="card-text">PC/노트북용 / M.2(NVMe) / 500GB /
									TLC(3DNAND) / 읽기3000~3990M / 쓰기2500~2990M / 컨트롤러고정 / DRAM미탑재 /
									보증기간5년 / 80mm</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<!--  상품 -->
			<div class="col">
				<div class="MICEGothic">
					<!-- 같은 높이가 필요한 경우에는, 카드에 .h-100 클래스를 추가
				Sass 에 $card-height: 100%를 설정하면, 클래스 추가 없이 기본적(항상)으로 같은 높이를 사용할 수 있다. -->
					<a href="${root }product/info">
						<div class="card h-100 border-0">
							<img src="${root}resources/image/best_product_8.jpg"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="${root }product/info">[Colorful] GeForce RTX 3060
										Ti 토마호크 DUO V2 D6 8GB LHR</a>
								</h5>
								<p class="card-text">8nm / 베이스클럭: 1500MHz / 부스트클럭: 1725MHz /
									스트림 프로세서: 4864개 / PCIe4.0x16 / GDDR6(DDR6) / 출력단자: HDMI2.1 ,
									DP1.4 / 사용전력: 최대 220W / 전원 포트: 8핀 1개 / 전원부: 9+2페이즈 / 3개 팬 /
									가로(길이): 254mm / LHR</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!-- 상품 목록 끝 -->

	</div>
	<!-- 메인 컨테이너 끝 -->

	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<!-- 플로팅 -->
	<div class="floating">
		<div class="floating_in">
			<div class="list-group">
				<div class="MICEGothic">
					<a href="${root }cart/list"
						class="list-group-item list-group-item-action" aria-current="true">장바구니</a>
					<a href="#" class="list-group-item list-group-item-action">최근 본
						상품</a> <a href="${root }support/list"
						class="list-group-item list-group-item-action">문의하기</a> <a
						href="#top" class="list-group-item list-group-item-action">TOP</a>
				</div>
			</div>
		</div>
	</div>
	<script>
window.onload = function(){
	  var slides = document.getElementsByClassName('carousel-item'),
	      addActive = function(slide) {slide.classList.add('active')},
	      removeActive = function(slide) {slide.classList.remove('active')};
	  addActive(slides[0]);
	  
	  setInterval(function (){
	    for (var i = 0; i < slides.length; i++){
	      if (i + 1 == slides.length) {
	        addActive(slides[0]);
	        slides[0].style.zIndex = 100;
	        setTimeout(removeActive, 350, slides[i]); //Doesn't be worked in IE-9
	        break;
	      }
	      if (slides[i].classList.contains('active')) { 
	        slides[i].removeAttribute('style');
	        setTimeout(removeActive, 350, slides[i]); //Doesn't be worked in IE-9
	        addActive(slides[i + 1]);
	        break;
	      }
	    } 
	  }, 3000);
}
</script>
</body>
</html>
