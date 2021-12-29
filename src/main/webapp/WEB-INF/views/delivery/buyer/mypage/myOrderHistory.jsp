<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel="stylesheet" href="/resources/css/deliveryBuyer/orderHistory.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	.content_div_info img{
		width: 300px;
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
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class = "main_field">        	
        	<div class = "main_content2">
        		<div class = "side_nav">
	        		<div class = "my_info">
	        			<div class = "my_info_div">
	        				<span class = "my_info_span">환영합니다</span>
	        			</div>
	        			<div class = "user_div">
	        				<div class = "user_div_div">
	        					<div class= "user_div_content">
	        						<span class = "user_div_name">${sessionScope.m.memberName }<span class = "user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class = "side_nav_content">
	        			<a href="zcdMypage.do" class = "side_nav_div side_nav_div_selected"><span class = "side_nav_span side_nav_span_selected">정보 확인/수정</span></a>
	        			<a href="zcdMyReview.do" class = "side_nav_div"><span class = "side_nav_span">리뷰내역</span></a>
        			</div>
        		</div>
        <div class = "content_div">
        	<div class = "content_title">주문 내역</div>
        	<div class = "content_div_area">
        		<div class = "content_div_content">
        		<c:if test="${not empty zoh }">
        			<table class="orderHistory">
        				<tr>
        					<th>상호명</th>
        					<th>요청 사항</th>
        					<th>배달 상태</th>
        					<th>주문 시간</th>
        					<th>주소</th>
        					<th>리뷰 쓰기</th>
        				</tr>
	        			<c:forEach items="${zoh }" var="z" varStatus="status">
	        				<tr>
	        					<td>${z.storeName }</td>
	        					<td>${z.orderRequest }</td>
	        					<td>${z.orderState }</td>
	        					<td>${z.orderTime }</td>
	        					<td>${z.orderAddress }<br>${z.orderAddress2 }</td>
	        					<td>
	        						<c:if test="${z.orderState eq '배달완료' }">
	        							<button class="reviewBtn">리뷰 쓰기</button>
	        							<div id="insertRv">
	        			<form action="/zcdInsertReview.do" method="post">
		        			<input type="hidden" id="storeNo" value="${z.storeNo }">
		        			<input type="hidden" id="orderNo" value="${z.orderNo }">
		        			<textarea id="reviewContent" rows="3"></textarea>
		        			<input type="submit" value="등록" id="reviewBtn" style="width: 100%">
		        		</form>
		        	</div>
	        						</c:if>
	        					</td>
	        				</tr>
	        			</c:forEach>
        			</table>
        			</c:if>
	        	<c:if test="${empty zoh }">
	            	<h3>주문 내역이 없습니다.</h3>
	            </c:if>
        		</div>
        	</div>
        </div>
  </div> <!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</div>
	<script>
		$(function() {
			
			$("#insertRv").css("display","none");
			
			$("#reviewBtn").click(function() {
				$("#insertRv").css("display","block");
				$("#reviewContent").focus();
			});
		});
	</script>
</body>
</html>