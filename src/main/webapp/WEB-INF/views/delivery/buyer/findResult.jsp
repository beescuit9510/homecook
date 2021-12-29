<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<style>
	.selectBox{
		text-align: left;
		margin-bottom: 30px;
	}
	.search-category{
		width: 100px;
		padding: 15px 15px;
		border: 1px solid #c4ddf1;
		font-family: inherit;
		border-radius: 0px;
		appearance: none;
		background-color: #fff;
	}
	select {
		width: 150px;
		padding: 15px 15px;
		border: 1px solid #c4ddf1;
		font-family: inherit;
		background: url('/resources/img/zcdBuyer/icon/arrow.png') no-repeat 95% 50%;
		border-radius: 0px;
		appearance: none;
	}
	select:focus, option:focus, button:focus{
		outline: none;
		border-color: #8ab2d2;
	}
	.star{
		color: #ffa500;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
	<!-- 
		<div class="selectBox">
			<select class="search-select" name="">
				<option value="recommend">배달비</option>
				<option value="popular">전체</option>
				<option value="topRated">무료배달</option>
				<option value="newest">2,000원 이하</option>
			</select>
		</div>
	 -->	
		<div class="store-wrap">
		<c:forEach items="${zs }" var="zs">
			<div class="row">
				<div class="col-md-3 mb-4">
					<div class="card">
						<img class="card-img-top" src="/resources/upload/zcdSeller/${zs.filename }" alt="" />
						<div class="card-body">
							<a class="h6 goods_name product-name" href="/marketView.do?storeNo=${zs.storeNo }">${zs.storeName }</a>
							<p class="m-0"><small>배달비 ${zs.minPrice }원</small></p>
						</div>
					<div class="card-footer p-0"></div>
					</div>
				</div>
			</div>
		</c:forEach>
		
		<c:if test="${empty zs }">
	      	<h3>검색 결과가 없습니다.</h3>
	    </c:if>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>