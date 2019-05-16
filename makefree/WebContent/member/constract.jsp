<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesgeet" href="${path}/css/common.css?v=1">
<title>회원가입 동의</title>
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
		height: 100px;
		width: 250px;
	}
	.con_wrap{
		/*border: 1px solid gray;*/
		margin: 0 auto 20px;
		width: 500px;
		height: 550px;
	}
	.all_ckbox{
		border-bottom: 1px solid #dadada;
		padding-bottom: 10px;
		position: relative;
		display: block;
		height: 58px;
		width: 470px;
		margin: 0 auto;
	}
	.all_ckbox > input{
		position: absolute;
		right: 1px;
		top: 50%;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;
	}
	.all_ckbox > label{
		background: url('images/check_off.gif') 100% 50% no-repeat;
		display: block;
		line-height: 20px;
		height: 58px;
		top: -1px;
		font-size: 14px;
		font-weight: 700;
	}
	.all_ckbox > input:checked +label{
		background-image: url('images/check_on.gif');
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
		border-radius: 10px;
		background-color: skyblue;
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
		line-height: 40px;
		font-size: 20px;
		color: #dadada;
		cursor: pointer;
	}
	
	#back_icon{
		line-height: 40px;
	}
	
	.btn_back:hover{
		color: #939393;
		transition: .3s;
		font-size: 25px;
	}
	
	.terms_ul{
		padding-bottom: 7px;
		list-style: none;
	}
	.terms_ul_li1{
		border-top: 1px solid #f0f0f0;
	}
	.terms_ul > li{
		display: block;
		padding: 13px 15px 7px;
	}
	.ul_li_span{
		position: relative;
		display: block;
		height: 24px;
	}
	.label1{
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top: 0px;
		left: 0px;
		width: 100%;
	}
	.span_only{
		color: #0d9900;
		font-size: 12px;
		font-weight: 400;
	}
	.ul_li_span > input{
		visibility: hidden;
		position: absolute;
		right: 1px;
		width: 22px;
		height: 22px;
		margin-top:-11px;
		top: 50%; 
	}
	.ul_li_span > label{
		background: url('images/check_off.gif') 100% 50% no-repeat;
		display: block;
	}
	.ul_li_span > input:checked +label{
		background-image: url('images/check_on.gif');
	}
	.terms_box{
		position: relative;
		box-sizing: border-box;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border: 1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}
	.article_title{
		font-size: 12px;
		font-weight: 700;
		line-height:16px;
		color: #666;
	}
	.article > p {
		/*display: block;*/
		font-size: 12px;
		line-height: 16px;
		color: #666;
	}
	.span_select{
		color: #969696;
		font-size: 12px;
		font-weight: 400;
	}
	
	.btn_double_area{
		margin: 30px -5px 0px;
		overflow: hidden;
	}
	.btn_double_area > span{
		display: block;
		float: left;
		width: 50%;
	}
	.btn_default{
		color: #333;
		border: 1px solid #e7e7e7;
		background-color: #fff;
	}
	.btn_agree{
		color: #fff;
		border: 1px solid #1fbc02;
		background-color: #1fbc02;
	}
	.btn_type{
		width: auto;
		margin: 0 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
	}
	a{
		text-decoration: none;
		color: inherit;
	}
	.group_join{
		margin: 20px 0 65px;
		text-align: center;
		color: #666;
		font-size: 12px;
	}
	.group_join > a{
		text-decoration: underline;
		color: #333;
	}
	.footer_wrap > ul {
		list-style: none;
		margin: 0 auto 9px;
	}
	.footer_wrap * {
		font-size: 11px;
		line-height: normal;
		color: #333;
	}
	.footer_wrap > ul > li{
		display: inline;
		padding: 0 5px 0 7px;
		border-left: 1px solid #dadada; 
	}
	.footer_wrap > ul > li a:hover{
		color: #1fbc02;
	}
	.footer_wrap ul li:first-child{
		border-left: 0px;
	}
	.addr_logo{
		width: 63px;
		height: 11px;
	}
	.address{
		margin: 0 auto;
		text-align: center;
	}
	.address *{
		font-weight: bold;
	}
	.address a:hover{
		color:#1fbc02;
	}
	#err_check{
		color:tomato;
		display: none;
		text-align: center;
		font-size:12.5px;
		margin-bottom: 10px;
	}
