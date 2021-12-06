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
<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js'></script>

<link rel="stylesheet" href="/resources/css/mypage/like.css">
<link rel="stylesheet" href="/resources/css/mainboard/star.css">

</head>

<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	



<div class="container">       
<div class="container">
	<div class="row mb-4">
		<div class="col-md-2">
      <a href="#"><img src="" class="img-thumbnail p-0 border-0" /></a>
    	</div>
		<div class="col-md-6">
			<div class="input-group input-group-lg">
				<input type="text" id="" name="" class="form-control" placeholder="상품을 검색해보세요" />
				<select id="searchBy" class="form-control form-control-lg rounded-0">
				<c:forEach items="${tool.byList }" var="v">
					<option value="${v }" <c:if test="${v eq tool.by}"> selected = "selected" </c:if>>${v }</option>
				</c:forEach>
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
	</div>
	
		<div class="row mb-5">
		<div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					<c:forEach items="${tool.categoryMap }" var="v">
						<li class="nav-item <c:if test="${v.key eq tool.c}">active</c:if>">
							<a class="nav-link" href="/mainboard.do?b=${tool.b }&c=${v.key }">${v.key } (${v.value })</a>
						</li>					
					</c:forEach>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	
	<div class="row mb-5">
		<div class="col-md-8">
			<div class="row">
				


				<div class="col-md-12 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://media.istockphoto.com/photos/ginger-cat-sitting-on-floor-in-living-room-and-looking-at-camera-pet-picture-id1149347768" />
				</div>
				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://media.istockphoto.com/photos/ginger-cat-sitting-on-floor-in-living-room-and-looking-at-camera-pet-picture-id1149347768" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h1 class="title">${pp.productName }</h1>
					<p class="m-0">
					<div class="star-rating js-star-rating">
					  <input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
					  <input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
					  <input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
					  <input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
					  <input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
					  <div class="current-rating current-rating--${pp.starClass } js-current-rating"><i class="star-rating__star">AAA</i>
					  </div>
						</div>
						<span class="review-count goods_detail">(${pp.productDetail })</span>
					</p>

					<ul class="list-group list-group-flush mb-4">
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Brand: ${pp.tradeName }<a href="#"></a></li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">제조국 : ${pp.origin }</li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">제조일자 : ${pp.manufactureDate }</li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">재고 : ${pp.stock }</li>
						<!--

							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Price in reward points: 400</li>
						-->
						<li class="list-group-item pl-0 pr-0">
						
						<c:if test="${not empty pp.discountedPrice }">
							<p class="m-0 h2"><span class="mainboard-view-price">${pp.discountedPrice }원</span><small><s class="original_price">${pp.price }원</s></small></p>
							<p class="m-0 text-muted">${pp.dRate } %</p>
						</c:if>
						
						<c:if test="${empty pp.discountedPrice }">
						<p class="m-0 h2"><span class="mainboard-view-price">${pp.price }원</span></p>
						</c:if>
						
						</li>
						<!--

							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Market Price: $1.134,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">List Price: $1.256,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Cost Price: $1.487,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Wholesale Price: $1.721,82</li>
						-->
					</ul>
					<div class="input-group input-group-lg mb-4">
						<input type="number" class="form-control text-center" placeholder="Quantity" id="" name="" value="1" min="1" max="${pp.limit}" />
						<div class="input-group-append">
							<span class="input-group-text">수량</span>
						</div>
					</div>
					<div>
						<div class="likeButton-div-wrap">
							<span class="likeButton">♥</psn>
						</div>
						<button class="cart_btn-pos top_btn">장바구니 담기</button>
	
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 mt-4">
			<ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link lead active" role="tab" data-toggle="tab" href="#tabDescription">상품 상세</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tabReview">상품후기 (${pp.reviewCount })</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tabQnA">Q&A (${pp.qnaCount })</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tapShippingReturn">배송/환불 안내</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tapSellerInfo">판매자 정보</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane pt-4 active" role="tabpanel" id="tabDescription">
					<p>${pp.productDetail }</p>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tapShippingReturn">
					<table class="table table-bordered">
						<thead>
							<tr>
								<td colspan="2"><strong>배송정보</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>배송방법</td>
								<td>${pp.shippingMethod }</td>
							</tr>
							<tr>
								<td>배송사</td>
								<td>${pp.shippingCompany }</td>
							</tr>
							<tr>
								<td>배송비</td>
								<td>${pp.shippingFee }원</td>
							</tr>
							<tr>
								<td>배송기간</td>
								<td>${pp.shippingPeriod }일</td>
							</tr>
						</tbody>
						<thead>
							<tr>
								<td colspan="2"><strong>환불 정책</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>환불 비용</td>
								<td>${pp.returnShipping}원</td>
							</tr>
							<tr>
								<td>환불 신청 기간</td>
								<td>${pp.returnLength}일내</td>
							</tr>
							<tr>
								<td>환불 제한 기준</td>
								<td>${pp.policyContent}</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tab-pane pt-4" role="tabpanel" id="tapSellerInfo">
					<table class="table table-bordered">
						<thead>
							<tr>
								<td colspan="2"><strong>판매자 상세 정보</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>상호</td>
								<td>${pp.tradeName}</td>
							</tr>
							<tr>
								<td>대표자</td>
								<td>${pp.representative}</td>
							</tr>
							<tr>
								<td>사업장 소매지</td>
								<td>${pp.businessLoc}</td>
							</tr>
							<tr>
								<td>판매처 전화번호</td>
								<td>${pp.contact}</td>
							</tr>
							<tr>
								<td>판매처 이메일</td>
								<td>${pp.email}</td>
							</tr>
						</tbody>
						<thead>
							<tr>
								<td colspan="2"><strong>해당 상품 관련 연락처</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>a/s 책임자 번호</td>
								<td>${pp.managerContact}</td>
							</tr>
							<tr>
								<td>소비자 상담 관련 번호</td>
								<td>${pp.ccContact}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tabQnA">					
					<div class="card" id="qna-wrap">
						<div class="card-header">상품관련 Q&A를 볼 수 있습니다. </div>
						
						
						
						
						
						
						
					</div>
					<button id="qna-btn" class="">더 보기</button>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tabReview">
					
					<div class="card" id="review-wrap">
						<div class="card-header">상품관련 후기를 볼 수 있습니다. </div>
						
						
						
						
					</div>
					<button id="review-btn" class="buy_btn">더 보기</button>
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
		<div class="col-md-12">
	
		</div>
	</div>
