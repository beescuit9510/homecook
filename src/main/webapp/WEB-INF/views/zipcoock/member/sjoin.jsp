<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- iamport.payment.js -->
<link rel="stylesheet" href="resources/css/member/bjoin.css">
<link rel="stylesheet" href="resources/css/member/modal.css">
<title>Document</title>


<script>

function join() {
	var agree = document.getElementById('privacyAgreement');
	var mailcode;
	//개인정보 동의가 체크 되었을경우1
	if (agree.checked) {
		
		//아이디가 맞았을경우2
		if ($("#memberId").val() != '' && $("#idchk").val() == '1') {
		
			//패스워드 일치할경우3
				if ($("#memberPw").val() == $("#chkpw").val() && $("#chkpw").val() && memberPwchk == true
						&& $("#memberPw").val() && $("#chkpw").val() != '') {
				
				//상호명이 맞았을경우4
				if ($("#tradeName").val() != ''
						&& $("#tradeNamechk").val() == '1') {
					
					//대표자이름 공백아닌경우5
					if($("#memberName").val() !=''){
		
						//휴대폰 값 입력했을경우6
						if ($("#memberPhone2").val() && $("#memberPhone3").val() != '') {
							
								//주소 입력 했을경우7
								if ($("#postCode1").val() && $("#addressRoad1").val() != '') {
																		
									//상세주소 입력했을경우8
									if ($("#addressDetail1").val() != '') {
										
										//메일 주소 인증 & null이 아닌경우9
										if ($("#emailverification").val() == '1' && $("#email1") != '') {
											
											//회원가입 확인버튼 버튼 눌렀을경우 10
											if (confirm("회원가입 하시겠습니까?")) {
												alert("회원가입이 완료되었습니다.");
												
												return true;
												//회원가입 확인버튼 취소했을경우10
											} else {
												return false;
											}
											//이메일 중복체크/인증/null일경우9
										} else {
											alert("이메일을 확인해주세요!");
											$("#email1").focus();
											return false;
										}
										//상세주소 입력안했을경우8
									} else {
										alert("상세주소를 확인해주세요!");
										$("#addressDetail1").focus();
										return false;

									}
									//주소검색 안했을경우7
								} else {
									alert("주소를 확인해주세요!");
									$("#postCode1").focus();
									return false;

								}
							
							//핸드폰번호값 null일경우6
						} else {
							alert("상호 번호를 확인해주세요!");
							$("#memberPhone2").focus();
							return false;
						}
						//대표자 이름 공백인경우6
					} else {
						alert("대표자 이름을 확인해주세요!");
						$("#memberName").focus();
						return false;
						}
						//상호면 중복이거나 null일경우4
				} else {
						alert("상호명을 확인해주세요!");
						$("tradeName").focus();
						return false;
					}
					//비밀번호 일치하지않거나 null일경우3
				} else {
					alert("비밀번호를 확인해주세요!");
					$("#memberPw").focus();
					return false;

				}
				//아이디값 중복이거나 null일 경우2
			} else {
				alert("아이디를 확인해주세요!");
				$("#memberId").focus();
				return false;

			}

			//이용약관 체크안했을경우1
		} else {
			alert("이용약관 동의를 체크해주세요");
			$("#allAgreement").focus();
			return false;

		}
	}

	//전체체크
	function allCheck(obj) {
		var chks = document.getElementsByClassName("agreeCheck");
		var status = obj.checked;
		for (var i = 0; i < chks.length; i++) {
			chks[i].checked = status;
		}
	}
	//비밀번호 여부
	function chkPw(obj) {
		var pwChk = document.getElementById("pwChk");
		var pw = document.getElementsByName("memberPw")[0].value;
		var pwRe = obj.value;
		if (pwRe == "") {
			pwChk.innerHTML = "";
			pwCheck = false;
		} else if (pw != pwRe) {
			pwChk.innerHTML = "패스워드가 일치하지 않습니다.";
			pwChk.style.color = "red";
			obj.style.border = "1px solid red";
			pwCheck = false;
		} else {
			pwChk.innerHTML = "패스워드가 일치합니다.";
			pwChk.style.color = "#1f4787";
			obj.style.border = "1px solid #1f4787";
			pwCheck = true;
		}
	}
	//메일선택
	function mailSelect(obj) {
		var email2 = document.getElementsByName("email2")[0];
		email2.value = obj.value;
		var Bno = dacument.getElementByName("Bno").val;

	}

	//주소 검색
	function addrSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$("#postCode1").val(data.zonecode);
				$("#addressRoad1").val(data.roadAddress);
				$("#addressDetail1").focus;
			}
		}).open();
	}
