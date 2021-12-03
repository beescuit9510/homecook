<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.pageTtile
{
	font-size : 20px;
	font-weight: bolder;	
	
	width: 80%;
}

.pageTtitle_box
{
	margin-top : 10px;
	width: 200px;
	color : #252528;
	border-bottom : 2px solid gray;
}

.admin_mView_Table
{
	margin-top: 15px;
	border: 1px solid black;
	border-collapse: collapse;
}
.q_table_00,.q_table_content
{
	border: 1px solid black;
	border-collapse: collapse;
	height: 50px;
}

.q_table_content
{
	padding-left: 15px;
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
        				<div class = "pageTtile">
        					<div class = "pageTtitle_box">
        						유저 상세 정보 _ ${m.memberName }
        					</div>  		
        				</div>
        				<div class = "admin_table" >					
						<table class = "admin_mView_Table" style = "width:100%;">
							<tr class = "table-primary">
								<th class = "q_table_00">회원 번호</th>
								<td class = "q_table_content" id = "Member_No">${m.memberNo}</td>
							</tr>		
							<tr class = "table-primary">
								<th class = "q_table_00">회원 아이디</th>
								<td class = "q_table_content" id = "Member_Id">
									${m.memberId}
								</td>
							</tr>
							<tr class = "table-primary">
								<th class = "q_table_00">회원 비밀번호</th>
								<td class = "q_table_content" id = "q_no">
									<input type = "text" id = "Member_Pw" value = "${m.memberPw}">	
								</td>
							</tr>							
							<tr class = "table-primary">
								<th class = "q_table_00">회원 이름</th>
								<td class = "q_table_content" id = "q_no">
									<input type = "text" id = "Member_Fname" value = "${m.memberName}">	
								</td>
							</tr>
							<tr class = "table-primary">
								<th class = "q_table_00">회원 등급</th>
								<td class = "q_table_content" id = "q_no">
									<input type = "hidden" id = "Member_Level_Save" value = "${m.memberLevel}">
									<select id = "Member_Level" name = "pay_Status">
										<option value = "1">1. 관리자</option>
										<option value = "2">2. 브라운</option>
										<option value = "3">3. 실버</option>
										<option value = "4">4. 골드</option>
										<option value = "5">5. 다이아</option>
									</select>				
								</td>
							</tr>
							<tr class = "table-primary">
								<th class = "q_table_00">회원 전화번호</th>
								<td class = "q_table_content" id = "q_no">
									<input type = "text" id = "Member_Phone" value = "${m.memberPhone}">	
								</td>
							</tr>
				
						</table>
						<div class = "admin_submit_btn">
							<button type="submit" class="btn btn-secondary" id = "submitButton"> < 정보 수정 > </button>	
						</div>	 
        			</div>      				      			
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>