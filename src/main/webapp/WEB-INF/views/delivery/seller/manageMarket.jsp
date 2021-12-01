<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliverySeller/manageMarket.css">
</head>
<body>
<div class="s-wrapper">
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="main_field">        	
        	<div class="main_content2">
        		<div class="side_nav">
	        		<div class="my_info">
	        			<div class="my_info_div">
	        				<span class="my_info_span">환영합니다</span>
	        			</div>
	        			<div class="user_div">
	        				<div class="user_div_div">
	        					<div class="user_div_content">
	        						<span class="user_div_name">신동훈<span class="user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class="side_nav_content">
	        			<div class="side_nav_div side_nav_div_selected"><span class="side_nav_span side_nav_span_selected">매장관리</span></div>
	        			<div class="side_nav_div"><span class="side_nav_span">메뉴관리</span></div>
	        			<div class="side_nav_div"><span class="side_nav_span">주문접수</span></div>
	        			<div class="side_nav_div"><span class="side_nav_span">리뷰관리</span></div>       			
        			</div>
        		</div>
        		
        		<div class="content_div">
        			<div class="content_title">매장관리</div>
        			<div class="content_div_area">
        				<div class="content_div_content">
        					<div class="content_div_info">
        						<div class="content_div_opt1">상호명</div>
        						<div class="content_div_opt2">매장 전화번호</div>
        						<div class="content_div_opt3">관리</div>
        					</div>
        					<button class="add_market_btn">+ 매장 정보 등록하기</button>
        				</div>
        			</div>
        		</div>
        	</div> <!-- main content -->
        </div> <!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</div>
</body>
</html>