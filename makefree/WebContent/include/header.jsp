<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- common.jsp 파일을 인클루드  -->
<%@ include file="common.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css/common.css?v=1">
<link rel="stylesheet" href="${path}/css/header.css?v=1">
<title>Insert title here</title>
</head>
<body>
	<div id="modal">
		<div id="modal_login">
			<span id="close_btn">
				<i class="fas fa-times"></i>
			</span>
			<div class="login_logo">
				<img src="${path}/images/logo2.png">
			</div>
			<div class="text_box">
				<div class="input_box login_id">
					<input type="text" placeholder="아 이 디" class="input_login" id="inputid">
				</div>
				<span class="err_code">아이디를 입력해주세요.</span>
				<div class="input_box login_pw">
					<input type="password" placeholder="패스워드" class="input_login" id="inputpw">
				</div>
				<span class="err_code">비밀번호를 입력해주세요.</span>
			</div>
			<div class="login_box">
				로 그 인
			</div>
			<div class="modal_box">
				<input type="checkbox" id="loginck">
				<label for="loginck" class="label1">
					&nbsp;로그인 상태 유지
				</label>
			</div>
			<div class="member_box">
				<a href="#">아이디 찾기</a>&nbsp;<span class="si">|</span>&nbsp;
				<a href="#">비밀번호 찾기</a>&nbsp;<span class="si">|</span>&nbsp;
				<a href="membership.html">회원가입</a>
			</div>
				
		</div>	
	</div>


	<div class="header">
		<div class="header_left">
			<div class="logo">
				<img src="${path}/images/logo2.png">
			</div>
		</div>

		<div class="header_center">
			<div class="search_wrap">
				<input class="search_in" type="text" name="search_box" placeholder=" 검색">
				<span class="search_icon">
					<i class="fas fa-search"></i>
				</span>
			</div>
			
		</div>

		<div class="header_right">
			<span class="login_space"></span>
			<span class="login_icon"> 
				<span id="login_btn">
					로 그 인
				</span>
			</span>
			<span class="login_icon"> 
				<a href="constract1.html">회원가입</a>
			</span>
			<span class="login_icon"> 
				<a href="#">고객센터</a>
			</span>
		</div>
	</div>
	
	
		
		

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.search_in').focus(function(event) {
			$('.search_in').css('border', '1px solid blue');
		});
		$('.search_in').blur(function(event) {
			$('.search_in').css('border', '1px solid gray');
		});

		$('#login_btn').click(function(event) {
			$('#modal').css('display', 'flex');
			$('#inputid').focus();
		});
		$('#close_btn').click(function(event) {
			$('#modal').css('display', 'none');
		});

		$('.input_login').focus(function(event) {
			$(this).parent().css('border', '1px solid skyblue');

		});
		$('.input_login').blur(function(event) {
			$(this).parent().css('border', '1px solid #dadada');
		});
		$('.menu_icon').click(function(event) {
			$('.menu_modal').css('display', 'block');
		});
		$('.exit_btn').click(function(event) {
			$('.menu_modal').css('display', 'none');
		});


		$('.login_box').click(function(event) {
			var valId = $('#inputid').val();
			var valPw = $('#inputpw').val();

			if (valId == '') {
				$('.err_code').first().css('display','block');
				$('#inputid').focus();
				$('.err_code').last().css('display','none');
				return;
			} else {
				$('.err_code').first().css('display','none');
			}

			if (valPw == '') {
				$('.err_code').last().css('display','block');
				$('#inputpw').focus();
				return;
			} else{
				$('.err_code').last().css('display','none');
			}

		});
	});
</script>

</body>
</html>