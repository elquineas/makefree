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
<link rel="stylesheet" href="${path}/css/index.css?v=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
.box2_2{
	width: 100%;
	height: 100%;
	cursor: pointer;
	background-color: #FFB400;
	font-size: 30px;
	line-height: 40px;
	font-weight: 800;
	color: white;
	border:none;
}
.box2_2:hover{
	background-color: #FFBB00;
}
</style>

</head>
<body>
	<div id="modal">
		<div id="modal_login">
			<span id="close_btn">
				<i class="fas fa-times"></i>
			</span>
			<div class="login_logo">
				<img src="${path}/images/logo2-12.png">
			</div>
			<div class="text_box">
				<div class="input_box login_id">
					<input type="text" placeholder="아 이 디" class="input_login" id="inputid">
				</div>
				<div class="input_box login_pw">
					<input type="password" placeholder="패스워드" class="input_login" id="inputpw">
				</div>
				<span class="err_code"></span>
			</div>
			<div class="login_box">
				<button class="box2_2" type="button">로 그 인</button>
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
				<a href="${path}/constract.makefree">회원가입</a>
			</div>
		</div>	
	</div>



	<header class="header_body">
		<div class="header_space"></div>
		<div class="header_wrap">
			<div class="logo">
				<img src="${path}/images/logo2-12.png">
			</div>

			<div class="search_wrap">
				<input class="search_bar" type="text" name="search_box" placeholder=" 검색">
				<div class="search_btn"><i class="fas fa-search"></i></div>
			</div>
			
			<div class="login_wrap">
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<span class="login_btn" id="login_btn"><i class="fas fa-user-alt"></i>
						<div class="box_wrap">
							<div class="box1"></div>
							<div class="box2">로그인</div>
						</div>
					</span>
					<span class="space_btn"></span>
					<span class="login_btn" id="insert_btn"><i class="fas fa-user-plus"></i>
						<div class="box_wrap">
							<div class="box1"></div>
							<div class="box2">회원가입</div>
						</div>
					</span>
				</c:when>
				
				<c:otherwise>
					<span class="login_btn info_box"><i class="fas fa-user-alt"></i>
						<div class="info_menu">
							<div class="info_btn" id="update_info">회원정보 수정</div>
							<div class="info_btn" id="update_pw">비밀번호 수정</div>
							<div class="info_btn" id="drop_mem">회원탈퇴</div>
						</div>
						<div class="box_wrap">
							<div class="box1"></div>
							<div class="box2">마이페이지</div>
						</div>
					</span>
					<span class="space_btn"></span>
					<span class="login_btn logout_btn"><i class="fas fa-door-open"></i>
						<div class="box_wrap">
							<div class="box1"></div>
							<div class="box2 ">로그아웃</div>
						</div>
					</span>
 				</c:otherwise>
			</c:choose>


				<span class="space_btn"></span>
				<span class="login_btn"><i class="fas fa-question"></i>
					<div class="box_wrap">
						<div class="box1"></div>
						<div class="box2">고객센터</div>
					</div>
				</span>
				<span class="space_btn"></span>
				<span class="space_btn"></span>
			</div>
		</div>
		<div class="header_space"></div>
		<div class="header_menu">
			<div class="s_menu_wrap">
				<div class="s_menu" id="home_btn">HOME</div>
				<div class="s_menu" id="new_btn">NEW</div>
				<div class="s_menu" id="best_btn">BEST</div>
				<div class="s_menu" id="menu1_btn">조리별</div>
				<div class="s_menu">재료별</div>
				<div class="s_menu">상황별</div>
				<div class="s_menu">게시판</div>
			</div>
		</div>	
	</header>
	
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
			$('#inputid').val("")
			$('#inputpw').val("")
			$('.err_code').css('display','none');
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
		var flag = 0;
		
		
		$('.info_box').click(function(event) {
			if(flag == 0){
				setTimeout(function() {
					$('#update_info').css('margin-left', '20px').css('transition', '.25s');
				}, 0);
				setTimeout(function() {
					$('#update_pw').css('margin-left', '0px').css('transition', '.25s');
				}, 150);
				setTimeout(function() {
					$('#drop_mem').css('margin-left', '20px').css('transition', '.25s');
				}, 300);

				flag = 1;
			} else {
				setTimeout(function() {
					$('#update_info').css('margin-left', '200px').css('transition', '.25s');
				}, 300);
				setTimeout(function() {
					$('#update_pw').css('margin-left', '180px').css('transition', '.25s');
				}, 150);
				setTimeout(function() {
					$('#drop_mem').css('margin-left', '200px').css('transition', '.25s');
				}, 0);
				flag = 0;
			}
			
		});
		
		
		
		
		$('.login_box').click(function(event) {
			var valId = $.trim($('#inputid').val());
			var valPw = $.trim($('#inputpw').val());
			
			var regEmpty = /\s/g;
			
			$.ajax({
				url:"login.makefree",
				type: "POST",
				dataType: "json",
				data: "id="+valId+"&pw="+valPw,
				success: function(data){
					if(data.message == "1"){
						location.reload();
					} else if(data.message == "-1") {
						$('#inputid').focus();
						$('.err_code').last().css('display','block')
											  .css('color', '#ff1616')
										      .text('회원 아이디 또는 비밀번호가 일치하지 않습니다.');
					}
				},
				error:function(){
					alert("System Error!!");
				}
				
				
			});
		});
		
		$('.logout_btn').click(function(event) {

			$.ajax({
				url:"logoutAjax.makefree",
				type: "POST",
				dataType: "json",
				success: function(data){
					location.reload();	
				},
				error:function(){
					alert("System Error!!");
				}
			});
			/* location.href ='loginOut.makefree'; ajax를 타지 않은 로그아웃 방법 */
		});
		$('#insert_btn').click(function(event) {
			location.href ='constract.makefree';
		});
		
		
		
		
		
		$('#update_info').click(function(event) {
			location.href ='infoUpdate.makefree';
		});
		$('#update_pw').click(function(event) {
			location.href ='pwUpdate.makefree';
		});
		$('#drop_mem').click(function(event) {
			location.href ='dropMember.makefree';
		});
		
		
	});
</script>

</body>
</html>