</script>

</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
   <form action="" id="modal1">
        <div id='content' class="modal_window">
            <div class="modal_window_text" id="auth">
                <div>
                    <input type='button' value='X' class="close" id='btnClose1' />
                </div>
                <div>
                    <h2>인증번호를 입력해주세요</h2>
                </div>
                <div class="input_wrap">
                    <div>
                    </div>
                    <div id="search_input">
                        <input type='text' id="authCode" class="search_input" placeholder="인증코드입력" /><span id="timeZone"></span> 
                    </div>
                    <div><span></span></div>
                </div>
            </div>
            <div class="modal_window_btn">
                <div>
                    <input type='button' value='조회' id='btnCheck1' class="search_btn" />
                </div>
            </div>
        </div>
 </form>
 
	<div class="contents">
		<h1 style="text-align: center; margin-top:100px;">SIGN UP</h1>
		<hr>
		<br>
		
		<br>

		<div class="wrap">

			<div class="content">
			<form action="/sjoin" method="post" class="contentDetail"
					id="contentDetail-field" name="joinFrm">
					
				<div class="contentDetail">
					<h3 class="title">이용약관 확인 및 동의</h3>
					<br><br>
					<br><br>
					<div class='agreebox'>
						<input type="checkbox" id="privacyAgreement" class="agreeCheck">
						<label for="privacyAgreement">개인정보 수집 및 이용에 동의 <span
							class="fcBlue">(필수)</span></label>
						<div class="agreeContent">
							<ul>
								<li>수집항목 : 이름, 휴대전화번호, 생년월일, 비밀번호</li>
								<li>수집·이용목적 : 회원제 서비스 제공</li>
								<li>보유 및 이용기간 : 회원탈퇴 시 까지</li>
							</ul>
						</div>
					</div>

					
					<input type="hidden" id="businessNo" name="businessNo" value="${requestScope.Bno }">
					<input type="hidden" id="emailverification">

					<br>
					<br>
					<hr>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
				
					<h3 class="title">필수정보입력</h3>
					<div class="contentDetail border">
						<br>
						<table class="inputTbl">
							<tr>
								<td>아이디</td>
								<td><input type="text" class="joinInput" name="memberId" id="memberId"> <span id="ajaxCheck"></span><input type="hidden" id="idchk"></td>
								
								
								
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" class="joinInput" name="memberPw"
									id="memberPw"> <span id="pw-detail"> 8~12자 이내 
										영문,숫자,특수문자(“”-+/\:; 제외)</span> <span id="pwChkRule"></span></td> 
							</tr>
							<tr>
								<td>비밀번호 확인</td>
								<td><input type="password" class="joinInput" name="pw_re"
									id="chkpw" onfocusout="chkPw(this);"> <span id="pwChk"></span></td>
							</tr>
							<tr>
								<td>상호명</td>
								<td><input type="text" class="joinInput short3" id="tradeName" name="tradeName"><span id="ajaxTradeNameCheck"></span><input type="hidden" id="tradeNamechk"></td>
							</tr>
							<tr>
								<td>대표자 이름</td>
								<td><input type="text" class="joinInput short3" id="memberName" name="memberName"></td>
								<td><input type="hidden" class="joinInput short3" id="representative" name="representative" value="$("#idchk"))"></td>
							</tr>
						
							<tr>
								<td>대표 전화번호</td>
								<td>
								<select class="joinInput short1 memberphone" style="margin-left:0px;" name="memberPhone1">
								<option value="02">02</option>
                         		<option value="031">031</option>
                          		<option value="032">032</option>
                          		<option value="033">033</option>
                          		<option value="041">041</option>
                          		<option value="042">052</option>
                          		<option value="043">043</option>
                          		<option value="051">051</option>
                          		<option value="052">052</option>
                          		<option value="053">053</option>
                          		<option value="054">054</option>
                          		<option value="055">055</option>
                          		<option value="061">061</option>
                          		<option value="062">062</option>
                          		<option value="063">063</option>
                          		<option value="064">064</option>
								</select> -
								<input type="text" class="joinInput short2 memberphone" id="memberPhone2" name="memberPhone2" >  -
								<input type="text" class="joinInput short2 memberphone" id="memberPhone3" name="memberPhone3" >
							</tr>
							
							<tr>
								<td>기업주소</td>
								<td><input type="text" id="postCode1" class="joinInput short3" name="postCode1"
									readonly>
									<button onclick="addrSearch();" type="button" class="addrBtn">찾기</button></td>
							</tr>
							<tr>
								<td></td>
								<td style="padding-top: 5px;"><input type="text" id="addressRoad1" class="joinInput long" name="addressRoad1" readonly>
									<input type="text" id="addressDetail1" class="joinInput long" name="addressDetail1" placeholder="상세주소">
								</td>
							</tr>
							<tr>
								<td>기업 이메일</td>
								   
                                <td><input type="text" class="joinInput" id="email1" name="email1"> @ <input type="text" class="joinInput" id="email2" name="email2"> <select name="emailSelect" id="emailSelect" onchange="mailSelect(this);">
										<option value="">직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="nate.com">nate.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmail.net">hanmail.net</option>
								</select> <button type="button" onclick="checkEmail();" id="btnOpen1">중복체크</button><span id="ajaxEmailcheck"></span> 
                                  
                                </td>
							</tr>
						</table>
						<br>
						<br>
					</div>
					<div class="btnBox">
						<button onclick="return join();" class="nextBtn">회원가입</button>
					</div>
				</form>
			</div>
		</div>

	</div>

    <script>
    

        $("[name=memberId]").eq(0).keyup(function() {
            var memberId = $(this).val();
            var regExp = /[a-z0-9]{4,}/; //유효성검사 소문자와 숫자를섞어 4글자이상
            if (regExp.test(memberId)) {
                //중복검사
                $.ajax({
                    url: "/ajaxIdCheck.do",
                    data: {
                        memberId: memberId
                    },
                    type: "post",
                    success: function(data) {
                        if (data == 0) {
                            $("#ajaxCheck").html("사용 가능한 아이디 입니다.");
                            $("#ajaxCheck").css("color", "blue");
                            $("#idchk").val('1');
                        } else if (data == 1) {
                            $("#ajaxCheck").html("이미 사용중인 아이디 입니다.");
                            $("#ajaxCheck").css("color", "red");
                            $("#idchk").val('2');
                        }

                    }
                });
            } else {
                $("#ajaxCheck").html("아이디는 영문+숫자로 4글자 이상입니다.")
                $("#ajaxCheck").css("color", "red");
            }
        });
	
        $("[name=tradeName]").eq(0).keyup(function() {
            var tradeName = $(this).val();
            var regExpTn = /\S/g;
            if(regExpTn.test(tradeName)){
            	
                $.ajax({
                    url: "ajaxTradeNameCheck.do",
                    data: {
                    	tradeName: tradeName
                    },
                    type: "post",
                    success: function(data) {
                        if (data == 0) {
                            $("#ajaxTradeNameCheck").html("사용 가능한 상호명 입니다.");
                            $("#ajaxTradeNameCheck").css("color", "blue");
                            $("#tradeNamechk").val('1');                        
                        } else {
                            $("#ajaxTradeNameCheck").html("이미 사용중인 상호명 입니다.");
                            $("#ajaxTradeNameCheck").css("color", "red");
                            $("#tradeNamechk").val('2'); 
                        }
            }

                });
                    }else{
                    	   $("#ajaxTradeNameCheck").html("상호명엔 공백이 들어갈 수 없습니다.");
                           $("#ajaxTradeNameCheck").css("color", "red");
                           $("#tradeNamechk").val('2'); 
                    }
            })
   
        var memberPwchk = false;
		$("[name=memberPw]").eq(0).keyup(function() {
			var memberPw = $(this).val();
			
			// (알파벳 하나)(숫자 하나)(특수문자 하나)(문자열)
			 var regExpPw = /(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,12}/; 
			/*  var regExpPw = /^[a-zA-Z0-9]{8,12}$/; */
			 
			if (regExpPw.test(memberPw)){
				$('#pwChkRule').html("사용가능한 비밀번호입니다.");
				$('#pwChkRule').css('color' ,"#1f4787");
				memberPwchk = true;
				
			}else{
				$('#pwChkRule').html("비밀번호는  8~12자 이내 영문,숫자,특수문자로 입력해주세요.");
				$('#pwChkRule').css('color' ,"red");
				memberPwchk = false;
			}
		});


         function checkEmail() {
            var memberemail = $('#email1').val() + '@' + $('#email2').val();
            
            $.ajax({
                url: "ajaxEmailCheck",
                data: {
                    memberEmail: memberemail
                },
                type: "post",
                success: function(data) {
                    if (data == 0) {
                        $("#ajaxEmailcheck").html("사용 가능한 이메일 입니다.");
                        $("#ajaxEmailcheck").css("color", "blue");
                        $("#emailchk").val('1');
                       
                        
                        
                        //아이디 사용가능시 MODAL창 인증버튼시 팝업
                        var btnOpen1 = document.getElementById('btnOpen1');
                        var btnCheck1 = document.getElementById('btnCheck1');
                        var btnClose1 = document.getElementById('btnClose1');
                        var emailcheck = $("#emailcheck").val();

                        // email check modal 창을 감춤
                        var closeRtn1 = function() {
                                var modal1 = document.getElementById('modal1');
                                modal1.style.display = 'none';
                                
                               
                            }
                            // email check modal 창을 보여줌
                      
                         var modal1 = document.getElementById('modal1');
                      	var email = $('#email1').val() + '@' + $('#email2').val();
                          modal1.style.display = 'block';
                      		$.ajax({
                      			url :"/sendMail",
                      			data : {email:email},
                      			type : "post",
                      			success : function(data){
                      				mailCode = data;
                      				
                      				authTime();
                      			}
                      		});
                      
                        
                        btnCheck1.onclick = closeRtn1;
                        btnClose1.onclick = closeRtn1;
                                                                       
                        var mailCode;

                                            
                        var intervalId;
                    	function authTime(){
                    		$("#timeZone").html("<span id='min'>3</span> : <span id='sec'>00</span>");
                    		intervalId = window.setInterval(function(){
                    			timeCount();
                    		},1000);
                    	}
                    	function timeCount(){
                    	var min = Number($("#min").html());
                    	var sec = $("#sec").html();
                    	if(sec == "00"){
                    		if(min == 0){
                    			mailCode = null;
                    			clearInterval(intervalId);
                    		}else{
                    			$("#min").html(--min);
                    			$("#sec").html(59);
                    			
                    		}
                    	}else{
                    		var newSec = Number(sec);
                    		newSec--;
                    		if(newSec<10){
                    			$("#sec").html("0"+newSec);
                    		}else{
                    			$("#sec").html(newSec);
                    		}
                    	}
                    	}
                    	$("#btnCheck1").click(function(){
                    		
                    		if(mailCode == null){
                    			$("#authMsg").html("인증시간 만료");
                    			$("#authMsg").css("color","red");
                    		}else{
                    			
                    	
                    			if($("#authCode").val() == mailCode){
                    				$("#authMsg").html("인증성공");
                    				$("#authMsg").css("color","blue");
                    				clearInterval(intervalId);
                    				$("#timeZone").empty();
                    				$("#emailverification").val('1');
                    			}else{
                    				$("#authMsg").html("인증코드를 확인하세요");
                    				$("#authMsg").css("color","red");
                    			}
                    		}
                    		
                    	})
                                      	
                    } else if (data == 1) {
                        $("#ajaxEmailcheck").html("이미 사용중인 이메일 입니다.");
                        $("#ajaxEmailcheck").css("color", "red");
                    }

                }
            });
        }; 
    </script>
    <script>

    </script>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>