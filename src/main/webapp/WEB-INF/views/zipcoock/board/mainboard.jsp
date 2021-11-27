<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/mypage/searchbar.css">
<link rel="stylesheet" href="/resources/css/mypage/paging.css">
<link rel="stylesheet" href="/resources/css/mainboard/star.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp"%>
		<div class="main_field">
			<div class="main_content">
				<div class="main_content_field">
					<div class="category-title">
						<h2 class="mainboard-title">
							<span class="search-board point">전체상품 </span>
							>
							<span class="search-category point">전체</span>
							oder by
							<span class="search-order point">최신순</span></h2>


						<form action="/addrFrm.do" method="get " class="search-box">
							<input type="text" placeholder=" " />
							<button type="reset"></button>
						</form>



					</div>
					<div class="category">






						<form id="mypage-form" action="" method="post"
							class="mypage-form-class">
							<select id="mypage-sel" name="order"
								class="mypage-select input select">
								<option id="mypage-opt" value="newest" selected>최신순</option>
								<option id="mypage-opt" value="oldest">오래된 순</option>
								<option id="mypage-opt" value="cheapest">낮은가격순</option>
								<option id="mypage-opt" value="highest">높은가격순</option>
							</select>
						</form>




<!-- 
					</div>
					<div class="main-board-container">
						<div class="main-menu">
							<ul>
								<a href="/a"><li class="menu-item">전체</li></a>
								<a href="/a"><li class="menu-item">식품</li></a>
								<a href="/a"><li class="menu-item">생활용품</li></a>
								<a href="/a"><li class="menu-item">뷰티</li></a>
								<a href="/a"><li class="menu-item">주방용품</li></a>
								<a href="/a"><li class="menu-item">반려동물용품</li></a>
								<a href="/a"><li class="menu-item">완구/취미</li></a>
								<a href="/a"><li class="menu-item">문구/오피스</li></a>
								<a href="/a"><li class="menu-item">스포츠/레저</li></a>
								<a href="/a"><li class="menu-item">도서/음반/DVD</li></a>
								<a href="/a"><li class="menu-item">헬스/건강식품</li></a>
							</ul>
						</div>
 -->

]        <div class="navigation">
        <nav role="navigation">
            <ul>
                <li class=active><a href="">쇼핑</a>
                <li ><a href="#">식품</a>
                <li ><a href="#">Qui consulter ?</a>
                <li ><a href="#">Les th&eacute;rapies</a>
                <li ><a href="#">Pour qui ?</a>
                <li ><a href="#">Psychotherapies</a>
                <li ><a href="#">Relaxation</a>
                <li ><a href="#">Psychomotricit&eacute;</a>
                <li ><a href="#">Bilans</a>
                <li ><a href="#">Qui suis-je ?</a>
                <li ><a href="#">Le cabinet</a>
                <li ><a href="#">Annuaire</a>
            </ul>
        </nav>
    </div>


<!-- 
 -->
						<div class="product-list-container">
							<c:forEach begin="1" end="3">
								<div class="product-list-row">

									<c:forEach begin="1" end="4">
										<section class="product-container shadow">
											<div class="img-container">
												<div class="product-img"></div>
											</div>
											<div class="product-info">
												<p><a href="" class="goods_name product-name">다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a></p>
												<p class="shipping goods_detail">내일(금) 새벽 도착 보장</p>
												<p class="discount_price product-price"><span class="goods_detail lowest-price">최저가</span>0,231,230원<span class="original_price">1,231,230원</span></p>
												<p class="star">

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
													</p>


													
													
													
													
													
											</div>
										</section>
									</c:forEach>







								</div>
							</c:forEach>

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
<style>
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
.main-menu {
	background-color: #ffffff;
	overflow: hidden;
	width: 170px;
}

.main-menu .menu-item {
	padding: 10px;
	width: 100%;
	height: 100%;
}

.main-menu .menu-item:hover {
	/*
        background-color: #d6d6d6;
    */
	font-weight: 600;
	cursor: pointer;
}

