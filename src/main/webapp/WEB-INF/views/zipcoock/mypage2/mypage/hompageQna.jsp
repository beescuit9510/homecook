<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info img{
		width: 300px;
	}
	#text-emp{
		color:#333; 
		font-weight:600;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/zipcoock/mypage2/mypage/zcdMypageHeader.jsp"%>
		<div class = "content_div">
       	<div class = "content_title">쿠폰함</div>
       	<div class = "content_div_area">
       		<div class = "content_div_content">
       		<!-- 
       			<div class = "content_div_info">
       				<div class = "content_div_opt1">쿠폰 정보</div>
       				<div class = "content_div_opt2">사용기한</div>
       				<div class = "content_div_opt3">사용여부</div>
       			</div>
       		 -->
       		 <c:forEach items="${qnaList}" var="q">
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
 				<div class = "content_div_opt1"><div style="background:url(${q.filepath});"></div></div>
 				<div class = "content_div_opt1"><div class="temp">제품사진</div></div>
   				<div class = "content_div_opt2" id="text-emp">${q.productName }</div>
   				<div class = "content_div_opt3" id="text-emp"><button class="buy_btn">수정하기</button></div>
       		</div>
       		 </c:forEach>
       		</div>	
       	</div>
    </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/zipcoock/mypage2/mypage/zcdMypageFooter.jsp"%>
	
<style>

	.temp {
		background:
			url("https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg");
	}

	.coupon-tbl{
		text-align: center;
	}
	.content_div_opt1>div{
		width: 300px; 
		height: 100px;
		line-height: 100px;
		background-color: #eee;
		margin: 5px;
		background-repeat: no-repeat;
		background-size: cover;

	}
</style>