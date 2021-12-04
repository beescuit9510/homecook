<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<!-- partial -->
<link rel="stylesheet" href="/resources/css/mainboard/star.css">
<!-- partial -->
<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js'></script>

</head>
<body>

<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	



<div class="container-fluid position-relative" style="z-index: 99999;">
	<div class="row">
		<div class="col-md-12 shadow-sm">
			<div class="container">
				<div class="row mb-4"></div>
				<div class="row mb-4">
					<div class="col-md-2">
				</div>
					<div class="col-md-6">
						<div class="input-group input-group-lg">
							<input type="text" id="" name="" class="form-control" placeholder="상품을 검색해보세요" />
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button">
									<i class="fas fa-search"></i>
								</button>
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
				<div class="row">
					<div class="col-md-12">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid mb-3">
	<div class="row">
		<div class="col-md-12 bg-light border-bottom pt-5 pb-5">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>생활용품</h2>
						<ol class="breadcrumb p-0 m-0 bg-transparent">
							<li class="breadcrumb-item"><a href="#">전체 상품</a></li>
							<li class="breadcrumb-item"><a href="#">생활용품</a></li>
							<li class="breadcrumb-item active">무지스티커</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



















<div class="container">
	<div class="row mb-5">
		<div class="col-md-3">
			<div class="card mb-4">
				<div class="card-header">카테고리</div>
				<div class="list-group list-group-flush">
					<a href="#" class="list-group-item list-group-item-action">생활용품 (13)</a>
					<a href="#" class="list-group-item list-group-item-action active">뷰티 (5)</a>
					<a href="#" class="list-group-item list-group-item-action">헬스/건강식품 (0)</a>
					<a href="#" class="list-group-item list-group-item-action">주방용품 (0)</a>
					<a href="#" class="list-group-item list-group-item-action">식품 (2)</a>
					<a href="#" class="list-group-item list-group-item-action">완구/취미 (1)</a>
					<a href="#" class="list-group-item list-group-item-action">문구/오피스 (0)</a>
					<a href="#" class="list-group-item list-group-item-action">반려동물 (3)</a>
				</div>
			</div>


			<div class="card">
				<div class="card-header">검색하기</div>
				<div class="card-body p-1">

					<div class="card border-0 b-3">
						<div class="card-header p-2 bg-white" data-toggle="collapse" data-target="#collapseExample4" aria-expanded="false">
							<p class="m-0 h6">가격</p>
						</div>
						<div class="card-body p collapse show" id="collapseExample4">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Min</label>
									<input class="form-control" placeholder="0" type="number">
								</div>
								<div class="form-group text-right col-md-6">
									<label>Max</label>
									<input class="form-control" placeholder="50000" type="number">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-footer">
					<button type="button" class="btn btn-block btn-primary">검색</button>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-md-4">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">정렬:</span>
								</div>
								<select class="form-control" id="" name="">
									<option value="newest">최신순</option>
									<option value="abc">가나다순</option>
									<option value="reverse">가나다역순</option>
									<option value="highest">높은가격순</option>
									<option value="cheapest">낮은가격순</option>
									<option value="oldest">오래된 순</option>
									<option value="popular">인기순</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">별점:</span>
								</div>
								<select class="form-control" id="" name="">
									<option value="4">4점 이상</option>
									<option value="3">3점 이상</option>
									<option value="2">2점 이상</option>
									<option value="1">1점 이상</option>
								</select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">상품 보기:</span>
								</div>
								<select class="form-control" id="" name="">
									<option value="">10</option>
									<option value="">15</option>
									<option value="">20</option>
									<option value="">25</option>
									<option value="">30</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="card-body">
	<div class="row">
		<div class="col-md-4 mb-4">
			<div class="card">
				<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
				<div class="card-body">
					<p class="h6 goods_name product-name"><small class="text-muted">Apple</small></br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
					<p class="m-0">

					<div class="star">
						<div class="star-rating js-star-rating">
						<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
						<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
						<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
						<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
						<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
						<div class="current-rating current-rating--5 js-current-rating"><i class="star-rating__star">AAA</i></div>
						</div>
						<span class="review-count goods_detail">(1222)</span>
					</div>
					</p>
					<!-- 
					<p>내일(금) 새벽 도착 보장</p>
					 -->
					<p class="discount_price product-price"><span class="goods_detail lowest-price">최저가</span>0,231,230원<span class="original_price">1,231,230원</span></p>
				</div>
				<div class="card-footer p-0">
				</div>
			</div>
		</div>
	</div>
				</div>
				<div class="card-footer p-3">
					<div class="row">
						<div class="col-md-6">
							<ul class="pagination m-0">
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">6</a></li>
								<li class="page-item"><a class="page-link" href="#">7</a></li>
								<li class="page-item"><a class="page-link" href="#">8</a></li>
								<li class="page-item"><a class="page-link" href="#">9</a></li>
								<li class="page-item">
									<a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</div>
						<div class="col-md-6">
							<p class="text-right mb-0 mt-1">1 to 12 of 12 ( 1 )</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row mb-5">
		<div class="col-md-12">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-shipping-fast"></i>
							<p class="h5">안전/스피드 배송 <br/><small class="text-muted">안전하고 빠른 배송</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-thumbs-up"></i>
							<p class="h5">소비자 보호<br/><small class="text-muted">품질검증부터 배송까지 확인합니다.</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-umbrella"></i>
							<p class="h5">안전 결제<br/><small class="text-muted">소비자의 개인정보를 안전하게 보호합니다.</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-life-ring"></i>
							<p class="h5">24/7 서비스<br/><small class="text-muted">24/7 쉼없이 운영됩니다.</small></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row mb-5">
	</div>



















</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>




</body>
<style>
.star {
	padding-top: 5px;
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


.product-price {
	border: 0px;
	padding: 0px;
	margin: 12px 0px 0px;
	font-size: 20px;
	font-weight: bold;
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
</style>
</html>