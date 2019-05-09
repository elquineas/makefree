<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	body{
		background: #eaeaea;
	}

	.body_wrap{
		
	}
	
	.body_box{
		position: relative;
		background: white;
		margin: 50px auto 0;
		border: 1px solid black;
		width: 600px;
		height: 850px;
	}
	.body_header{
		/*border: 1px solid blue;*/
		margin-top: 0px;
		text-align: center;
		height: 150px;
		line-height: 70px;
		font-size: 30px;
	}
	.body_header > img{
		margin-top: 50px;
		height: 80px;
		width: 250px;
	}
	.info_box{
		position: relative;
		/*border: 1px solid blue;*/
		height: 70px; 
		padding: 0 0 0 50px;
		margin-top: 0px;
	}
	
	.insert_div{
		border: 1px solid #DDD;
		width: 500px;
		height: 40px;
		box-sizing: border-box;
		margin-top: 5px;
		position: relative;
		font-size: 15px;
	}
	/*
	.insert_label{
		font-size: 14px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: .3s;
		color: #979797;
		top: 14px;
		left: 10px;
	}*/
	.input_class{
		width: 100%;
		height: 100%;
		display: inline-block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 0 0 0 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline: none;
		font-size: 15px;
	}
	.mail_box{
		width: 200px;
		display: inline-block;
		margin-right: 10px;
	}
	.mail_input{
		width: 50px;
	}
	.insert_phone{
		border: 1px solid #DDD;
		width: 130px;
		height: 40px;
		box-sizing: border-box;
		margin-top: 5px;
		position: relative;
	}
	.phone_flex{
		width: 500px;
		display: flex;
		justify-content: space-between;
	}
	.underbar{
		line-height: 50px;
	}
	
	#input_mail{
		font-size: 15px;
		width: 150px;
		/*border: 1px solid #DDD;*/
	}
	.at{
		line-height: 40px;
		width: 20px;
		margin: 0 5px 0 5px;
	}
	.space_box{
		width: 10px;
	}
	#mail_wrap{
		display: flex;
		font-size: 20px;
	}
	#email_url{
		width: 130px;
		font-size: 15px;
	}
	#mail_wrap{
		border: none;
	}
	#email_box{
		height:98%;
		border: 1px solid #DDD;
	}
	#selmail{
		font-size: 15px;
		width: 100%;
	}
	
	#addr_box{
		height: 180px;
	}
	.addr{
		width: 247px;
		height:30px;
		margin-top: 10px;
	}
	#addr_btn{
		height: 30px;
	}
	
	
	.ox_btn{
		/*border: 1px solid red;*/
		height: 50px;
		display: flex;
		justify-content: space-between;
		padding: 0 40px 0 40px;
	}
	.btn_box{
		margin: 0 10px 0 10px;
		/*border: 1px solid black;*/
		width: 100%;
		height: 50px;
		text-align: center;
		font-size: 30px;
		line-height: 45px;
		/* border-radius: 10px; */
		background-color: #FFB400;
		color: white;
		font-weight: 600;
		cursor: pointer;
	}
	
	.btn_back{
		position: absolute;
		width: 40px;
		height: 40px;
		left: 0;
		top: 0;
		text-align: center;
		
		font-size: 20px;
		color: #dadada;
		cursor: pointer;
	}
	.btn_back > i{
		line-height: 40px!important;
	}
	.btn_back:hover{
		color: #939393;
		transition: .3s;
		font-size: 25px;
	}
	
	.err_msg{
		/*position: absolute;*/
		left: 170px;
		top: 3px;
		color: #ff1212;
		font-size: 12px;
		display: none;
	}
	
	.check_i{
		position: absolute;
		width: 50px;
		height: 50px;
		top: 1px;
		right:-17px;
		font-size: 25px;
		color: #dadada;
		z-index: 3;
	
	}
	.check_i >i{
		line-height: 37px!important;
	}
