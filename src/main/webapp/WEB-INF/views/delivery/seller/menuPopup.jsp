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
<style>
	.menuImg_div {
		width: 400px;
		height: 200px;
		text-align: center;
	}
	.menu_img {
		width: 100%;
		height: 100%;
		position: relative;
		left: 100%;
		margin-left: -200%;
		object-fit: cover;
	}
	.gjcLUR {
	    display: flex;
	    flex-direction: row;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    padding: 0.8rem 1rem;
	}
	.cQHmLv {
	    display: flex;
	    flex-direction: column;
	    align-items: flex-end;
	}
	.border_bottom {
		border-bottom: 1px solid rgba(0, 0, 0, 0.08);
	}
	.menu_content {
	    display: flex;
	    flex-direction: row;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    padding: 0.8rem 1rem;
	    font-size: 14px;
	    color: #888;
	    border-bottom: 1px solid rgba(0, 0, 0, 0.08);
	}
	.btn-100 {
		width: 100%;
		height: 50px;
		position:fixed; 
		bottom:0px;
	}
	
</style>

<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="/resources/css/deliverySeller/bootstrap.css">
<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- bootstrap jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div class="menuImg_div"><img class="menu_img" src='/resources/upload/zcdSeller/${menu.filename }'></div>
	
	<form action="#" method="post">
	
	<div class="card">
		<div class="card-header" style="font-weight: 600;">${menu.menuName }</div>
		<div class="menu_content">${menu.menuContent }</div>
		<div class="gjcLUR border_bottom">
			<span class="hwbCCJ">가격</span>
			<input type="hidden" name="menuPrice" value="${menu.menuPrice }">
			<div class="cQHmLv"><span><fmt:formatNumber value="${menu.menuPrice }" pattern="#,###" /> 원</span></div>
		</div>
		<div class="gjcLUR border_bottom">
			<span class="hwbCCJ">수량</span>
			<div class="cQHmLv">
				<input type="number" class="form-control text-center" id="quantity" name="" value="1" min="1" max="100" style="width: 70px; border: none;"/>
			</div>
		</div>
		
		
		<c:if test="${not empty addMenu1 }">
			<div class="card-header" style="font-weight: 600;">필수 선택</div>
			<c:forEach items="${addMenu1 }" var="am1" varStatus="i">
				<div class="gjcLUR border_bottom">
				<div class="form-check">
			        <input type="radio" class="form-check-input" name="addmenu1Opt" id="addmenuOpt${i.count }" value="${am1.addmenuName }">
			        <label class="hwbCCJ" for="addmenuOpt${i.count }" style="font-size: 16px;"> ${am1.addmenuName }</label>
			    </div>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${not empty addMenu2 }">
			<div class="card-header" style="font-weight: 600;">추가 선택</div>
			<c:forEach items="${addMenu2 }" var="am2" varStatus="i">
				<div class="gjcLUR border_bottom">
				<div class="form-check">
			        <input type="checkbox" class="form-check-input" id="addmenu2Opt${i.count }" value="${am2.addmenuName }">
			        <label class="hwbCCJ" for="addmenu2Opt${i.count }" style="font-size: 16px;"> ${am2.addmenuName }</label>
			        <span>(+<fmt:formatNumber value="${am2.addmenuPrice }" pattern="#,###" /> 원)</span>
			        <input type="hidden" value="${am2.addmenuPrice }">
			    </div>
				</div>
			</c:forEach>
		</c:if>
		
	
	</div>
	<button type="submit" class="btn btn-primary btn-100" id="addcart">장바구니 담기</button>
	
	</form>
	
	
	<script>
		$(function() {
		
			var addCartChk = false;
			
			$("input[type=number]").on("change", function() {
				var quantity = $(this).val();
				console.log(quantity);
				var price = $(this).parent().parent().prev().children().eq(1).val();
				console.log(price);
			});
			
			$("input[name=addmenu1Opt]").on("change", function() {
				addCartChk = true;
			});
			
			$("#addcart").on("click", function() {
				return checkAddCart();
			});
			
			function checkAddCart() {
				
				if (addCartChk == false) {
    				alert("필수 선택을 확인하세요.");
    				return false;
    			} else {
 					return true;
    			}
			}
			
		});
	</script>
</body>
</html>