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
	overflow: hidden;
}
.recipe_box{
	/*border: 1px solid blue;*/
	margin: 10px;
	width: 1180px;
	height: 300px;
	display: flex;
	flex-direction: column;
}
.recipe_title{
	width: 100%;
	height: 50px;
	/*border: 1px solid red;*/
	box-sizing: border-box;
	padding-left: 10px;
	font-size: 28px;
	line-height: 40px;
}
.recipe_poto{
	display: flex;
	justify-content: space-between;
}
.poto{
	position: relative;
	box-sizing: border-box;
	border: 1px solid black;
	padding: 5px;
	width: 220px;
	height: 250px;
	overflow: hidden;
	cursor: pointer;
}
.poto > img{
	width: 100%;
	height: 100%;
}
.shadow_box{
	position: absolute;
	background-color: rgba(0,0,0,0.6);
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: white;
	font-size: 25px;
	text-align: center;
	line-height: 240px;
}
.poto:hover .shadow_box{
	top:200px;
	line-height: 40px;
	transition: .5s;
}
.search_num{
	display: hidden;
}
</style>
</head>
<body>
	<div class="body_wrap">
		
		<div class="body_main">
			<div class="recipe_box">
				<div class="recipe_title">
					새로운 레시피 : 닭고기
				</div>
				<div class="recipe_poto">
					<c:forEach items="${chickenList}" var="cclist">
						<div class="poto" data_num="${cclist.p_code}">
							<img src="${path}/images/${cclist.p_img}">
							<div class="shadow_box">
								${cclist.p_name}
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
		<div class="body_main">
			<div class="recipe_box">
				<div class="recipe_title">
					새로운 레시피 : 돼지고기
				</div>
				<div class="recipe_poto">
					<c:forEach items="${pigList}" var="piglist">
						<div class="poto"  data_num="${piglist.p_code}">
							<img src="${path}/images/${piglist.p_img}">
							<div class="shadow_box">
								${piglist.p_name}
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
		<div class="body_main">
			<div class="recipe_box">
				<div class="recipe_title">
					새로운 레시피 : 소고기
				</div>
				<div class="recipe_poto">
					<c:forEach items="${cowList}" var="cowlist">
						<div class="poto" data_num="${cowlist.p_code}">
							<img src="${path}/images/${cowlist.p_img}">
							<div class="shadow_box">
								${cowlist.p_name}
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$('.poto').click(function(event) {
			var p_code = $(this).attr("data_num");
			location.href="detail.makefree?p_code="+p_code;
		});
	});
	</script>
	<%@ include file="include/footer.jsp" %>
</body>
</html>