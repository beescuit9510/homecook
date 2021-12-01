<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/mypage/searchbar.css">
<link rel="stylesheet" href="/resources/css/mypage/paging.css">
<link rel="stylesheet" href="/resources/css/mainboard/star.css">


<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<!-- partial -->
<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js'></script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp"%>
		<div class="main_field">
			<div class="main_content">
				<div class="main_content_field">
	



<p class="search-p">
	<span class="search-board">전체상품</span>
	
	<span class="search-category"> > 뷰티</span>
</p>


        		
<div class="container">
	<div class="row mb-4">
		<div class="col-md-8">
		</div>
		<div class="col-md-1">
		</div>
		<div class="col-md-1">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row mb-4">
		<div class="col-md-2">
      <a href="#"><img src="" class="img-thumbnail p-0 border-0" /></a>
    </div>
		<div class="col-md-6">
			<div class="input-group input-group-lg">
				<input type="text" id="" name="" class="form-control" placeholder="상품을 검색해보세요" />
				<select class="form-control form-control-lg rounded-0">
					<option>최신순</option>
					<option>낮은 가격순</option>
					<option>높은 가격순</option>
				</select>
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"><i class="fas fa-search"></i></button>
				</div>
			</div>
		</div>
		<div class="col-md-1">
			<button class="btn btn-outline-secondary btn-block btn-lg" type="button">
				<i class="fas fa-sync-alt"></i>
			</button>
		</div>
		<div class="col-md-1">
		</div>

		<div class="col-md-2">
		</div>
	</div>
</div>      		
  


					<div class="main-board-search-bar">
					
<!-- 
						<form action="/addrFrm.do" method="get" class="search-box">
							<input type="text" placeholder=" " />
							<button type="reset"></button>
						</form>

					</div>

 -->


<div class="mainboard-margin-auto">






<!-- 
 -->
						<div class="product-list-container">
							<c:forEach begin="1" end="3">
								<div class="product-list-row">

									<c:forEach begin="1" end="5">
										<section class="product-container shadow">
											<div class="img-container">
												<div class="product-img"></div>
											</div>
											<div class="product-info">
												<p><a href="" class="goods_name product-name">다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a></p>
												<p class="shipping goods_detail">내일(금) 새벽 도착 보장</p>
												<p class="discount_price product-price"><span class="goods_detail lowest-price">최저가</span>0,231,230원<span class="original_price">1,231,230원</span></p>
												<div class="star">

<div class="star-rating js-star-rating">
  <input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
  <div class="current-rating current-rating--5 js-current-rating"><i class="star-rating__star">AAA</i>
  </div>
</div>
													<span class="review-count goods_detail">(1222)</span>
													</div>


													
													
													
													
													
											</div>
										</section>
									</c:forEach>






								</div>
							</c:forEach>

</div>

							<div class="pagination p9">
								<ul class="none-de">
									<a href="#"><li><</li></a>
									<a class="is-active" href="#"><li>1</li></a>
									<a href="#"><li>2</li></a>
									<a href="#"><li>3</li></a>
									<a href="#"><li>4</li></a>
									<a href="#"><li>5</li></a>
									<a href="#"><li>6</li></a>
									<a href="#"><li>></li></a>
								</ul>
							</div>

						</div>
					</div>


					<!-- main content making area -->
				</div>
				<!-- main_content_field -->
			</div>
			<!-- main content -->
		</div>
		<!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> <!-- JQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.min.js"></script> 
<script>

$(document).ready(function(e) {
    $('img[usemap]').rwdImageMaps();//적용   
});
 </script>

<style>


.mainboard-margin-auto{
	margin:auto auto;
	width:800px;
}

.point {
	color: #9ac6e8;
}

.category {
	margin-top: 20px;
	margin-bottom: 20px;
	width: 250px;
}

.star {
	padding-top: 5px;
}

.category-title {
	display: inline-block;
	width: 100%;
	text-align: center;
	color: #9ac6e8;
}

.lowest-price {
	color: red;
	font-weight: 600;
}

.original_price {
	display: block;
}

.review-count {
	display: inline-block;
	color: black;
	vertical-align: middle;
	margin-bottom: 5px;
}

.product-info {
	margin: 10px;
}

.product-price {
	border: 0px;
	padding: 0px;
	margin: 12px 0px 0px;
	font-size: 20px;
	font-weight: bold;
}

.main-board-container {
	display: grid;
	grid-template-columns: 1fr 3fr;
}

.product-container {
	width: 180px;
	margin-left: 15px;
	overflow: hidden;
	border-bottom: solid 1px #EAEBED;
}

.product-list-container {
	padding: 10px;
	display: flex;
	flex-direction: column;
}

.product-list-row {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	justify-items: center;
	margin-bottom: 50px;
}

.product-img {
	width: 100%;
	height: 170px;
}

/* 상품 이미지 */
.product-img {
	background:
		url("https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
/*상품명 2줄 이상 ... 처리*/
.product-name {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

/* hover 그림자 처리
    .shadow:hover{
        box-shadow: 0px 0px 5px rgb(0, 0, 0, 15%);      
    }
    */
.product-name {
	text-decoration-line: none;
}

.shadow:hover .product-name {
	text-decoration-line: underline;
}

/* 이미지 확대*/
.img-container {
	overflow: hidden;
}

.shadow:hover>.img-container>.product-img {
	transform: scale(1.1);
}

.product-img:hover {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
}

.product-img:not(:hover) {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
}
</style>
<style>
.category {
	width: 100%;
}

#mypage-form {
	float: right;
	height: 50px;
}

#mypage-form>.select {
	box-shadow: 0 0 black;
}
</style>
<style>
.star{
display:inline-block;

}
.star-rating{
  margin-left:0px;
  margin-top:-15px;
}

.review-count{
	display:block;
	float:left;
  	margin-top:-15px;
  	margin-left:100px;
  
}
.mainboard-title{
	font-size:10px;
	
}
.search-board {
	font-size:40px;
}
.search-category {
	font-size:30px;
	
}
.search-order {
	font-size:10px;
	
}
</style>
<style>
.img-category{
	width:1000px;
	margin-left:-100px;

}
.search-p{
	display:inline-block;
	margin-left:-60px;

}

.main-board-search-bar{
margin:30px;
}
.product-list-container{
margin-top:100px;
}
.mainboard-order-form > select{
	width:100px;
	height:30px;
	font-size:16px;
	padding:0px;
	border-radius:0px;
	margin-top:35px;
	margin-right:-85px;
	
}
.main_content_field{
	border:none;
}
.search-p{
	margin-top:50px;
}
.product-list-container{
margin-left:-100px;
}
.main_field,.main_content{
background:white;
}
.main-board-search-bar{
	width:900px;
	text-algin:center;
	
}
.search-box{
	margin:auto auto;
}
</style>

</html>