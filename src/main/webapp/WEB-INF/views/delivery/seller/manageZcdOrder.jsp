<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliverySeller/manageZcdOrder.css">

<!-- bootstrap css -->
<link rel="stylesheet" href="/resources/css/deliverySeller/bootstrap.css">
<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- bootstrap jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>

	#pageNavi {
		display:flex;
		width:420px;
		margin: 0 auto;
		justify-content: center;
	}
	.table {
		font-size: 12px;
		overflow: hidden;
		text-align: center;
	}

</style>
<body>
<div class="s-wrapper">
	<jsp:include page="/WEB-INF/views/common/deliveryHeader.jsp" />
	<div class="main_field">
			<div class="main_content2" >
			<div class="side_nav">
	        		<div class="my_info">
	        			<div class="my_info_div">
	        				<span class="my_info_span">환영합니다</span>
	        			</div>
	        			<div class="user_div">
	        				<div class="user_div_div">
	        					<div class="user_div_content">
	        						<span class="user_div_name">${sessionScope.m.memberName }<span class="user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class="side_nav_content">
	        			<div class="side_nav_div"><span class="side_nav_span"><a href="/manageMarketFrm.do">매장관리</a></span></div>
	        			<div class="side_nav_div"><span class="side_nav_span"><a href="/manageMenuFrm.do">메뉴관리</a></span></div>
	        			<div class="side_nav_div side_nav_div_selected"><span class="side_nav_span side_nav_span_selected"><a href="/manageZcdOrderFrm.do">주문접수</a></span></div>
	        			<div class="side_nav_div"><span class="side_nav_span"><a href="/">리뷰관리</a></span></div>       			
        			</div>
        		</div>
        		
        		<div class="content_div">
        			<div class="content_title">주문접수</div>
        			<div class="content_div_area">
        				<div class="content_div_content">
        					
        					
        						<table class="table" style="width:100%;">
									<tr>
										<th>주문번호</th>
										<th>구매자</th>
										<th>결제방식</th>
										<th>주문가격</th>
										<th>주문일자</th>
										<th>주문상태</th>
										<th>상세보기</th>
									</tr>
									<c:forEach items="${zop.list }" var="o" varStatus="i">
										<tr class="table-light">
											<td>${o.orderNo }</td>
											<td>${o.memberNo }</td>
											<td>${o.orderTime }</td>
											<td>${o.orderRequest }</td>
											<td>${o.orderState }</td>
											<td>${o.orderAddress }</td>
											<td>${o.orderAddress2 }</td>
										</tr>
									</c:forEach>
								</table>
        					
							
							<div id="pageNavi">${zop.pageNavi }</div>
							
        				</div>
        			</div>
        		</div>
    		</div> <!-- main content -->
        </div> <!-- main field -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</div>
</body>
</html>