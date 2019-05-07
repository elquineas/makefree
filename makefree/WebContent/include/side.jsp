<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css/common.css?v=1">
<link rel="stylesheet" href="${path}/css/side.css?v=1">
<title>Insert title here</title>
</head>
<body>
	<div class="side">
		<div class="side_line" id="side_header">
			<div class="side_btn">
				<span class="header_icon home_btn"><i class="fas fa-home"></i></span>
				<span class="header_menu home_btn">HOME</span>
			</div>
			<div class="side_btn" id="new_btn">
				<span class="header_icon new_btn"><i class="fas fa-exclamation"></i></span>
				<span class="header_menu new_btn">NEW</span>
			</div>
			<div class="side_btn" id="best_btn">
				<span class="header_icon best_btn"><i class="fas fa-heart"></i></span>
				<span class="header_menu best_btn">BEST</span>
			</div>
			
		</div>
		<div class="side_line" id="side_body">
			<div>
				<div class="side_btn2">
					<span class="header_icon sub1"><i class="fas fa-fish"></i></span>
					<span class="header_menu sub1">재료별 요리</span>
				</div>
			</div>
			<div>
				<div class="side_btn2">
					<span class="header_icon"><i class="fas fa-utensils"></i></span>
					<span class="header_menu">조리별 요리</span>
				</div>
			</div>
			<div>
				<div class="side_btn2">
					<span class="header_icon"><i class="fas fa-handshake"></i></span>
					<span class="header_menu">상황별 요리</span>
				</div>
			</div>
			<div>
				<div class="side_btn2">
					<span class="header_icon"><i class="fas fa-flag"></i></span>
					<span class="header_menu">나라별 요리</span>
				</div>
			</div>


		</div>
		<div class="side_line" id="side_footer">
			<div class="sns" >
				<a href ="#" class="btn insta">
					<i class="fab fa-instagram"></i>
				</a>
				<a href ="https://www.facebook.com/" class="btn facebook">
					<i class="fab fa-facebook-square"></i>
				</a>
				<a href ="https://www.youtube.com/" class="btn youtube">
					<i class="fab fa-youtube"></i>
				</a>
				<a href ="#" class="btn line">
					<i class="fab fa-line"></i>
				</a>
			</div>
		</div>
	</div>
</body>
</html>