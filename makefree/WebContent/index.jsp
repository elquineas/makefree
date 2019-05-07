<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.body_wrap{
	position: relative;
	display: flex;
	background-color: #ededed;
	/*border: 2px solid black;*/
	margin-top: 60px; 
	/*left: -300px;*/
}
.body{
	/*position: absolute;*/
	margin-left: 300px;
	text-align: center;
	/*border: 3px solid blue;*/
	font-size: 50px;
	padding-top: 100px;
	width: 100vw;
	height: 100%;
	right: 0;
	bottom: 0;
	flex: 5;
}
.body_menu{

	position: relative;
	/*border: 1px solid green;*/
	height: 400px;
	/*margin-bottom: 50px;*/
}

.main_title{
	position: absolute;
	width: 500px;
	height: 100px;
	/*border: 1px solid black;*/
	font-size: 25px;
	line-height: 100px;
	top: 0;
	left: 20px;
}

.menu_wrap{
	position: relative;
	margin: 0px 230px 0px 150px;
	padding: 100px 80px 40px 170px;
	/*border: 1px solid orange;*/
	display: flex;
	/*justify-content: space-between;*/
	background: white;
}
.main_menu{
	position: relative;
	overflow: hidden;
	font-size: 20px;
	margin: 0 10px 0 10px;
	line-height: 30px;
	border: 1px solid black;
	background-color: white;
	width: 200px;
	height: 200px;
}
.main_menu > img{
	width: 100%;
	height: 150px;
	border-bottom: 1px solid gray;
}

.menu_opacity1{
	position: absolute;
	width: 100%;
	height: 100%;
	background: gray;
	opacity: 0.3;
	top: 100%;
}
.menu_opacity2{
	position: absolute;
	width: 100%;
	height: 100%;
	background: gray;
	opacity: 0.3;
	top: -100%;
}
.main_menu:hover{
	cursor: pointer;
}
.main_menu:hover .menu_icon{
	display: block;
}
.main_menu:hover .menu_opacity1{
	animation: opacity_menu1 0.7s 1;
	top: 0%;
}
.main_menu:hover .menu_opacity2{
	animation: opacity_menu2 0.7s 1;
	top: 0%;
}
@keyframes opacity_menu1{
	0%{	top:-100%; }
	100%{ top:0%;	}
}
@keyframes opacity_menu2{
	0%{	top:100%; }
	100%{ top:0%;	}
}
.menu_icon{
	position: absolute;
	width: 100%;
	height: 100%;
	text-align: center;
	font-size: 50px;
	line-height: 180px;
	top: 0;
	left: 0;
	display: none;
}

.menu_modal{
	position: fixed;
	top:0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0,0,0,0.6);
	z-index: 3;
	display: none;
	justify-content: center;
	align-items: center;
}

.main_madal{
	position: relative;
	/*border: 1px solid red;*/
	width: 1200px;
	height: 700px;
	margin: 130px auto 0;
	background: white;
}
.exit_btn{
	position: absolute;
	right: 0px;
	background: #dadada;
	width: 50px;
	height: 50px;
	line-height: 50px;
}
.exit_btn:hover{
	cursor: pointer;
}
.menu_name{
	border-bottom: 1px solid lightgray;
	width: 100%;
	height: 80px;
	font-size: 50px;
	line-height: 50px;
	padding-top: 5px;
	box-sizing: border-box;
}
.manu_wrap{
	display: flex;
}
.manu_box{
	width: 600px;
	height: 620px;
	/*border: 1px solid blue;*/
	text-align: left;
	box-sizing: border-box;
}
.manu_box > img{
	margin: 50px;
	width: 500px;
	height: 400px;
}
.material{
	font-size: 25px;
	width: 600px;
	height: 200px;
	/*border: 1px solid orange;*/
	line-height: normal;
}
.recipe{
	width: 600px;
	height: 420px;
	/*border: 1px solid red;*/
	font-size: 20px;
	line-height: normal;
}
.recipe > h1{
	font-size: 25px;
	height: 30px;
}
.recipe > div{
	box-sizing: border-box;
	padding-top: 30px;
	line-height: 30px;
}

.mtrl{
	/*border: 1px solid orange;*/
	height: 100px;
	box-sizing: border-box;
}
.tag{
	/*border: 1px solid orange;*/
	opacity: .8;
	color: #7e7e7e;
	height: 100px;
	box-sizing: border-box;
}




.footer{
	border: 1px solid orange;
	width: 100%;
	height: 70px;
	bottom: 0px;
}
</style>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<div class="body_wrap">
	<%@ include file="include/side.jsp" %>
	<div class="body">
		<div class="menu_modal">
			<div class="main_madal">
				<div class="exit_btn">
					<i class="fas fa-times"></i>
				</div>
				<div class="menu_name">
					메뉴 이름
				</div>
				<div class="manu_wrap">
					<div class="manu_box">
						<img src="images/치킨.jpg">
					</div>
					<div class="manu_box">
						<div class="material">
							<div class="mtrl">
								재료 : 재료1, 재료2, 재료3, 재료4, 재료5
							</div>
							<div class="tag">
								#주재료 #주재료 #조리 #상황 #나라
							</div>
						</div>
						<div class="recipe">
							<h1>요리 순서</h1>
							<div>
								1.재료를 썬다<br>
								2.재료들을 볶은다<br>
								3.볶은 재료를 섞은다<br>
								4.섞은 재료를 구운다<br>
								5.맛있게 먹는다<br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="body_menu">
			<div class="menu_wrap">
				<div class="main_title">
					새로운 레시피
				</div>
				<c:forEach items="${newList}" var="newDto">
					<div class="main_menu">
						<img src="${path}/images/${newDto.p_img}">
						${newDto.p_name}
						<div class="menu_opacity1"></div>
						<div class="menu_opacity2"></div>
						<div class="menu_icon">
							<i class="fas fa-search"></i>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="body_menu">
			<div class="menu_wrap">
				<div class="main_title">
					베스트 메뉴
				</div>
				<c:forEach items="${bestList}" var="best">
					<div class="main_menu">
						<img src="${path}/images/${best.p_img}">
						${best.p_name}
						<div class="menu_opacity1"></div>
						<div class="menu_opacity2"></div>
						<div class="menu_icon">
							<i class="fas fa-search"></i>
						</div>
					</div>
				</c:forEach>
				<!-- asdf -->
			</div>
		</div>
	</div>
		
</body>
</html>