<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/common/slick.css">
<link rel="stylesheet" href="/resources/css/common/slick-theme.css">
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<title>Insert title here</title>
<style>

.test::-webkit-scrollbar 
{
    display: none;
}

.scrollMenu 
{ 
	display : flex;  
  	white-space:nowrap;
	overflow-x:scroll;
}


 .scrollMenu::-webkit-scrollbar {
    height: 5px;
  }
 .scrollMenu::-webkit-scrollbar-thumb {
    background-color: rgba(0,0,0,0.3);
    border-radius: 10px;
  }
 .scrollMenu::-webkit-scrollbar-track {
   	background-color: grey;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
  }



.scrollMenu a 
{
  display: inline-block;
  color: rgb(0, 0, 0);
  text-align: center;
  text-decoration: none;
  padding: 14px;
}


.card
{	
	margin-left: 10px;
	margin-right: 10px;
}

.card>a
{
	height: 250px;
	width: 200px;
	border: 1px solid black;
	background-color: rgb(161, 247, 11);
}

.card>a:hover 
{
	background-color: rgba(229, 242, 208, 0.797);
}

.slider_box
{
	padding-left: 25px;
	padding-right: 25px;	
	
	height: 300px;
}

.slider_content
{
	width: 100%;
	height: 248px;
	
	background-color: skyblue;
}

.slider_img
{
	width: 100%;
	
}


</style>
</head>
<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>			
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
        			<!-- main content making area -->
        			<div class = "subtitle_box">
        				<div class = "subtitle_content">
        					<div class = "content">
        						<div class = "subtitle_text">
        							배달비품BEST
        						</div>
        						<button type = "button" class = "subtitle_more" onclick = "/" >더보기 ></button>     					
        					</div>
        				</div>	
        			</div>
        				<!-- stlye 은 slick 영역 확인용 -->
					<div class = "slider_box">
					  	<div id="slider-div">
						    <div class = "slider_content">
						    	<img src="/resources/img/common/slider_00.jpg" class="slider_img">	
						    </div>
						    <div class = "slider_content">
						    	<img src="/resources/img/common/slider_01.jpg" class="slider_img">	
						    </div>
						    <div class = "slider_content">
						    	<img src="/resources/img/common/slider_02.jpg" class="slider_img">	
						    </div>
						    <div class = "slider_content">
						    	<img src="/resources/img/common/slider_03.jpg" class="slider_img">	
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
        			<button type="button" class="btn btn-info disabled">Info</button>
        
				    <div class="test" style="width:100%; overflow-x: scroll;">
  						<div class = "scrollMenu" style="width:0 auto;font-size: 20px;">
  							<div class = "card">
  								<a href="#Mark">Mark</a>
  							</div>
  							<div class = "card">
  								<a href="#Johnny">Johnny</a>
  							</div>
  							<div class = "card">
  								<a href="#WinWin">WinWin</a>
  							</div>
  							<div class = "card">
  								<a href="#Haechan">Haechan</a>
  							</div>
  							<div class = "card">
  								<a href="#Shotaro">Shotaro</a>
  							</div>
  							<div class = "card">
  								<a href="#Doyoung">Doyoung</a>
  							</div>  							
  							<div class = "card">
  								<a href="#Taeil">Taeil</a>
  							</div>  							
  							<div class = "card">
  								<a href="#Xaojun">Xaojun</a>
  							</div>
  							<div class = "card">
  								<a href="#Jaehyun">Jaehyun</a>
  							</div>  			
  						</div>
					</div>
					
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
<script>
$(document).ready(function()
{ 	
	var Obj = $(".scrollMenu");
	var index = 0;
	
	
	setInterval(function() 
	{
		if($('.scrollMenu').scrollLeft() >= 780)
		{
			$('.scrollMenu').animate( { scrollLeft: '-=800' }, 1000);
			console.log($('.scrollMenu').scrollLeft());
		}
		else
		{
			$('.scrollMenu').animate( { scrollLeft: '+=100' }, 1000);
			console.log($('.scrollMenu').scrollLeft());
		}
		}, 1000);
	
	$('#slider-div').slick({
		slide: 'div',				//슬라이드 되어야 할 태그 ex) div, li 
		infinite : true, 			//무한 반복 옵션	 
		slidesToShow : 1,			// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,			//스크롤 한번에 움직일 컨텐츠 개수
		speed : 100,	 			// 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
		arrows : true, 				// 옆으로 이동하는 화살표 표시 여부
		dots : true, 				// 스크롤바 아래 점으로 페이지네이션 여부
		autoplay : true,			// 자동 스크롤 사용 여부
		autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
		pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
		vertical : false,		// 세로 방향 슬라이드 옵션
		prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
		nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
		dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
		draggable : true, 	//드래그 가능 여부 
		responsive: [ // 반응형 웹 구현 옵션
			{  
				breakpoint: 960, //화면 사이즈 960px
				settings: {
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:3 
				} 
			},
			{ 
				breakpoint: 768, //화면 사이즈 768px
				settings: {	
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:2 
				} 
			}
		]
		
		

	});
	
	
});


</script>
</html>