<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
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
		height: 600px;
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
	.addr2{
		width:500px;
	}
	#addr_btn{
		width: 247px;
		height: 30px;
	}
	
	
	.ox_btn{
		margin-top: 60px;
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
	
	.btn_close{
		width: 100%;
		height: 100%;
		outline: none;
		text-align: center;
		font-size: 30px;
		line-height: 45px;
		border:none;
		background-color: lightgray;
		color: white;
		font-weight: 600;
		cursor: pointer;
	}
	.btn_update{
		width: 100%;
		height: 100%;
		outline: none;
		text-align: center;
		font-size: 30px;
		line-height: 45px;
		border:none;
		background-color: #FFB400;
		color: white;
		font-weight: 600;
		cursor: pointer;
	}
	.dod{
		margin: 30px auto;
		width: 500px;
		border : 2px dashed black;
	}

</style>
</head>
<body>
	<div class="body_wrap">
		<form action="pwUpdatePlay.makefree" method="POST" name="frm_mem" id="frm_mem">
		 <input type="hidden" name="id" value="${sessionScope.loginUser.id}">
			<div class="body_box">
				<div class="btn_back">
					<i class="fas fa-arrow-left" id="back_btn"></i>
				</div>
				<div class="body_header">
					<img src="${path}/images/logo2-12.png">
				</div>
				<div class="info_box">
					현재 비밀번호
					<span class="err_msg pwAjax">* 필수입력 정보입니다.</span>
					<div id="insert_pw" class="insert_div">
						<input type="password" id="input_pw" name="input_pw" class="input_class" maxlength="12">
					</div>
				</div>
				<div class="dod"></div>
				<div class="info_box">
					새 비밀번호
					<span class="err_msg">* 필수입력 정보입니다.</span>
					<div id="insert_pw" class="insert_div">
						<input type="password" id="input_npw" name="input_npw" class="input_class" maxlength="12">
					</div>
				</div>
				<div class="info_box">
					새 비밀번호 확인
					<span class="err_msg">* 필수입력 정보입니다.</span>
					<div id="insert_nrpw" class="insert_div">
						<input type="password" id="input_nrpw" class="input_class" maxlength="12">
					</div>
				</div>
				<div class="ox_btn">
					<div class="btn_box btn_update">수 정</button></div>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="js/validation.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var flag = 0;
			var currentPw = false;
			$('.btn_back').click(function(event) {
				location.href = 'index.makefree';
			});
			
			//ajax를 활용하여 입력한 비밀번호와 현재 유저의 비밀번호가 일치하는지 확인
			$('#input_pw').keyup(function(){
				var pw = $('#input_pw').val();
				var id = "${sessionScope.loginUser.id}";
				
				if(pw != null || pw.length != 0){
					currentPw = ajaxPwCheck(id, pw);
				}
				
			});
			
			
			
			$('#input_npw').keyup(function(event) {
				var pw = $('#input_pw').val();
				var npw = $.trim($('#input_npw').val());
				var nrpw = $.trim($('#input_nrpw').val());
				
				var checkResult = joinValidate.checkPw(npw, nrpw);

				if(checkResult.code != 0){
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text(checkResult.desc);
					$('.check_i').eq(1).css('color', '#ff1212');
					flag = 0;
					return false;
				} else if(pw == npw){
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 이전과 같은 비밀번호입니다.');
					flag = 0;
					return false;
				} else {
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text(checkResult.desc);
					$('.check_i').eq(1).css('color', 'mediumseagreen');
					flag = 1;
					return true;
				}
				flag = 0;
				return false;	
			});
			
			//비밀번호 확인
			$('#input_nrpw').keyup(function(event) {
				var pw = $('#input_pw').val();
				var npw = $.trim($('#input_npw').val());
				var nrpw = $.trim($('#input_nrpw').val());
				
				var checkResult = joinValidate.checkRpw(npw, nrpw);

				if(checkResult.code != 0){
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text(checkResult.desc);
					$('.check_i').eq(2).css('color', '#ff1212');
					flag = 0;
					return false;
				}  else if(pw == npw){
					$('.err_msg').eq(1).css('display', 'inline-block')
									   .css('color', '#ff1212')
									   .text('* 이전과 같은 비밀번호입니다.');
					flag = 0;
					return false;
				} else {
					$('.err_msg').eq(2).css('display', 'inline-block')
									   .css('color', 'mediumseagreen')
									   .text(checkResult.desc);
					$('.check_i').eq(2).css('color', 'mediumseagreen');
					flag = 1;
					return true;
				}
				flag = 0;
				return false;
			});
			
			
			$('.btn_update').click(function(event) {
				//1.현재 비밀번호가 맞는지
				if(!currentPw){
					$('#input_pw').focus();
					return false;
				} else if(flag == 0){
					//2.새 비밀번호와 새 비밀번호 확인 유효성 체크
					//3.현재 비밀번호와 새 비밀번호가 같은지 체크
					$('#input_npw').focus();
					return false;
				}
				
				$('#frm_mem').submit();
			});
			
			
		});
	
	</script>
	
	
</body>
</html>