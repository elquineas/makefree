<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	body{
		margin: 0;
		padding: 0;
	}
	footer{
	}
	a{
		text-decoration: none;

	}
	.footer_wrap{
		position: relative;
		bottom: 0;
		width: 100%;
	}
	.footer_body{
		background-color: white;
		margin: 0 auto;
		width: 1200px;
		height: 120px;
		/*border:1px solid black;*/
		font-size: 15px;
	}
	.footer_textbox{
		box-sizing: border-box;
		width: 60%;
		/*border:1px solid blue;*/
		font-size: 13px;
		padding-left: 90px;
	}
	.copyright{
	}
	.copyright > a{
		color:black;
	}
	.orange{
		color: orange;
	}
	.footer_menu{
		padding: 10px 0 ; 
		margin: 0 auto;
		text-align: center;
	}
	.footer_menu > a{
		color: black;
	}
	.footer_boxwrap{
		display:flex;
	}
	.footer_sns{
		position: relative;
		width: 40%;
		/*border:1px solid red;*/
	}
	.btn{
		display: inline-block;
		width: 40px;
		background-color: #f1f1f1;
		border-radius: 30%;
		box-shadow: 0 5px 15px -5px #00000070;
		/*color: #30A9DE;*/
		overflow: hidden;
		position: relative;
	}
	.sns{
		display: inline-block;
		position: absolute;
		width: 100%;
		height: 40px;
		bottom: 5px;
		font-size: 27px;
		text-align: center;
	}
	.sns > a{
		height: 40px;
	}
	.btn i{
		line-height: 40px;
		transition: .2s linear;
	}
	.btn:hover i{
		transform: scale(1.3);
		color: #f1f1f1;
	}
	.insta{color: #BD24A9;}
	.twit{color: #1DA1F2;}
	.facebook{color: #4374D9;}
	.youtube{color: #FF0000;}
	.line{color: #1fbc02;}

	.insta:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #BD24A9;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}
	.twit:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #1DA1F2;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}
	.facebook:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #4374D9;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}
	.youtube:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #FF0000;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}
	.line:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #1fbc02;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}

	/*.btn:before{
		content: "";
		position: absolute;
		width: 120%;
		height: 120%;
		background-color: #4374D9;
		transform: rotate(45deg);
		left: -120%;
		top: 80%;
	}*/
	.btn:hover:before{
		animation: aaa 0.7s 1;
		top: -10%;
		left: -10%;
	}
	@keyframes aaa{
		0%{
			left:-110%;
			top:90%;
		}
		50%{
			left: 10%;
			top: -30%;
		}
		100%{
			left: -10%;
			top: -10%;
		}
	}
	.sns_text{
		box-sizing:border-box;
		line-height: 15px;
		text-align: center;
		height: 70px;
	}

</style>
</head>
<body>
	<footer>
		<div class="footer_wrap">
			<div class="footer_body">
				<div class="footer_menu">
					<a href="#">회사소개</a> | 
					<a href="#">이용약관</a> | 
					<a href="#"><strong>개인정보처리방침</strong></a> | 
					<a href="#">광고문의</a> | 
					<a href="#">고객센터</a>
				</div> 
				<div class="footer_boxwrap">
					<div class="footer_textbox">
						<div class="footer_text">
							대표 : 김도연 / E-mail : elquineas@makefree.com / Phone : 010-2816-0000<br>
							광주광역시 북구 경양로 170 한경빌딩 5층 505호<br>
							문의 : 070-1234-5678 (운영시간 : 오전10:00 ~ 오후05:00)
						</div>
						<div class="copyright"><a href="#"><span class="orange">M</span>AKE<span class="orange">F</span>REE</a> Copyright <a href="#">©MakeFree Corp.</a> All Rights Reserved</div>
					</div>
					
					<div class="footer_sns">
						<div class="sns_text"> 
							Make Free SNS
						</div>
						<div class="sns" >
							<a href ="#" class="btn insta">
								<i class="fab fa-instagram"></i>
							</a>
							<a href ="#" class="btn twit">
								<i class="fab fa-twitter-square"></i>
							</a>
							<a href ="#" class="btn facebook">
								<i class="fab fa-facebook-square"></i>
							</a>
							<a href ="#" class="btn youtube">
								<i class="fab fa-youtube"></i>
							</a>
							<a href ="#" class="btn line">
								<i class="fab fa-line"></i>
							</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</footer>
</body>
</html>