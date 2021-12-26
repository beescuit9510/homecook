<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/zcdCart.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
		<div class="content_title">장바구니</div>
			<c:if test="${not empty zcv }">
	            <input type="hidden" name="cmd" value="order">
	            <div class="cartBtn">
	               	<button class="abutton">선택상품 삭제</button>
	               	<button class="abutton deleteAll">장바구니 비우기</button>
	            </div>
	            <div class="cartdiv" id="cart">
	                <div class="divRow head">
	                    <div class="subdiv">
	                        <div class="check"><input type="checkbox" name="checkAll" id="checkAll" checked=""></div>
	                        <div class="img">이미지</div>
	                        <div class="pname">상품명</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartprice">가격</div>
	                        <div class="num">수량</div>
	                        <div class="sum">합계</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartcmd">삭제</div>
	                    </div>
	                    <div class="split"></div>
	                </div>
	        
	                <div class="divRow data">
	                    <div class="subdiv">
	                        <div class="check"><input type="checkbox" name="buy" class="checkBox" value="260" checked="">&nbsp;</div>
	                        <div class="img img-content"><img src="" width="60"></div>
	                        <div class="pname pname-content">
	                            <span>1번</span>
	                        </div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="20000">20,000원</div>
	                        <div class="num">
	                            <div class="updown">
	                                <span class="down" onclick="changePNum(1);"><i class="fas fas fa-minus-circle"></i></span>
	                                <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="2" onkeyup="changePNum(1);">
	                                <span class="up" onclick="changePNum(1);"><i class="fas fa-plus-circle"></i></span>
	                            </div>
	                        </div>
	                        <div class="sum">40,000원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartcmd"><button class="abutton deleteBtn">삭제</button></div>
	                    </div>
	                </div>
	                <div class="divRow data">
	                    <div class="subdiv">
	                        <div class="check"><input type="checkbox" name="buy" class="checkBox" value="261" checked="">&nbsp;</div>
	                        <div class="img img-content"><img src="" width="60"></div>
	                        <div class="pname  pname-content">
	                            <span>2번</span>
	                        </div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartprice"><input type="hidden" name="p_price" id="p_price2" class="p_price" value="19000">19,000원</div>
	                        <div class="num">
	                            <div class="updown">
	                                <span class="down" onclick="changePNum(2);"><i class="fas fas fa-minus-circle"></i></span>
	                                <input type="text" name="p_num2" id="p_num2" size="2" maxlength="4" class="p_num" value="1" onkeyup="changePNum(2);">
	                                <span class="up" onclick="changePNum(2);"><i class="fas fa-plus-circle"></i></span>
	                            </div>
	                        </div>
	                        <div class="sum">19,000원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartcmd"><button class="abutton deleteBtn">삭제</button></div>
	                    </div>
	                </div>
	                <div class="divRow data">
	                    <div class="subdiv">
	                        <div class="check"><input type="checkbox" name="buy" class="checkBox" value="262" checked="">&nbsp;</div>
	                        <div class="img img-content"><img src="" width="60"></div>
	                        <div class="pnam  pname-content">
	                            <span>3번</span>
	                        </div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartprice"><input type="hidden" name="p_price" id="p_price3" class="p_price" value="15200">15,200원</div>
	                        <div class="num">
	                            <div class="updown">
	                                <span class="down" onclick="changePNum(3);"><i class="fas fas fa-minus-circle"></i></span>
	                                <input type="text" name="p_num3" id="p_num3" size="2" maxlength="4" class="p_num" value="1" onkeyup="changePNum(3);">
	                                <span class="up" onclick="changePNum(3);"><i class="fas fa-plus-circle"></i></span>
	                            </div>
	                        </div>
	                        <div class="sum">15,200원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="cartcmd"><button class="abutton deleteBtn">삭제</button></div>
	                    </div>
	                </div>
	            </div>
	
	            <div class="bigtext right-align box summoney">결제 예정 금액 <span class="blue" id="sum_p_price">74,200 원</span></div>
	    
	            <div id="goorder" class="">
	                <div class="clear"></div>
	                <div class="buttongroup center-align cmd">
	                    <a id="orderList">선택한 상품 주문</a>
	                </div>
	            </div>
            
            </c:if>
            <c:if test="${empty zcv }">
            	<h2>장바구니가 비었습니다.</h2>
            </c:if>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
	var totalCount=0;
	var totalPrice=0;
	
	$(function(){
		// 전체 선택
		$("#checkAll").click(function(){
			if($("#checkAll").prop("checked")){
				$(".checkBox").prop("checked",true);
			}else{
				$(".checkBox").prop("checked",false);
			}
		});
		$(".check").click(function(){
			if($("input[name=buy]:checked").length < $("input[name=buy]").length){
				$("#checkAll").prop("checked",false);
			}else{
				$("#checkAll").prop("checked",true);
			}
			reCalc();
			updateUI();
		});

		// 선택 상품 삭제
		$(".abutton").eq(0).click(function(){
			$("input[name=buy]:checked").each(function(index,item){
				item.parentElement.parentElement.parentElement.remove();
			});
			// ajax 전송
			// 성공 시 
			reCalc();
			updateUI();
		});
		
		$(".deleteBtn").click(function(){
			$(event.target).parent().parent().parent().remove();
			// ajax 전송
			// 성공 시 
			reCalc();
			updateUI();
		});
		
		// 장바구니 비우기
		$(".deleteAll").click(function(){
			$(".divRow.data").each(function(index,item){
				item.remove();		
			});
			// ajax 전송
			// 성공 시 
			totalCount=0;
			totalPrice=0;
			reCalc();
			updateUI();
		});
		
		// 선택한 상품 주문 (ajax)
		$("#orderList").click(function(){
			// 필요한 정보 변수 설정
			// ajax로 정보 전송 후 
			// 성공시 페이지 이동
			location.href="/zcdOrderList.do";
		});
	});
	
	// 개별 수량 변경
	function changePNum(obj){
		var item=$("input[name=p_num"+obj+"]").val();
		var p_num=parseInt(item);
		var newval= 1;
		if($(event.target).closest("span").hasClass("up")===true){
			p_num+=1;
		}else if($(event.target).closest("span").hasClass("down")===true){
			p_num-=1;
		}
		
		newval=p_num;
		
        if (parseInt(newval) < 1 || parseInt(newval) > 99) {
        	return false;
        }
        $("input[name=p_num"+obj+"]").val(newval);
        item= newval;

        var price = $("input[name=p_num"+obj+"]").parent().parent().prev().children().val();
        
        $("input[name=p_num"+obj+"]").parent().parent().next().text((newval * price).formatNumber()+"원");
        // ajax 전송
        
        // 성공 시
        reCalc();
        updateUI();
	};
	
	
	// 재계산
	function reCalc(){
		totalCount=0;
		totalPrice=0;
		
		$(".p_num").each(function(index,item){
			if($(item).parent().parent().parent().prev().children().first().children().first().prop("checked")){
				var count=parseInt($(item).val());
				totalCount+=count;
				var price=$(item).parent().parent().prev().first().children().first().val();
				totalPrice+=count*price;
			}
		});
		// ajax 전송
        
        // 성공 시
        reCalc();
        updateUI();
	};
	
	// 화면 업데이트
	function updateUI(){
		$("#sum_p_price").text(totalPrice.formatNumber()+" 원");
	}
	
	// 숫자 3자리 콤마찍기
	Number.prototype.formatNumber = function(){
	    if(this==0) return 0;
	    let regex = /(^[+-]?\d+)(\d{3})/;
	    let nstr = (this + '');
	    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
	    return nstr;
	};
	</script>
</body>
</html>