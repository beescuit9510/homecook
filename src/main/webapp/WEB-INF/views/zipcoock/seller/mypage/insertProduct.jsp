<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
        			   <form action="/inputProductInfo" method="post" enctype="multipart/form-data">
				<table class="table" style="margin-top:70px">
					<tr>
						<th>카테고리</th>
						<td colspan="4">
							<select class="form-control" id="categoryNo" name="categoryNo">
								<option value="0">대분류 선택</option>
								<option value="1">생활용품</option>
								<option value="2">뷰티</option>
								<option value="3">헬스/건강식품</option>
								<option value="4">주방용품</option>
								<option value="5">완구/취미</option>
								<option value="6">헬스/건강식품</option>
								<option value="7">주방용품</option>
								<option value="8">완구/취미</option>
							</select>
							<input type="hidden" id="category" name="category">
						</td>
					</tr>
					<tr>
					<th>상호명</th>
					<td colspan="4">
						<input type="text" id="productBrand" name="productBrand" class="form-control" readonly> 
					</td>
					</tr>
					<tr>
					<th>상품명</th>
					<td colspan="4">
						<input type="text" id="productName" name="productName" class="form-control"> 
					</td>
					</tr>
					<tr>
					<th>판매가</th>
					<td colspan="4">
						<input type="text" id="Price" name="Price" class="form-control" style="width:200px; float:left"><span style="    vertical-align: middle; line-height: 37px; font-size: 20px; padding-left: 10px;">원</span>
					</td>
					</tr>
					<tr>
					<th>재고</th>
					<td colspan="4">
						<input type="text" id="stock" name="stock" class="form-control" style="width:200px">
					</td>
					</tr>
					<tr>
					<th>제조일자</th>
					<td colspan="4">
						<input type="date" id="manufactureDate" name="manufactureDate" class="form-control" style="width:200px">
					</td>
					</tr>
					<tr>
					<th style="vertical-align: middle;text-align: center;">제조국</th>
					<td colspan="2">
						<input type="text" id="orgin" name="origin" class="form-control">
					</td>
					<th style="width: 100px; vertical-align: middle;text-align: center;">제조자</th>
					<td colspan="2">
						<input type="text" id="manufacturer" name="manufacturer" class="form-control">
					</td>
					</tr>
					<tr>
					<th style="width:120px;">담당자 연락처</th>
					<td colspan="4">
						<input type="text" id="managerContact1" name="managerContact1" class="form-control" style="width:100px;display: inline;"><span>-</span>
						<input type="text" id="managerContact2" name="managerContact2" class="form-control" style="width:200px;display: inline;"><span>-</span>
						<input type="text" id="managerContact3" name="managerContact3" class="form-control" style="width:200px;display: inline;">
					</td>
				
					</tr>
					
					<tr>
						<th>상품설명</th>
						<td colspan="4">
							<textarea id="howToUse" name="howToUse" class="form-control" style="height:300px"></textarea>
						</td>
					</tr>
					<tr>
					<th>주의사항</th>
					<td colspan="4">
						<input type="text" id="precautions" name="precautions" class="form-control" style="width:200px">
					</td>
					</tr>
					<tr>
					<th>유통기한</th>
					<td colspan="4">
						<input type="date" id="expirationDate" name="expirationDate" class="form-control" style="width:200px">
					</td>
					</tr>
					
					
					<tr>
					<th>구매제한</th>
					<td colspan="4">
						<input type="text" id="limit" name="limit" class="form-control" style="width:200px">
					</td>
					</tr>
					<tr>
					<th>배송 방법</th>
					<td colspan="4">
						<input type="text" id="shippingMethod" name="shippingMethod" class="form-control" >
					</td>
					
					<tr>
					<th>배송 회사</th>
					<td colspan="4">
						<input type="text" id="shippingCompany" name="shippingCompany" class="form-control" >
					</td>
					
					</tr>
					<tr>
					<th>배송예상기간</th>
					<td colspan="4">
						<input type="text" id="productSize" name="productSize" class="form-control" >
					</td>
					</tr>
					
					<tr>
					<th>배송비</th>
					<td colspan="4">
						<input type="text" id="shipping_fee" name="shipping_fee" class="form-control" >
					</td>
					</tr>
					
					<tr>
						<th>썸네일 파일</th>
						<td colspan="4"> 
							<input type="file" id="productImage" name="productImage" accept=".png,.jpg,.jpeg" style="float:left">
							<span style="float:right" class="float-right">권장크기 : 500x500</span>
						</td>
					</tr>
					<tr>
						<th>상세보기 파일</th>
						<td colspan="4">
							<input type="file" id="productFile" name="productFile" accept=".png,.jpg,.jpeg" style="float:left">
							<span style="float:right" class="float-right">파일형식 : PDF</span>
						</td>
					</tr>
					<tr>
						<td colspan="6" style="text-align: center;">
							<button type="button" id="frmCheck" class="btn btn-block">수량입력</button>
						</td>
					</tr>
				</table>

				<%--나중에 session으로 받아서 memberNo 추가로 보내주기 --%>
				<input type="hidden" name="productSeller" value="${sessionScope.m.memberNo }">
				<input type="hidden" name="productId" value=${sessionScope.m.memberId }>
			</form>
        	
        		
        		</div>	
        	</div>
        </div>
        	</div>
        </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
<style>
	.input{
			height: 30px;
		}
		th{
		 vertical-align: middle;text-align: center;
		}
	.content_div_info {
	margin: 0px;
	height : 80px;
	border : unset;
		}
</style>
      </body>
      </html>
      