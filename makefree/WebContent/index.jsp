<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
	<div class="body_wrap">
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
				</div>
			</div>
		</div>
	</div>	
</body>
</html>