</style>
</head>
<body>
	<div class="body_wrap">
		<div class="body_box">
			<div class="btn_back">
				<i class="fas fa-arrow-left" id="back_btn"></i>
			</div>
			<div class="body_header">
				<img src="${path}/images/logo2-12.png">
			</div>
			<div class="info_box">
				아이디
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div id="insert_id" class="insert_div">
					<input type="text" id="input_id" class="input_class" maxlength="15">
					<div class="check_i"><i class="fas fa-check-circle"></i></div>
				</div>
			</div>
			<div class="info_box">
				패스워드
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div id="insert_pw" class="insert_div">
					<input type="password" id="input_pw" class="input_class" maxlength="12">
					<div class="check_i"><i class="fas fa-check-circle"></i></div>
				</div>
			</div>
			<div class="info_box">
				패스워드 확인
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div id="insert_repw" class="insert_div">
					<input type="password" id="input_repw" class="input_class" maxlength="12">
					<div class="check_i"><i class="fas fa-check-circle"></i></div>
				</div>
			</div>
			<div class="info_box">
				이름
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div id="insert_name" class="insert_div">
					<input type="text" id="input_name" class="input_class" maxlength="5">
					<div class="check_i"><i class="fas fa-check-circle"></i></div>
				</div>
			</div>
			<div class="info_box ">
				전화번호
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div class="phone_flex">
					<div class="insert_phone ">
						<input type="text" id="insert_phone1" maxlength="3" class="input_class input_phone">
					</div>
					<div class="underbar">
						-
					</div>
					<div class="insert_phone ">
						<input type="text" id="insert_phone2" maxlength="4" class="input_class input_phone">
					</div>
					<div class="underbar">
						-
					</div>
					<div class="insert_phone ">
						<input type="text" id="insert_phone3" maxlength="4" class="input_class input_phone">
						<div class="check_i"><i class="fas fa-check-circle"></i></div>
					</div>

				</div>
			</div>
			<div class="info_box" >
				이메일
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div id="mail_wrap" class="insert_div">
					<div id="email_box">
						<input type="text" id="input_mail" class="input_class">
					</div>
					<div class="at">@</div>
					<input type="text" id="email_url" >
					<div class="space_box"> </div>
					<select id="selmail">
						<option value="directVal">직접입력</option>
						<option value="naver.com">naver.com(네이버)</option>
						<option value="daum.net">daum.net(다음카카오)</option>
						<option value="gmail.com">gmail.com(구글)</option>
						<option value="nate.com">nate.com(네이트)</option>
					</select>
				</div>
			</div>
			<div class="info_box" id="addr_box">
				주소
				<span class="err_msg">* 필수입력 정보입니다.</span>
				<div>
					<input type="text" class="addr" id="sample6_postcode" placeholder="우편번호">
					<input type="button" id="addr_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="addr" id="sample6_address" placeholder="주소">
					<input type="text" class="addr" id="sample6_detailAddress" placeholder="상세주소">
				</div>
			</div>
			<div class="ox_btn">
				<div class="btn_box">회원가입</div>
			</div>
		</div>
	</div>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.input_class').focus(function(event) {
				$(this).css('border', '2px solid skyblue');
			});

			$('.input_class').blur(function(event) {
				$(this).css('border', 'none');
			});

			$('#insert_phone1').keyup(function(event) {
				var phone = $(this).val().length;

				if(phone == 3){
					$('#insert_phone2').focus();
				}
			});

			$('#insert_phone2').keyup(function(event) {
				var phone = $(this).val().length;

				if(event.keyCode != 8 && phone == 4){
					$('#insert_phone3').focus();
				}
				if(event.keyCode == 8 && phone < 1) {
					$('#insert_phone1').focus();
				}
			});

			$('#insert_phone3').keyup(function(event) {
				var phone = $(this).val().length;
				if(event.keyCode == 8 && phone < 1) {
					$('#insert_phone2').focus();
				}
			});

			$('#selmail').change(function(event) {
				//change는 값이 변했을때 
				var selmail = $(this).val();
				//input 과 관련된 값은 val로 가져와야한다.
				if (selmail == 'directVal') {
					$('#email_url').val("");
					$('#email_url').focus();
					$('#email_url').removeAttr('readonly');
				}else{
					$('#email_url').val(selmail);
					$('#email_url').prop('readonly', true);
				}
			});


			$('.btn_back').click(function(event) {
				location.href = 'constract1.html';
			});

			var
				uid = $('#input_id'),
				upw = $('#input_pw'),
				urepw = $('#input_repw'),
				uname = $('#input_name'),
				uphone = $('#insert_phone1').val()+$('#insert_phone2').val()+$('#insert_phone3').val(),
				umail = $('#input_mail');
				// uaddr = 



			var idReg = RegExp(/^[a-zA-Z0-9-_]{5,15}$/);
			//ID: 영문 대문자 또는 소문자 숫자로 시작하는 아이디 길이는 5~15자, 끝날때 제한없음
			var pwReg = RegExp(/^[a-zA-Z0-9]{4,12}$/);
			//PW: 영문 대문자 또는 소문자 숫자로 시작하는 비밀번호 길이는 4~12자, 끝날때 제한없음
			var nameReg = RegExp(/^[가-힣]{2,5}$/);
			//이름: 가에서부터 힣까지 한글 전부 이름의 길이는 2글자에서 5글자 까지
			var emailReg = RegExp(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,20}$/i);
			//이메일
			var phoneReg = RegExp(/^[0-9]{8,11}$/);
			
			
			//공백여부
			var regEmpty = /\s/g;
			var reg = /[^a-z0-9-_.]+/g;

			//아이디
			$('#input_id').keyup(function(event) {
				var id = $.trim(uid.val());
				if (id == '') {
					$('.err_msg').eq(0).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					$('.check_i').eq(0).css('color', '#dadada');
					uid.select();
					uid.focus();
					return false;
				} else if (id.match(regEmpty)) {
					$('.err_msg').eq(0).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 공백없이 입력해주세요.');
					$('.check_i').eq(0).css('color', '#ff1212');
					return false;
				} else if (id.length < 5 || id.length > 15) {
					$('.err_msg').eq(0).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 5~15자 이내로 입력해주세요. ');
					$('.check_i').eq(0).css('color', '#ff1212');
					return false;
				} else if (!idReg.test(id)) {
					$('.err_msg').eq(0).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 올바른 아이디를 입력해주세요.');
					$('.check_i').eq(0).css('color', '#ff1212');
					return false;
				} else {
					 ajaxCheck(id);
				}
			});

			//비밀번호
			$('#input_pw').keyup(function(event) {
				var pw = $.trim(upw.val());
				
				if (pw == '') {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					$('.check_i').eq(1).css('color', '#dadada');
					upw.focus();
					return false;
				} else if (pw.match(regEmpty)) {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 공백없이 입력해주세요.');
					$('.check_i').eq(1).css('color', '#ff1212');
					return false;
				} else if (pw.length < 4 || pw.length > 12) {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 4~12자 이내로 입력해주세요. ');
					$('.check_i').eq(1).css('color', '#ff1212');
					return false;
				} else if (!pwReg.test(pw)) {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 올바른 비밀번호를 입력해주세요.');
					$('.check_i').eq(1).css('color', '#ff1212');
					return false;
				} else {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('* 사용가능한 비밀번호 입니다.');
					$('.check_i').eq(1).css('color', 'mediumseagreen');
					
					var repw = $.trim(urepw.val());
					if (repw != null || repw.length != 0){
						if(repw == pw){
							$('.err_msg').eq(2).css('display', 'inline-block')
											   .text('* 비밀번호가 일치합니다.')
											   .css('color', 'mediumseagreen');
							$('.check_i').eq(2).css('color', 'mediumseagreen');
						}  else {
							$('.err_msg').eq(2).css('display', 'inline-block')
											   .css('color', '#ff1212')
											   .text('* 입력하신 비밀번호가 다릅니다.');
							$('.check_i').eq(2).css('color', '#ff1212');
						} 
					}
				}
			});

			//비밀번호 확인
			$('#input_repw').keyup(function(event) {
				var repw = $.trim(urepw.val());
				var pw = $.trim(upw.val());
				if(repw == ''){
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 비밀번호를 다시 입력해주세요.');
					$('.check_i').eq(2).css('color', '#dadada');
					return false;
				} else if (repw != pw){
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 입력하신 비밀번호가 다릅니다.');
					$('.check_i').eq(2).css('color', '#ff1212');
					return false;
				} else {
					$('.err_msg').eq(2).css('display', 'inline-block').text('* 비밀번호가 일치합니다.').css('color', 'mediumseagreen');
					$('.check_i').eq(2).css('color', 'mediumseagreen');
				}
			});
			
			//이름
			$('#input_name').keyup(function(event) {
				var name = $.trim(uname.val());
				if (name == '' || name.length ==0) {
					$('.err_msg').eq(3).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					$('.check_i').eq(3).css('color', '#dadada');

					return false;
				} else if (name.match(regEmpty)) {
					$('.err_msg').eq(3).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 공백없이 입력해주세요.');
					$('.check_i').eq(3).css('color', '#ff1212');
					return false;
				} else if (!nameReg.test(name)) {
					$('.err_msg').eq(3).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 올바른 이름을 입력해주세요.');
					$('.check_i').eq(3).css('color', '#ff1212');
					return false;
				} else {
					$('.err_msg').eq(3).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('');
					$('.check_i').eq(3).css('color', 'mediumseagreen');
				}
			});

			//전화번호
			$('.input_phone').keyup(function(event) {
				var phone = $.trim($('#insert_phone1').val()+$('#insert_phone2').val()+$('#insert_phone3').val());

				if (phone == '') {
					$('.err_msg').eq(4).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					$('.check_i').eq(4).css('color', '#dadada');
					return false;
				} else if (phone.indexOf("01") != 0) {
					$('.err_msg').eq(4).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 휴대폰 번호가 유요하지 않습니다.');
					$('.check_i').eq(4).css('color', '#ff1212');
					return false;
				} else if (phone.match(regEmpty)) {
					$('.err_msg').eq(4).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 공백없이 입력해주세요.');
					$('.check_i').eq(4).css('color', '#ff1212');
					return false;
				} else if (!phoneReg.test(phone) || phone.length < 11) {
					$('.err_msg').eq(4).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 올바른 번호를 입력해주세요.');
					$('.check_i').eq(4).css('color', '#ff1212');
					return false;
				} else {
					$('.err_msg').eq(4).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text('');
					$('.check_i').eq(4).css('color', 'mediumseagreen');
				}
			});
			
			//이메일
			$('#input_mail').keyup(function(event) {
				var email = $.trim($(this).val());
				var url = $.trim($('#email_url').val());
				
				if(email == "" || email.length == 0){
					$('.err_msg').eq(5).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					return false;
				} else if(email.match(regEmpty)){
					$('.err_msg').eq(5).css('display', 'inline-block')
					 				   .css('color', '#ff1212')
					 				   .text('* 공백없이 입력해주세요.');
					return false;
				} else if (url != "" || url.length != 0){
					var fullMail = email+"@"+url;
					if(!emailReg.test(fullMail)){
						$('.err_msg').eq(5).css('display', 'inline-block')
		 								   .css('color', '#ff1212')
		 								   .text('* 올바른 이메일을 입력해주세요.');
						return false;
					} else {
						$('.err_msg').eq(5).css('display', 'inline-block')
										   .css('color', 'mediumseagreen')
										   .text('* 사용가능한 이메일 입니다.');
					}
				}
			});
			
			$('#email_url').keyup(function(event) {
				var email = $.trim($(this).val());
				var url = $.trim($('#email_url').val());
				
				if(url == "" || url.length == 0){
					$('.err_msg').eq(5).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 필수입력 정보입니다.');
					return false;
				} else if(url.match(regEmpty)){
					$('.err_msg').eq(5).css('display', 'inline-block')
					 				   .css('color', '#ff1212')
					 				   .text('* 공백없이 입력해주세요.');
					return false;
				} else if (url != "" || url.length != 0){
					var fullMail = email+"@"+url;
					if(!emailReg.test(fullMail)){
						$('.err_msg').eq(5).css('display', 'inline-block')
		 								   .css('color', '#ff1212')
		 								   .text('* 올바른 이메일을 입력해주세요.');
						return false;
					} else {
						$('.err_msg').eq(5).css('display', 'inline-block')
										   .css('color', 'mediumseagreen')
										   .text('* 사용가능한 이메일 입니다.');
					}
				}
			});
			
			
		});
	</script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	    
	    function ajaxCheck(id){
			$.ajax({
				//url:"idCheck.makefree?id="+id 라고 쓰는 것을 url과 data로 나누어서 사용
				url:"idCheck.makefree",
				type:"POST",
				dataType:"json",
				data:"id="+id,
				success:function(data){
					if(data.message == "-1"){
						$(".err_msg").eq(0).text("* 이미 사용중인 아이디 입니다.")
									 .css("color", "#ff1212");
						$('.check_i').eq(0).css('color', '#ff1212');
					} else {
						$('.err_msg').eq(0).css('display', 'inline-block')
										   .css('color', 'mediumseagreen')
										   .text('* 사용가능한 아이디 입니다.');
						$('.check_i').eq(0).css('color', 'mediumseagreen');
					}
				},
				error:function(){
					alert("System Error!!!");
				}
			});	
	    }
	    
	    
	</script>
</body>
</html>