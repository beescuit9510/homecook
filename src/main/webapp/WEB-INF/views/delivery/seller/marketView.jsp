<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliverySeller/marketView.css">

<!-- bootstrap css -->
<link rel="stylesheet" href="/resources/css/deliverySeller/bootstrap.css">
<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- bootstrap jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- naver maps api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=j1crffrgk5"></script>
<meta charset="UTF-8">

</head>
<body>
<div class="s-wrapper">
	<jsp:include page="/WEB-INF/views/common/deliveryHeader.jsp" />
		<div class="main_field" style="background-color: #fff">        	
        	<div class="main_content2">
        		<div class="main_left">
        			<section class="iBMwaq">
        				<div class="kQdztO">
        					<c:forEach items="${zs.list }" var="f">
								<div class="logo_div"><img class="logo_img" src='/resources/upload/zcdSeller/${f.filename }'></div>
							</c:forEach>
        				</div>
        			</section>
        			<div class="gEhAFQ">
        				<ul class="nav nav-tabs">
						  <li class="nav-item">
						    <a class="nav-link active" data-bs-toggle="tab" href="#home">메뉴</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" data-bs-toggle="tab" href="#profile">리뷰</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link map-open" data-bs-toggle="tab" href="#info">매장 정보</a>
						  </li>
						</ul>
						<div id="myTabContent" class="tab-content">
						  <div class="tab-pane fade active show" id="home">
						    <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
						  </div>
						  <div class="tab-pane fade" id="profile">
						    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
						  </div>
						  
						  <div class="tab-pane fade" id="info">
						    	
						    	<div id="map" style="width: 660px; height: 400px;"></div>
						    	
						    	<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">매장정보</h6>
									  <div class="card-body">
									  	<div class="card_info">매장명 : ${zs.storeName }</div>
									    <div class="card_info">전화번호 : ${zs.storePhone }</div>
									    <div class="card_info">주소 : ${zs.address1 } ${zs.address2 }</div>
									  </div>		  
								</div>
								<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">영업시간</h6>
									  <div class="card-body">
									  	<div class="card_info">${zs.storeTime }</div>
									  </div>		  
								</div>
								<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">매장소개</h6>
									  <div class="card-body">
									  	<div class="card_info">${zs.storeInfo }</div>
									  </div>		  
								</div>
								<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">공지사항</h6>
									  <div class="card-body">
									  	<div class="card_info">${zs.storeNotice }</div>
									  </div>		  
								</div>
								<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">팁 / 안내사항</h6>
									  <div class="card-body">
									  	<div class="card_info">${zs.storeTip }</div>
									  </div>		  
								</div>
								<div class="card">
									  <h6 class="card-header" style="font-weight: 600;">원산지 정보</h6>
									  <div class="card-body">
									  	<div class="card_info">${zs.originInfo }</div>
									  </div>		  
								</div>
						  </div>
						</div>
        			</div>
        		</div>
        		<div class="main_right">
        			<section class="kImnZs">
        				<div class="iIpQyh">
	        				<div class="ekSBjK">${zs.storeName }</div>
	        			</div>
	        			<div class="fDZBJF">
	        				<div class="ezeJar"> · 최소주문금액</div>
	        				<span class="iNKAwY"><fmt:formatNumber value="${zs.minPrice }" pattern="#,###" /> 원 이상
	        				<span style="font-weight: 500;">구매 시 주문 가능</span>
	        				</span>
	        			</div>
        			</section>
	        		<section class="bMCyww">
	        			<div class="gjcLUR">
	        				<span class="hwbCCJ">총 주문금액</span>
	        				<div class="cQHmLv"><span class="element"><fmt:formatNumber value="50000" pattern="#,###" /> 원</span></div>
	        			</div>
		        		<div class="isPSSz">
		        			<button class="KZVRS">♡<span>찜 하기</span></button>
		        			<button class="hYJzRO jdSXaC">장바구니 보기</button>
		        		</div>
	        		</section>
        		</div>
        		        		
        		
        	</div> <!-- main content -->
        </div> <!-- main field -->
				
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script>
		$(function() {
			
			var map = new naver.maps.Map('map', {
			    center: new naver.maps.LatLng(37.51452806179344, 126.88712651163426),
			    zoom: 18,
			    zoomControl: true, //줌 컨트롤의 표시 여부
			    zoomControlOptions: {
		            style: naver.maps.ZoomControlStyle.SMALL,
		            position: naver.maps.Position.TOP_RIGHT
		        }
			});

			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(37.51452806179344, 126.88712651163426),
			    map: map
			});
		
		});
		
	</script>
</div>
</body>
</html>