</div>
<div class="container">
	<div class="row mb-5">
		<div class="col-md-12 mb-5">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-12 mt-5 mb-4">
		</div>
		<div class="col-md-12">
		</div>
		<div class="col-md-12">
		</div>
	</div>
</div>







</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>

var rStar=0;
var rEnd=0;
var qStart=0;
var qEnd = 0;
var rTotal = ${pp.reviewCount};
var qTotal = ${pp.qnaCount};

$("#qna-btn").on("click",function(){
	qStart = qEnd+1;
	qEnd += 3;
	$.ajax({
		type:"GET",
		url:"/getQna.do",
		data:{start:qStart, end:qEnd, productNo:1},
		contentType : "application/json;charset=UTF-8",
		success:function(data){
			data.forEach(q => {
				var card = "<div class='card-body'><table class='table table-bordered'><tbody>";
				card +="<tr><td colspan='2'><strong>("+q.memberName+") "+q.qnaTitle+"</strong></td></tr>";
				card +="<tr><td colspan='2'><p>"+q.qnaContent+"</p><p class='m-0'>"+q.writeDate+"</p></td></tr>";

				if(q.hasOwnProperty("aTitle")){
					card +="<tr><td colspan='2'><strong>"+q.aTitle+"</strong></td></tr>";
					card +="<tr><td colspan='2'><p>"+q.aContent+"</p><p class='m-0'>"+q.aWriteDate+"</p></td></tr>";					
				}
				
				card += "</tbody></table></div>";
				
				qEnd>=qTotal && $("#qna-btn").hide();
				$("#qna-wrap").append(card);
				
			})
		}
	})
	
})
$("#review-btn").on("click",function(){
	rStart = rEnd+1;
	rEnd += 3;
	$.ajax({
		type:"GET",
		url:"/getReview.do",
		data:{start:rStart, end:rEnd, productNo:1},
		contentType : "application/json;charset=UTF-8",
		success:function(data){

			for(var r in data ) {

//				r = JSON.parse(r);
				console.log(r[memberName]);
				var card = "<div class='card-body'><table class='table table-bordered'><tbody>";
				card += "<tr><td colspan='2'><strong>"+r.memberName+"</strong></td></tr>";
				card += "<tr><td colspan='2'><p>"+r.reviewContent+"</p>"
				card += "<div class='row'>";								
				
				var arr = data[r]
				
				
				for(var i=0; i<arr.length;i++){
					console.log(arr[i].filepath);
					var img = arr[i];
					card += "<div class='col-md-3 mb-4'><img alt='' class='img-thumbnail p-0 border-0' src='"+img.filepath+"' /></div>";
					
				}				
				
				card += "</div>";
				card += "<p class='m-0'>"+r.writeDate+"</p>";
				card += "</td></tr><tr><td colspan='2'><strong>"+r.memberName+"님의 별점 : </strong>";
				card += "<div class='star-rating js-star-rating mainboard-review-star-rating'>";
				card += "<input class='star-rating__input' type='radio' name='rating' value='1'><i class='star-rating__star'></i>";
				card += "<input class='star-rating__input' type='radio' name='rating' value='2'><i class='star-rating__star'></i>";
				card += "<input class='star-rating__input' type='radio' name='rating' value='3'><i class='star-rating__star'></i>";
				card += "<input class='star-rating__input' type='radio' name='rating' value='4'><i class='star-rating__star'></i>";
				card += "<input class='star-rating__input' type='radio' name='rating' value='5'><i class='star-rating__star'></i>";
				card += "<div class='current-rating current-rating--"+r.starClass+" js-current-rating'><i class='star-rating__star'>AAA</i></div>";
				card += "</div>";
				card += "</td></tr></tbody></table></div>";

				
				rEnd>=rTotal && $("#review-btn").hide();
				$("#review-wrap").append(card);
  			}
				

				
		}
	})
	
})
</script>
<style>
	.nav-link{
		margin-left:25px;
		margin-right:25px;
	}
	
	
	
	




	
