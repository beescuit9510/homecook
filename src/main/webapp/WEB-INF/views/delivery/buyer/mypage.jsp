<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info:first-child{
		margin-bottom: 0;
		border-bottom: 0;
	}
</style>
</head>
<body>
<div class="s-wrapper">
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
        <div class = "content_div">
        	<div class = "content_title">나의 집쿠욱
        		<div class="">우리집 주소는 <span>서울시 어쩌구</span><button>변경</button></div>
        	</div>
        	<div class = "content_div_area">
        		<div class = "content_div_content">
        			<div class = "content_div_info">
        				<div class = "content_div_opt1">집쿠욱 레벨</div>
        				<div class = "content_div_opt2">집쿠욱 포인트</div>
        				<div class = "content_div_opt3">주문내역</div>
        			</div>
        			<div class = "content_div_info">
        				<div class = "content_div_opt1" style="color:#333; font-weight:600;">집쿡초보</div>
        				<div class = "content_div_opt2" style="color:#333; font-weight:600;">555</div>
        				<div class = "content_div_opt3"><a href="#" style="color:#333; font-weight:600;">보러가기</a></div>
        			</div>
        		</div>	
        	</div>
        </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageFooter.jsp"%>
      