.menu-item {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	display: block;
	width: 170px;
}

.main-menu .main-item {
	font-size: 25px;
}

.menu-item {
	list-style: none;
	border-bottom: solid 1px #EAEBED;
}

.main-menu {
	width: 170px;
}

li.main-item {
	
}

.main-menu .menu-item:hover {
	/*
        background-color: #d6d6d6;
        */
	font-weight: 600;
	cursor: pointer;
}

.menu-item{

font-size:20px;
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
	font-size:30px;
}
.search-category {
	font-size:20px;
	
}
.search-order {
	font-size:10px;
	
}
</style>
<style>

    :root {
--first-color: #081f37;
	
--second-color: #5fc9f3;

--third-color: #2e79ba;

--fourth-color: #1e549f;

--main-color: #9ac6e8;

}
.first-color { 
	background: #081f37; 
}
	
.second-color { 
	background: #5fc9f3; 
}

.third-color { 
	background: #2e79ba; 
}

.fourth-color { 
	background: #1e549f; 
}


.active a {
  background: var(--main-color);
}

.navigation ul {
}
.navigation ul li {
  list-style: none;
}
.navigation ul a {
  text-decoration: none;
  color: inherit;
  font-size: 1.2em;
  font-family: "consolas";
}

.navigation {
  width: 73.68421%;
  float: left;
  margin-right: 5.26316%;
  padding: 0px;
}
.navigation li:first-child a {
  border-left: 10px solid var(--third-color);
}
.navigation li:first-child a:after {
  background:  var(--third-color);
}
.navigation li:nth-child(2) a {
  border-left: 10px solid var(--fourth-color);
}
.navigation li:nth-child(2) a:after {
  background: var(--fourth-color);
}
.navigation li:nth-child(3) a {
  border-left: 10px solid var(--second-color);
}
.navigation li:nth-child(3) a:after {
  background: var(--second-color);
}
.navigation li:nth-child(4) a {
  border-left: 10px solid var(--first-color);
}
.navigation li:nth-child(4) a:after {
  background:  var(--first-color);
}
.navigation li:nth-child(5) a {
  border-left: 10px solid var(--third-color);
}
.navigation li:nth-child(5) a:after {
  background:  var(--third-color);
}
.navigation li:nth-child(6) a {
  border-left: 10px solid var(--fourth-color);
}
.navigation li:nth-child(6) a:after {
  background: var(--fourth-color);
}
.navigation li:nth-child(7) a {
  border-left: 10px solid var(--second-color);
}
.navigation li:nth-child(7) a:after {
  background: var(--second-color);
}
.navigation li:nth-child(8) a {
  border-left: 10px solid var(--first-color);
}
.navigation li:nth-child(8) a:after {
  background:  var(--first-color);
}
.navigation li:nth-child(9) a {
  border-left: 10px solid var(--third-color);
}
.navigation li:nth-child(9) a:after {
  background:  var(--third-color);
}
.navigation li:nth-child(10) a {
  border-left: 10px solid var(--fourth-color);
}
.navigation li:nth-child(10) a:after {
  background: var(--fourth-color);
}
.navigation li:nth-child(11) a {
  border-left: 10px solid var(--second-color);
}
.navigation li:nth-child(11) a:after {
  background:  var(--second-color);
}
.navigation li:nth-child(12) a {
  border-left: 10px solid var(--first-color);
}
.navigation li:nth-child(12) a:after {
  background:  var(--first-color);
}
.navigation li a {
  display: block;
  width: 165px;
  position: relative;
  color: #000000;
  padding: 10px;
  z-index: 2;
}
.navigation li a:after {
  content: "";
  height: 100%;
  left: 0;
  top: 0;
  width: 0px;
  position: absolute;
  transition: all 0.5s ease 0s;
  z-index: -1;
}
.navigation li a:hover {
  color: #fff;
}
.navigation li a:hover:after {
  width: 100%;
}




</style>
</html>
