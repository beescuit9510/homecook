<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>
	.content_div_info:first-child{
		margin-bottom: 0;
		border-bottom: 0;
	}
	.btn-area{
		text-align: center;
		display: flex;
	}
	.btn-area>button:first-child {
		margin-right: 10px;
	}
	#text-emp{
		color:#333; 
		font-weight:600;
	}
	.side_nav_div:hover{
		background: rgba(51, 51, 51, 0.05);
		cursor: pointer;
		font-weight: 700;
	}
	.side_nav_div:hover span{
		font-weight: 700;
	}
	.side_nav_content a{
		text-decoration: none;
	}
.container{
	margin-top: 100px;
	margin-bottom: 50px;	
}
.pagination{
	height:60px;
}
#pageNavi{
	display:flex;
	width:420px;
	margin: 0 auto;
	justify-content: center;
}
.table{
	font-size: 12px;
	overflow: hidden;
	text-align: center;
}
.btn{
	background-color:#9ac6e8; 
	color:#ffffff;
}
.btn:hover{
	color: #fff;
	background-color: #7abaff;
}
.well {
    min-height: 20px;
    padding: 19px;
    margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
}
</style>
</head>
<body>
<div class="s-wrapper">
<%@include file="/WEB-INF/views/common/header.jsp"%>
<div class = "main_field"> 
		<div class="main_content2" >
			<div class="side_nav" style="padding-top: 50px; margin-left: 30px;">
				<div class="my_info">
					<div class="my_info_div">
						<span class="my_info_span">환영합니다</span>
						
					</div>
					<div class="user_div">
					
						<div class="user_div_div">
						
							<div class="user_div_content">
								<span class="user_div_name">${sessionScope.m.memberId}<span class="user_div_nim">님</span></span>
							</div>
							
						</div>
						
					</div>
				</div>
				
				<div class="side_nav_content">
					<a href="/zipsellerMypage.do" class="side_nav_div"><span
						class="side_nav_span side_nav_span">정보 확인/수정</span></a> <a
						href="productList.do?reqPage=1" class="side_nav_div side_nav_div">
						<span class="side_nav_span">상품 관리</span></a> 
						<a href="/shippingInfomation.do" class="side_nav_div side_nav_div_selected"><span class="side_nav_span_selected">매출 정보</span></a> 
						<a href="zcdMyReview.do" class="side_nav_div"><span	class="side_nav_span">리뷰내역</span></a> 
						<a href="zcdMyQnA.do" class="side_nav_div"><span class="side_nav_span">문의내역</span></a>
				</div>
			</div>


        <div class = "content_div">
        	<div class = "content_div_area">
        		
        		<div class = "content_div_content" style="background: white; padding: 20px 20px; border: 1px solid rgb(221, 221, 221); overflow: hidden;">
        				<div id="title">
						<h2>주문 정보 조회 관리</h2>
                </div>

          <div class="well well-lg" style="background-color:white;">
          	<fieldset>
          	<legend>주문정보</legend>
			<table class="table table-bordered" id="orderyView" style="width:100%;">
				<tr>
					<th style="width:15%;">주문번호</th>
					<td style="width:35%;">${oi.orderNo }</td>
					<th style="width:15%;">주문일자</th>
					<td style="width:35%;">${oi.orderDate }</td>
				</tr>
				<tr>
					<th>주문금액(원)</th>
					<td>${oi.paymentPrice }</td>
					<th>주문상태</th>
					<c:choose>
						<c:when test="${oi.orderStatus eq 1}">
							<td>결제완료(배송전)</td>
						</c:when>
						<c:when test="${oi.orderStatus eq 2}">
							<td>배송중</td>
						</c:when>
						<c:when test="${oi.orderStatus eq 3}">
							<td>배송완료</td>
						</c:when>
					</c:choose>
				</tr>
				<tr>
					<th style="width:15%;">주문자</th>
					<td style="width:35%;">${oi.memberName }</td>
					<th style="width:15%;">연락처</th>
					<td style="width:35%;">${oi.memberPhone }</td>
				</tr>
				<tr>
					<th style="width:15%;">우편번호</th>
					<td colspan="3">${oi.postcode }</td>
				</tr>
				<tr>
					<th style="width:15%;">도로명주소</th>
					<td style="width:35%;">${oi.addressRoad }</td>
					<th style="width:15%;">상세주소</th>
					<td style="width:35%;">${oi.addressDetail }</td>
				</tr>
				<tr>
					<th style="width:15%;">주문요청사항</th>
					<td colspan="3">${oi.deliveryRequest }</td>
				</tr>								
			</table>
			</fieldset>
          </div>
          <div class="well well-lg" style="background-color:white;">
          	<legend>주문상품</legend>
          	<fieldset>
			<table class="table table-bordered" style="width:100%;">
				<tr class="table-primary" id="orderProductList">
					<th style="width:15%;">상품주문번호</th><th style="width:45%;">상품명</th><th style="width:20%;">색상</th><th style="width:10%;">사이즈</th><th style="width:10%;">수량</th>
				</tr>
				<c:forEach items="${list }" var="p">
					<tr class="table-light" id="orderProductList">
						<td>${p.opNo }</td>
						<td>${p.productName }</td>
						<td>${p.productColor }</td>
						<td>${p.productSize }</td>
						<td>${p.orderCount }</td>
					</tr>
				</c:forEach>
			</table>
			<div id="pageNavi">${pageNavi }</div>
		</fieldset>
		  </div> 
          <div class="well well-lg" style="background-color:white;">
          	<legend>배송정보</legend>
          	<form action="/updateOrder" method="post">
          	<input type="hidden" name="orderNo" value="${oi.orderNo }">
          	<input type="hidden" name="memberNo" value="${oi.sellerNo }" >
          	<table class="table table-bordered" style="width:100%;">
          		<tr id="deliveryView">
					<th style="width:50%;">택배사</th>
					<th style="width:50%;">송장번호</th>
				</tr>
				<tr id="deliveryView">
					<c:choose>
						<c:when test="${empty oi.deliveryCompany }">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1" selected>배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 1}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1" selected>배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 2}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1">배송정보 없음</option>
	          						<option value="2" selected>한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 3}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1">배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3" selected>CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 4}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1">배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4" selected>우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 5}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1">배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5" selected>편의점</option>
	          						<option value="6">기타배송</option>
	          					</select>
							</td>
						</c:when>
						<c:when test="${oi.deliveryCompany eq 6}">
							<td>
								<select class="btn btn-default" name="deliveryCompany">
	          						<option value="1">배송정보 없음</option>
	          						<option value="2">한진</option>
	          						<option value="3">CJ</option>
	          						<option value="4">우체국</option>
	          						<option value="5">편의점</option>
	          						<option value="6" selected>기타배송</option>
	          					</select>
							</td>
						</c:when>
					</c:choose>
					<td>
						<input type="text" value="${oi.deliveryNo }" name="deliveryNo">
					</td>
				</tr>				 	
			</table>
			<c:if test="${oi.orderStatus lt 3 }">
				<button type="submit" class="btn btn-primary btn-block">배송정보등록</button>
			</c:if>
			
		  	</form>
		  </div>
		  <c:if test="${oi.orderStatus lt 3 }">
		  <div>
		  	<form action="/deliveryComplete" method="post">
		  		<input type="hidden" name="orderNo" value="${oi.orderNo }">
		  		<input type="hidden" name="memberNo" value="${oi.memberNo }">
		  		<input type="hidden" name="orderPrice" value="${oi.orderPrice }">
		  		<input type="hidden" name="sellerNo" value="${oi.sellerNo }">
		  		<button class="btn btn-block">배송완료</button>
		  	</form>
		  </div>
		  </c:if>	            	        
          </div>
              
          	
        		</div>	
        	</div>
        </div>
        	</div>
        </div>
    </div> <!-- main content -->
    <input type="hidden" name=memberNo value="${sessionScope.m.memberNo}">
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
      </html>
      