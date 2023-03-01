@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8>
@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="margin-top : 150px;">
		<h2>배송정보</h2>
		<p class="txt">
			<span>기본배송</span>결제 마감시간 전에 입금하시면 당일 발송됩니다.
		</p>
		<table class="table" style="margin-bottom : 100px;">

			<colgroup>
				<col >
				<col>
				<col>
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th>구분</th>
					<th>일반상품/아이웍스PC</th>
					<th>추천조립/일반조립</th>
					<th>튜닝 PC</th>
				</tr>
				<tr>
					<th>CJ대한통운<a
						href="javascript:window_open('../delivery_info/delivery.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a></th>
					<td>오후 5시 30분까지 결제하면<br>
					<strong>당일발송</strong></td>
					<td rowspan="4" class="last">오후 4시까지 결제하면<br>
					<strong>당일발송</strong></td>
					<td rowspan="4" class="last">오후 4시까지 결제하면<br>
					<strong>당일발송</strong></td>
				</tr>
				<tr>
					<th>한진택배<a
						href="javascript:window_open('../delivery_info/delivery.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a></th>
					<td>오후 5시까지 결제하면<br>
					<strong>당일발송</strong></td>
				</tr>
				<tr>
					<th>롯데택배<a
						href="javascript:window_open('../delivery_info/delivery.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a></th>
					<td>오후 5시까지 결제하면<br>
					<strong>당일발송</strong></td>
				</tr>
				<tr>
					<th class="last">경동화물<a
						href="javascript:window_open('../delivery_info/delivery_kdexp.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a><br>
					<span>(플래티늄 회원 전용)</span></th>
					<td class="last">오후 4시까지 결제하면<br>
					<strong>2일 이내 도착</strong></td>
				</tr>
			</tbody>
		</table>
		<p class="txt" style="margin-top: 60px;">
			<span>빠른배송</span>결제 마감시간 전에 입금하시면 당일 받으실 수 있습니다.
		</p>
		<table class="table" style="margin-bottom : 100px;">
			<colgroup>
				<col>
				<col>
				<col>
				<col>
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th>구분</th>
					<th>일반상품</th>
					<th>아이웍스PC</th>
					<th>추천조립/일반조립</th>
					<th>튜닝 PC</th>
				</tr>
				<tr>
					<th>당일택배<a
						href="javascript:window_open('../delivery_info/delivery_sameday.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a><br>
					<span>(서울,경기 일부지역)</span></th>
					<td>낮 12시까지 결제하면<br>
					<strong>오후 10시까지 도착</strong><br> ※ (OS설치 요청 시 예외)
					</td>
					<td colspan="3">오전 10시까지 결제하면<strong>&nbsp;오후 10시까지 도착</strong><br>
						※ (OS설치 요청 시 예외)
					</td>
				</tr>
				<tr>
					<th>방문수령<a
						href="javascript:window_open('../delivery_info/delivery_visits.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a><br>
					<span>(용산점, 가산점)</span></th>
					<td colspan="2">오후 5시 30분까지 결제하면<br>
					<strong>당일수령</strong></td>
					<td colspan="2">오후 3시까지 결제하면<br>
					<strong>당일수령</strong></td>
				</tr>
				<tr>
					<th class="last">퀵서비스<a
						href="javascript:window_open('../delivery_info/delivery_quick.htm','940','600','scrollbars=no','');"
						class="ico_n_win"></a><br>
					<span>(서울,경기 일부지역)</span></th>
					<td class="last" colspan="2">오후 5시 30분까지 결제하면<br>
					<strong>3시간 30분 이내 도착</strong></td>
					<td class="last" colspan="2">오후 4시까지 결제하면<br>
					<strong>3시간 30분 이내 도착</strong></td>
				</tr>
			</tbody>
		</table>
		<p class="txt" style="margin-top: 60px;">
			<span>배송 특이사항</span>
		</p>
		<div class="txt_box">
			<span class="co_red">- 상세페이지의 네이버페이 주문형으로 결제 시 일반배송만 가능하며,
				주문결제 페이지의 네이버페이 간편결제형으로 결제 시 모든 택배방법 이용이 가능합니다.</span><br> - 도서산간지역은
			2~3일 추가 소요됩니다.<br> - 일요일, 공휴일은 배송되지 않습니다.
		</div>
		<h2 style="margin-top: 60px;">
			교환/반품/취소 문의정보<span class="btnSmall btnGray"
				style="margin: 6px 0 0 8px;"><a
				href="../cscenter/asRegulationsL.htm" target="_blank">상세설명 보기</a></span>
		</h2>
		<table class="table" style="margin-bottom : 100px;">
			<colgroup>
				<col>
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th>교환/반품 신청기준</th>
					<td>- 제품 수령 후 7일 이내에 교환/반품을 신청하실 수 있습니다.<br> - 제품포장상태(박스,
						내용물등)이 완벽해야 하며 제품 발송시 동봉해드린 영수증이 있으셔야 합니다.<br> -교환 및 반품에 소요되는
						운송비는 고객분께서 부담하셔야 됩니다. (색상 교환, 사이즈 교환, 모델 변경 등 포함)<br>
					<br> <span class="co_red">※ 하지만 다음의 각 내용에 해당하는 경우에는
							교환/반품 신청이 받아들여지지 않을 수 있습니다.</span><br>
					<br> 1) 소비자의 책임 있는 사유로 상품 등이 멸실/훼손된 경우 (상품 확인을 위한 포장 훼손 제외)<br>
						2) 소비자의 사용/소비에 의해 상품 등의 가치가 현저히 감소한 경우<br> 3) 시간의 경과에 의해 재판매가
						곤란할 정도로 상품 등의 가치가 현저히 감소한 경우<br> 4) 복제가 가능한 상품 등의 포장을 훼손한 경우
					</td>
				</tr>
				<tr>
					<th>A/S 운송비</th>
					<td>- 제품을 수령한 날로부터 3개월 이내에 혹은 그 사실을 인지한 날로부터 30일 이내에 컴퓨존으로 접수
						시 운송료는 판매자(컴퓨존)가 부담합니다.<br> - 고객 변심에 의해 반품하시는 경우 운송비는 전액 고객이
						부담해야 합니다.
					</td>
				</tr>
				<tr>
					<th>상품 하자문의 및 기타 기준 사항</th>
					<td>- 사용 중 발생한 하자의 환불/교환 등은 '공정거래위원회 소비자분쟁해결기준'에 준하여 처리됩니다.<br>
						- 미성년자가 법정대리인의 동의 없이 구매계약을 체결한 경우, 미성년자와 법정대리인은 구매계약을 취소할 수 있습니다.
					</td>
				</tr>
				<tr>
					<th class="last">주의사항</th>
					<td class="last">- 품질 경영 및 공산품안전관리법에 의거하여 안전검사대상공산품이나 어린이
						보호포장대상 공산품을 구매하실 경우에는 안전검사를 받은 제품이거나<br>어린이 보호포장 적용제품인지를
						확인하시기 바랍니다.<br> - 전기용품안전관리법 및 전기통신기본법, 전파법에 의거하여 인증 대상 상품을
						구매하실 경우, 안전인증 또는 형식승인,<br>전자파적합등록 제품인지 여부를 확인하시기 바랍니다.
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>