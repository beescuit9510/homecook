<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/zcdCart.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
		<div class="purchasePage">
			<div class="content_title">주문/결제</div>
				<div class="purchase-content">
					<fieldset>
						<legend>구매자 정보</legend>
				            <table>
				            	<tr>
				            		<td>이름</td>
				            		<td>문수라</td>
				            	</tr>
				            	<tr>
				            		<td>이메일</td>
				            		<td>email@gmail.com</td>
				            	</tr>
				            	<tr>
				            		<td>휴대폰 번호</td>
				            		<td>
				            			<input type="text" id="memberPhone" value="010-0000-0000"><button type="submit">수정</button><br>
				            			<input type="text" id="checkCode"><button type="button" class="checkCode">인증완료</button>
				            		</td>
				            	</tr>
				            </table>				
					</fieldset>
				
					<fieldset>
						<legend>받는 사람 정보</legend>
							<table>
								<tr>
									<td colspan="2">
										<label><input type="radio" name="addr" value="서울시 영등포구" checked>기본 배송지</label>
										<label><input type="radio" name="addr" value="서울시 관악구">1번</label>
										<label><input type="radio" name="addr" value="5개까지">2번</label>
										<button type="button">배송지 추가</button>
									</td>
								</tr>
				            	<tr>
				            		<td>이름</td>
				            		<td>문수라</td>
				            	</tr>
				            	<tr>
				            		<td>배송주소</td>
				            		<td>서울시 영등포구</td>
				            	</tr>
				            	<tr>
				            		<td>연락처</td>
				            		<td>
				            			010-0000-0000
				            		</td>
				            	</tr>
				            	<tr>
				            		<td>배송 요청 사항</td>
				            		<td>
				            			<input type="text">
				            		</td>
				            	</tr>
				            </table>
					</fieldset>
				
					<fieldset>
						<legend>구매 정보</legend>
							<table>
				            	<tr colspan="2">
				            		<td>내일(목) 12/23 도착 보장</td>
				            	</tr>
				            	<tr>
				            		<td>1번</td>
				            		<td>수량 2개/무료배송</td>
				            	</tr>
				            	<tr>
				            		<td>2번</td>
				            		<td>수량 1개/무료배송</td>
				            	</tr>
				            </table>			            
					</fieldset>
					<fieldset>
						<legend>결제 정보</legend>
				            <table>
				            	<tr>
				            		<td>총 상품 가격</td>
				            		<td>30,620원</td>
				            	</tr>
				            	<tr>
				            		<td>배송비</td>
				            		<td>0원</td>
				            	</tr>
				            	<tr>
				            		<td>총 결제 금액</td>
				            		<td>30,620원</td>
				            	</tr>
				            </table>
					</fieldset>
				<div class="btn-area">
					<button id="payment" type="button">결제하기</button>
					<button id="no-payment" type="button">결제없이 진행</button>
				</div>
			</div>
		</div>
		<div class="purchase-content">
			결제 성공
		</div>
		<div class="purchase-content">
			결제 실패
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	
	<script>
	$("#payment").click(function(){
		var price = $("#result").html();
		var d = new Date();
		var date = d.getFullYear()+""+(d.getMonth()+1)+""+d.getDate()+""+d.getHours()+""+d.getMinutes()+""+d.getSeconds();
		console.log(date);
		console.log(price);
		IMP.init("imp"); //가맹점 식별코드
		IMP.request_pay({
			merchant_uid : "ZIPcoock"+date, //거래아이디
			name : "ZIPcoock"+date, //결제이름설정
			amount : $("#result").html(), //결제금액
			buyer_email : $("#email").val(), //구매자이메일
			buyer_name : $("#name").val(),//이름
			buyer_phone : $("#phone").val() //전화번호
			
		},function(rsp){
			if(rsp.success){
				$(".purchase-content")[0].display
				console.log("카드승인번호 : "+rsp.apply_num);
				$("#payForm").submit();
			}else{
				alert("결제실패");
			}
		});
	});
	$("#no-payment").click(function() {
		
	});
	</script>
</body>
</html>