<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
			        <div class="category-title"><h2>식품</h2></div>
			          <div class="category">
				        <a class="shift_btn category-a" href="/a">집쿡 추천순</a>
				        <a class="shift_btn category-a" href="/a">낮은가격순</a>
				        <a class="shift_btn category-a" href="/a">높은가격순</a>
				        <a class="shift_btn category-a" href="/a">판매량순</a>
				        <a class="shift_btn category-a" href="/a">최신순</a>
				            
				            <form class="search-box">
							    <input type="text" placeholder=" "/>
							    <button type="reset"></button>
							</form>
											        
				    </div>
				    <div class="main-board-container">
				        <div class="main-menu">
				            <ul>
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
					            <a href="/a"><li class="menu-item">패션</li></a>
					            <a href="/a"><li class="menu-item">유아동패션</li></a>
					            <!-- 
								<a href="/a"><li class="menu-item">집쿠욱 추천순</li></a>
				                <a href="/a"><li class="menu-item">낮은가격순</li></a>
				                <a href="/a"><li class="menu-item">높은가격순</li></a>
				                <a href="/a"><li class="menu-item">판매량순</li></a>
				                <a href="/a"><li class="menu-item">최신순</li></a>
					             -->
									            
				            </ul>
				        </div>
				        
				        
				        <div class="product-list-container">
				            <div class="product-list-row">
				            
				            
						         <section class="product-container shadow">
				                    <div  class="img-container"><div class="product-img"></div></div>
				                    <div class="product-info">
				                        <p>
				                            <a href="" class="goods_name product-name">다우니 초고농축 섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aa  aaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
				                        </p>
				                        <p class="shipping goods_detail">내일(금) 새벽 도착 보장</p>
				                        <p class="discount_price product-price"><span class="goods_detail lowest-price">최저가</span>0,231,230원<span class="original_price">1,231,230원</span></p>
				                        <p class="star"><img src="/img/star-on.png"><img src="/img/star-on.png"><img src="/img/star-on.png"><img src="/img/star-on.png"><img src="/img/star-on.png"><span class="review-count goods_detail">(1222)</span></p>
				                    </div>
				                </section>
				        
				        
				            </div>
				        </div>
				    </div>
					 
        			<!-- main content making area -->	`1QW2E34R5TY7        			<div class = "subtitle_box">
        				<div class = "subtitle_content">
        					<div class = "content">
        						<div class = "subtitle_text">
        							배달비품BEST
        						</div>
        						<button type = "button" class = "subtitle_more" onclick = "/" >더보기 ></button>     					
        					</div>
        				</div>	
        			</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        			<div class = "dummy">dummy</div>
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
<style>
   .star{
        padding-top: 5px;
    }
    .category-a{
        float: left;
        text-decoration: none;
        margin-right: 10px;
        
    }
    .category-a:first-child{
        clear: both;
    }
    .category-title{
        display: inline-block;
        width: 100%;
        text-align: center;
    }
    .lowest-price{
        color: red;
        font-weight: 600;
    }
    .original_price{
        display: block;
    }
    .review-count{
        display: inline-block;
        color: black;
        vertical-align: middle;
        margin-bottom: 5px;
    }
    .product-info{
        margin: 10px;
    }
    .product-price {
        border: 0px;
        padding: 0px;
        margin: 12px 0px 0px;
        font-size: 20px;
        font-weight: bold;
    }

    .main-board-container{
        display: grid;
        grid-template-columns: 1fr 3fr;
    }
    
    .product-container{
        width: 180px;
        margin-left:15px;
        overflow: hidden;
        border-bottom: solid 1px #EAEBED;
        
    }
    .product-list-container{
        padding: 10px;
        display: flex;
        flex-direction: column;
    }
    
    .product-list-row{
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
        justify-items: center;
        margin-bottom: 50px;
    }
    .product-img{
        width: 100%;
        height: 170px;
                
    }
    
    /* 상품 이미지 */
    .product-img{
        background: url("https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
    /*상품명 2줄 이상 ... 처리*/
    .product-name{
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        white-space:normal;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        
    }
    
    /* hover 그림자 처리
    .shadow:hover{
        box-shadow: 0px 0px 5px rgb(0, 0, 0, 15%);      
    }
    */
    .product-name{
        text-decoration-line: none;
    }
    .shadow:hover .product-name{
        text-decoration-line: underline;
        
    }
    
    /* 이미지 확대*/
    .img-container{
        overflow:hidden;
    }
    
    .shadow:hover > .img-container> .product-img{
        transform:scale(1.1); 
    }
    
    .product-img:hover{ 
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
        -ms-transition: all 0.5s ease; 
    }
    .product-img:not(:hover){
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
        -ms-transition: all 0.5s ease; 
    }
</style>
<style>
    .main-menu{
        background-color: #ffffff;
        overflow: hidden;
        width: 170px;
    }
    .main-menu .menu-item{
        padding: 10px;
        width: 100%;
        height: 100%;
    }
    .main-menu .menu-item:hover{
    /*
        background-color: #d6d6d6;
    */
        font-weight: 600;
        cursor: pointer;
    }
    .menu-item{
        margin: 0 0 0 0;
        padding: 0 0 0 0;
        display: block ;
        width: 170px;
    }
    .main-menu .main-item {
        font-size: 25px;
    }
    .menu-item{
        list-style: none;
        border-bottom:  solid 1px #EAEBED;
    }
    .main-menu{
        width: 170px;
        
    }
</style>
<style>
@import url("https://fonts.googleapis.com/css?family=Raleway:400,400i,700");
html, body {
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: nowrap;
  overflow: hidden;
}

.search-box {
  border: solid 5px black;
  display: inline-block;
  position: relative;
  border-radius: 50px;
}
.search-box input[type=text] {
  font-family: Raleway, sans-serif;
  font-size: 20px;
  font-weight: bold;
  width: 50px;
  height: 50px;
  padding: 5px 40px 5px 10px;
  border: none;
  box-sizing: border-box;
  border-radius: 50px;
  transition: width 800ms cubic-bezier(0.68, -0.55, 0.27, 1.55) 150ms;
}
.search-box input[type=text]:focus {
  outline: none;
}
.search-box input[type=text]:focus, .search-box input[type=text]:not(:placeholder-shown) {
  width: 300px;
  transition: width 800ms cubic-bezier(0.68, -0.55, 0.27, 1.55);
}
.search-box input[type=text]:focus + button[type=reset], .search-box input[type=text]:not(:placeholder-shown) + button[type=reset] {
  bottom: 13px;
  right: 10px;
  transition: bottom 150ms ease-out 800ms, right 150ms ease-out 800ms;
}
.search-box input[type=text]:focus + button[type=reset]:after, .search-box input[type=text]:not(:placeholder-shown) + button[type=reset]:after {
  top: 0;
  right: 10px;
  opacity: 1;
  transition: top 150ms ease-out 950ms, right 150ms ease-out 950ms, opacity 150ms ease 950ms;
}
.search-box button[type=reset] {
  background-color: transparent;
  width: 25px;
  height: 25px;
  border: 0;
  padding: 0;
  outline: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  bottom: -13px;
  right: -15px;
  transition: bottom 150ms ease-out 150ms, right 150ms ease-out 150ms;
}
.search-box button[type=reset]:before, .search-box button[type=reset]:after {
  content: "";
  height: 25px;
  border-left: solid 5px black;
  position: absolute;
  transform: rotate(-45deg);
}
.search-box button[type=reset]:after {
  transform: rotate(45deg);
  opacity: 0;
  top: -20px;
  right: -10px;
  transition: top 150ms ease-out, right 150ms ease-out, opacity 150ms ease-out;
}
</style>

</html>
