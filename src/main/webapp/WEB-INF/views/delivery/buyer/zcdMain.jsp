<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<style>
	.eventImage{
		margin : o auto;
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
		font-size: 25px;
	}
	.sub-container{
		margin-top: 30px;
	}
	.category-img, .category-title{
		text-align: center;
	}
	.category-img img{
		width: 60px;
	}
	.star{
		color: #ffa500;
	}
	#category {
		margin:20px;
		background-color: #9ac6e8;
		width: 50px;
		height: 97px;
		line-height: 97px;
		border-radius: 50px;
	}
	
	#category a{
		color: #fff;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
		<div class="eventImage">
			<a href="/eventList.do"><img src="/resources/img/event/이벤트메인이미지.jpg"></a>
		</div>
		<div class="main-copy">
			<img src="/resources/img/zcdBuyer/sofancoock.png">
			<div class="copy"><span class="main-color">집</span>에서 <span class="main-color">쿠-욱</span><br>
			누르기만 해도 찾아올 음식을 원하신다면,</div>
			<div class="row mb-4">
				<div class="col-md-3">
					<a href="#"><img src="" class="img-thumbnail p-0 border-0"></a>
				</div>
				<div class="col-md-6">
					<form action="/zcdFindResult.do" method="post">
						<div class="input-group input-group-lg">
							<input type="text" id="keyword" name="keyword" class="form-control" placeholder="음식을 검색해보세요" />
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" id="searchKeyword" type="submit"><i class="fas fa-search"></i></button>
								<script>
									$(function(){
										$("#searchKeyword").click(function(){
											var keyword=$("#keyword").val();
											console.log(keyword);
											$.ajax({
												url:"/zcdFindResult.do",
												type:"post",
												data:{keyword:keyword}
											});
										});
									});
								</script>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="sub-container">
				<h3 style="text-align: left">집쿡 맛집을 찾고 있다면</h3>
				<div class="store-wrap">
					<div class="row category-img">
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=한식">한식</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=치킨">치킨</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=분식">분식</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=돈까스/회/일식">일식</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=족발/보쌈">족발/보쌈</a></div>
					 	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=피자">피자</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=중식">중식</a></div>
					  	<div class="col-md-1" id="category"><a href="/searchCg.do?category1=카페/디저트">디저트</a></div>
					</div>
				</div>
			</div>
			<div class="sub-container">
				<h3 style="text-align: left">전체 음식점</h3>
				<div class="store-wrap">
					<div class="row">
					<c:forEach items="${main }" var="m">
						<div class="col-md-2 mb-4">
							<div class="card">
								<img class="card-img-top" src="/resources/upload/zcdSeller/${m.filename }" alt="" />
								<div class="card-body">
									<a class="h6 goods_name product-name" href="/marketView.do?storeNo=${m.storeNo }&memberNo=${sessionScope.m.memberNo}">${m.storeName }</a>
									<p class="m-0"><small>배달비 ${m.minPrice }원</small></p>
								</div>
							<div class="card-footer p-0"></div>
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
			</div>
			</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>