</style>
<script>

$(document).ready(function () {
});
</script>
<script>

$(document).ready(function () {
	$(".likeButton").click(function() {
		$(this).toggleClass("liked");
	});
});
</script>
<style>
/*
.likeButton-div-wrap{
	margin-top:0px;
	margin-left: 5px;
	width:50px;
	height:80px;
}
.likeButton-div-wrap > div{
	height:50px;

}
.cart_btn-pos{
	margin-top: -70px;
	margin-left: 100px;
	width:130px;
}

.container{
	width:900px;
}
.start{
	margin-left:0;
	
}
.star-rating{
	margin-left:0;

}
.star-rating {
	width: 141.5px;
	height: 28px;
}
.review-count{
	font-size:22px;
	display:block;
	margin-top:-30px;
	margin-left:150px;
};
.mainboard-view-price{
	font-size:20px;	
}
.mainboard-review-star-rating{
	width: 91.5px;
	height: 18px;
	display:inline-block;
}
*/
/*
<div class='card-body'><table class='table table-bordered'><tbody>
<tr><td colspan='2'><strong>(**덕) QNA 제목</strong></td></tr>
<tr><td colspan='2'><p>QNA 내용 내용</p><p class='m-0'>18/03/2013</p></td></tr>
<tr><td colspan='2'><strong>답변완료</strong></td></tr>
<tr><td colspan='2'><p>QNA 답변 답변</p><p class='m-0'>18/03/2013</p></td></tr>
</tbody></table></div>
*/
</style>
</html>