</style>
</head>
<body>
	<div class="body_wrap">
		<div class="body_box">
			<div class="btn_back">
				<i class="fas fa-arrow-left" id="back_icon"></i>
			</div>
			<div class="body_header">
				<img src="${path}/images/logo2-2.png">
			</div>
			<div class="con_wrap">
				<div class="all_ckbox">
					<input type="checkbox" id="cbox">
					<label for="cbox">
						이용약관, 개인정보 수집 및 이용,<br>
						위치정보 이용약관(선택), 프로모션 안내<br>
						메일 수신(선택)에 모두 동의합니다.
					</label>
				</div>
				<div>
					<ul class="terms_ul">
						<li class="terms_ul_li1">
							<span class="ul_li_span">
								<input type="checkbox" id="li1box" class="ckboxs only">
								<label for="li1box" class="label1">
									MAKEFREE 이용약관 동의 
									<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<h3 class="artucke_tilte">제 1 조 (목적)</h3>
									<p> 이 약관은 MAKEFREE가 제공하는 제반 서비스의 이용과 관련하여 회사와<br> 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로<br> 합니다.</p><br>

									<h3 class="artucke_tilte">제 2 조 (정의)</h3>
									<p> 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
										①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형 단말기 등의 각종 유<br>
										무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 MAKEFREE 및<br>
										MAKEFREE 관련 제반 서비스를 의미합니다.	
									</p>
								</div>
							</div>
						</li>

						<li class="terms_ul_li2">
							<span class="ul_li_span">
								<input type="checkbox" id="li2box" class="ckboxs only">
								<label for="li2box" class="label1">
									개인정보 수집 및 이용에 대한 안내 
									<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<p> 정보통신망법 규정에 따라 MAKEFREE에 회원가입 신청하시는 분께 수집하<br>
										는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및
									    이용<br>기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
									</p><br>

									<h3 class="artucke_tilte">1. 수집하는 개인정보</h3>
									<p> 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의<br> MAKEFREE
										서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 
										개인화<br> 혹은 회원제 서비스를 이용하기 위
										해 회원가입을 할 경우, MAKEFREE는 서<br>비스 이용을 위해 필요한 최소한의
										개인정보를 수집합니다.	
									</p>
								</div>
							</div>
						</li>

						<li class="terms_ul_li3">
							<span class="ul_li_span">
								<input type="checkbox" id="li3box" class="ckboxs">
								<label for="li3box" class="label1">
									위치정보 이용약관 동의 
									<span class="span_select">(선택)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<p>위치정보 이용약관에 동의하시면, 
										<strong>위치를 활용한 광고 정보 수신</strong> 등을<br>
										포함하는 MAKEFREE 위치기반 서비스를 이용할 수 있습니다.
									</p><br>

									<h3 class="artucke_tilte">제 1 조 (목적)</h3>
									<p>이 약관은 MAKEFREE 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 <br>
										위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및<br>
										 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
									</p>
								</div>
							</div>
						</li>
						
						<li class="terms_ul_li4">
							<span class="ul_li_span">
								<input type="checkbox" id="li4box" class="ckboxs">
								<label for="li4box" class="label1">
									이벤트 등 프로모션 알림 메일 수신
									<span class="span_select">(선택)</span>
								</label>
							</span>
						</li>
					</ul>
				</div>
				
				<div></div>
				
			</div>
			<div id="err_check">
				<span id ="err_check_msg">MAKEFREE이용약관과 개인정보수집 및 이용에 대한 안내 모두 동의해 주세요.</span>
			</div>
			<div class="ox_btn">
				<div class="btn_box">동의</div>
			</div>
		</div>
	</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.btn_back').click(function(event) {
				location.href = 'index.makefree';
			});

			$('#cbox').click(function() {
				var flag = $(this).is(':checked');				
				if(flag == true){
					$('.ckboxs').prop('checked', true);
				}else{
					$('.ckboxs').prop('checked', false);
				}
				// //prop 속성값을 가져다 주는 이벤트
				// //()안의 값이 1개면 값을 가져오고, 2개면 값을 넣어줌
			});
			$('.ckboxs').click(function(event) {
				var ckleng = $('.ckboxs:checkbox:checked').length;
				//ckboxs에 checkbox가 checked 된 것의 갯수를 ckleng에 넣어라.
				// alert(ckleng);
				if (ckleng == 4) {
					$('#cbox').prop('checked', true);
				} else {
					$('#cbox').prop('checked', false);
				}
				// is(일때는 :를 붙임)는 속성값을 알려주는데 속성값을 알아야할 때 : 를 사용
			});

			$('.btn_box').click(function(event) {
				var onlycheck = $('.only:checkbox:checked').length;
				if (onlycheck == 2) {
					location.href = 'member.makefree';
				} else {
					$("#err_check").css("display", "block");
					return false;
				}
				
			});
				

			
		});
	</script>
</body>
</html>