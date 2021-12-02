<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
.adminHead
{
	height: 50px;	
	
	display: flex;
	justify-content: space-around;
	border-bottom: 2px solid gray;
}

.adminHead>div>a
{
	font-family: ns_bold;
	font-size: 12px;
	font-weight: bold;
	
	line-height: 50px;
	color: gray;
}
</style>
<div class = "adminHead">
    <div><a href = "/call_AdminPage.do">관리자 메인</a></div> 
    <div><a href = "/allMember.do">전체 회원 관리</a></div>    
    <div><a href = "/call_AdminPage.do">관리자 메뉴 2</a></div>     
    <div><a href = "/call_AdminPage.do">관리자 메뉴 3</a></div>          				        			
</div>