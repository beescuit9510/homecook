<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.eventImage{
		height: 300px;
		background-color: rgba(0, 0, 0, 0.2);
	}
	.main-copy{
		text-align: center;
	}
	.main-copy>img{
		width: 300px;
		
	}
	.copy{
		font-weight: 600;
		font-size: 20px;
		padding: 20px;
	}
	.main-color{
		color: #9ac6e8;
		font-weight: 900;
		font-size: 30px;
	}
	#keyword{
		width: 50%;
	}
	.fa-search{
		cursor: pointer;
		margin-left: 10px;
	}
	.sub-container{
		margin-top: 30px;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
		<a href="zcdMypage.do">마이페이지</a>
		<div class="eventImage"></div>
		<div class="main-copy">
			<img src="/resources/img/zcdBuyer/sofancoock.png">
			<div class="copy"><span class="main-color">집</span>에서 <span class="main-color">쿠-욱</span><br>
			누르기만 해도 찾아올 음식을 원하신다면,</div>
			<div id="searchBox">
				<form action="/searchDelivery" method="post">
					<input type="text" name="keyword" id="keyword" class="input">
					<label><i class="fas fa-search fa-2x"></i><input type="submit" value="검색" style="display: none;"></label>
				</form>			
			</div>
		</div>
		<div class="sub-container">
			<h3>집쿡 맛집을 찾고 있다면</h3>
			<div class="store-wrap">
				<div class="store-img"></div>
				<div class="store-info"></div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>