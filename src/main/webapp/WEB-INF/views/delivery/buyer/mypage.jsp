<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
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
	        						<span class = "user_div_name">신동훈<span class = "user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class = "side_nav_content">
	        			<a href="zcdMypage.do" class = "side_nav_div side_nav_div_selected"><span class = "side_nav_span side_nav_span_selected">정보 확인/수정</span></a>
	        			<a href="zcdMyCoupon.do" class = "side_nav_div"><span class = "side_nav_span">쿠폰함</span></a>
	        			<a href="zcdMyReview.do" class = "side_nav_div"><span class = "side_nav_span">리뷰내역</span></a>
	        			<a href="zcdMyQnA.do" class = "side_nav_div"><span class = "side_nav_span">문의내역</span></a>
        			</div>
        		</div>
        <div class = "content_div">
        	<div class = "content_title">나의 집쿠욱</div>
        	<div class = "content_div_area">
        		<div class = "content_div_content">
        			<div class = "content_div_info">
        				<div class = "content_div_opt1">집쿠욱 레벨</div>
        				<div class = "content_div_opt2">집쿠욱 포인트</div>
        				<div class = "content_div_opt3">주문내역</div>
        			</div>
        			<div class = "content_div_info">
        				<div class = "content_div_opt1" id="text-emp">집쿡초보</div>
        				<div class = "content_div_opt2" id="text-emp">555</div>
        				<div class = "content_div_opt3"><a href="#" id="text-emp">보러가기</a></div>
        			</div>
        			<div class = "content_title" style="margin-top:20px; margin-bottom: 15px;">정보 확인/수정</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">이름</div>
	        			<div class="content_div_opt2" id="text-emp">문수라</div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">주소</div>
	        			<div class="content_div_opt2"><input type="text" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">전화번호</div>
	        			<div class="content_div_opt2"><input type="text" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">현재 비밀번호</div>
	        			<div class="content_div_opt2"><input type="password" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">새로운 비밀번호</div>
	        			<div class="content_div_opt2"><input type="password" class="input"></div>
	        		</div>
	        		<div class="btn-area">
		        		<button type="submit" class="buy_btn">변경</button>
		        		<button type="reset" class="cart_btn">취소</button>	        		
	        		</div>
        		</div>	
        	</div>
        </div>
  </div> <!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</div>
	<style>
		.input{
			height: 24px;
		}
	</style>
      