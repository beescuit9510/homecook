<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.table_head
{
	background: #b3a9f1;
	font-size: 14px;
}

.table_value
{
	background: #ecf5fc;
	text-align: center;	
	font-size: 12px;
}

.memberTabel
{
	margin-top: 20px;
	margin-bottom: 20px;
}

.search_content
{
	font-size: 12px;
	display: flex;
}
.search_box
{
	margin-left: 20px;
}
.seach_btn_model
{
	width: 60px;
	height: 20px;
	
	background: #dcdff2;
	border: none;
	border-bottom: 1px solid #8c77fa;
	border-right: 1px solid #8c77fa;
	
}

.seach_btn_model:active
{
	background : #514e61;
	color: white;
	border: none;
	border-top: 2px solid #dcdff2;
	border-left: 2px solid #dcdff2;
}

#search_Data:focus 
{
	outline: none;
}
</style>
<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
        			<!-- main content making area -->        			
        			<%@include file="/WEB-INF/views/admin/adminHeader.jsp" %>	
        			<div class = "amdin_main_content">
        				<table class = "memberTabel" style = "width:100%;">
						<tr class = "table_head">
							<th>회원 번호</th><th>회원 아이디</th><th>회원이름</th><th>전화번호</th><th>회원 등급</th>
							<th>딜리버리 등급</th>
						</tr>	
						<tr class = "table_value">
							<td>11</td><td>아이디</td><td>이름</td><td>전화번호</td><td>등급</td><td>딜리버리 등급</td>
						</tr>								
						</table>
						<div class = "search_content">
							<div class="btn-group " role="group" aria-label="Basic radio toggle button group">
							  <input type="radio" class="btn-check" name="btnradio" id="radio_Id" autocomplete="off" checked="">
							  <label class="btn btn-outline-secondary" for="radio_Id">회원 id</label>
							  <input type="radio" class="btn-check" name="btnradio" id="radio_Name" autocomplete="off" checked="">
							  <label class="btn btn-outline-secondary" for="radio_Name">회원 이름</label>
							  <input type="radio" class="btn-check" name="btnradio" id="radio_Level" autocomplete="off" checked="">
							  <label class="btn btn-outline-secondary" for="radio_Level">회원 등급</label>
							</div>
							<div class  = "search_box">
								<input type = "text" id = "search_Data">
								<button type="button" class="seach_btn_model" id = "search_Btn">검색</button>							
							</div>							
						</div>       				
        			</div>
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>