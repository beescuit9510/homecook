<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info:first-child{
		margin-bottom: 0;
		border-bottom: 0;
	}
	.btn-area{
		text-align: center;
		display: flex;
	}
	.btn-area>button:first-child {
		margin-right: 10px;
	}
	#text-emp{
		color:#333; 
		font-weight:600;
	}
	
</style>
</head>
<body>
<div class="s-wrapper">
<%@include file="/WEB-INF/views/common/header.jsp"%>
<%@include file="/WEB-INF/views/zipcoock/common/leftMenu.jsp"%>
        <div class = "content_div">
        	<div class = "content_div_area">
        		
        		<div class = "content_div_content" style="background: white; padding: 20px 20px; border: 1px solid rgb(221, 221, 221);">
        				<div id="title">
						<h2>상품 조회</h2>
						<div class="productTotal">
							
							<span>판매중인 상품 </span><span> [9]</span><button style="float:right; margin-top:20px;">상품등록</button>
						</div>
						<div>
							<table class="table total-table">
								<tr>
									<th id="check"><input type="checkbox" id="checkAll"></th>
									<th>상품이미지</th>
									<th>상품명</th>
									<th>가격</th>
									<th>관리</th>
								</tr>


						<c:forEach items="${list }" var="p" varStatus="i">
								<tr class="totalInfo">
									<td><input type="checkbox" class="checkProduct"
										name="checkId" value=${p.productName }></td>
									<td><a
										href="/productView?id=${p.productName }&seller=${p.matufacturer }&reqPage=1"><img
											src="/upload/product/" width="100px"
											height="100px"></a></td>
									<td><a
										href="/productView?id=${p.productName }&seller=${p.matufacturer }&reqPage=1"
										style="color: black">상품명</a></td>
									<td class="priceTd">${p.price }</td>
									
									<td>

										<button class="btn" style="border : 1px solid black">상품수정</button> <br>
									<br>
										<button class="btn" style="border : 1px solid black" value=${p.productName }
											data-toggle="modal" data-target="#myModal">재고확인</button>
									</td>
								</tr>
						</c:forEach>
							</table>



							<button class="btn selectDelBtn" onclick=func();>선택삭제</button>

						</div>
					</div>
        		</div>	
        	</div>
        </div>
        	</div>
        </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
	function func(){
		console.log(${list }+"test");
	}
	</script>
<style>
	.input{
			height: 30px;
		}
	.content_div_info {
	margin: 0px;
	height : 80px;
	border : unset;
		}
</style>
      </body>
      </html>
      