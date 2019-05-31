<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
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
.body_wrap{
	background-color: #dddddd;
	border: 1px solid #dddddd;
}
.body_main{
	background-color: white;
	width: 1200px;
	margin: 40px auto;
	border: 1px solid black;
}


.main_poto_box{
	width: 1160px;
	height: 600px;

}
.menu_poto{
	margin:20px auto 0;
	width: 500px;
	height: 450px;
}
.menu_poto > img{
	width: 100%;
	height: 100%;
}
.menu_title{
	margin:0 auto;
	width: 500px;
	height: 70px;
	font-size: 40px;
	text-align: center;
}


.recipe_box{
	padding: 20px;
}
.recipe_wrap{
	width: 100%;
	height: 250px;
	display: flex;
}
.recipe_text{
	width: 70%;
	display: flex;
	margin: 10px;
}
.num_box{
	width: 10%;
}
.recipe_body{
	width: 90%;
	font-size:20px;
	padding: 20px;
}
.recipe_img{
	width: 30%;
	margin: 10px;
}
.recipe_img > img {
	width: 100%;
	height: 100%;
}
.num_cycle{
	margin: 20px auto;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	border: 1px solid green;
	font-size: 23px;
	line-height: 40px;
	text-align: center;	
}





</style>
</head>
<body>
	<div class="body_wrap">
		<div class="body_main">
			<div class="recipe_box">
				<div class="main_poto_box">
					<div class="menu_poto">
						<img src="${path}/images/${pDto.p_img}">
					</div>
					<div class="menu_title">${pDto.p_name}</div>
				</div>
			
				<c:forEach items="${pList}" var="pList">
					<div class="recipe_wrap">
						<div class="recipe_text">
							<div class="num_box">
								<div class="num_cycle">${pList.rnum}</div>
							</div>
							<div class="recipe_body">
								${pList.r_content}
							</div>
						</div>
						<div class="recipe_img">
							<img src="${path}/images/${pList.r_img}">
						</div>
					</div>
				</c:forEach>
				
			</div>
		</div>
	</div>
</body>
</html>