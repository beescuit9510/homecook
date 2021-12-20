<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	overflow: hidden;
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
	
	<div class="card">
		<div class="card-header" style="font-weight: 600;">${menu.menuName }</div>
		<div class="menu_content">${menu.menuContent }</div>
		<div class="gjcLUR border_bottom">
			<span class="hwbCCJ">가격</span>
			<input type="hidden" name="menuPrice" value="${menu.menuPrice }">
			<div class="cQHmLv"><span><fmt:formatNumber value="${menu.menuPrice }" pattern="#,###" /> 원</span></div>
		</div>
		<div class="gjcLUR">
			<span class="hwbCCJ">수량</span>
			<div class="cQHmLv">
				<input type="number" class="form-control text-center" id="quantity" name="" value="1" min="1" max="100" style="width: 70px; border: none;"/>
			</div>
		</div>
	</div>
	
	
	
	<script>
		$(function() {
		
			$("input[type=number]").on("change", function() {
				var quantity = $(this).val();
				console.log(quantity);
				var price = $(this).parent().parent().prev().children().eq(1).val();
				console.log(price);
			});
			
		});
	</script>
</body>
</html>