<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.mem_body_back{
		/* background-color: #eaeaea; */
		/*border: 1px solid black;*/
		padding: 50px 0;
	}
	.mem_body_wrap{
		box-sizing: border-box;
/* 		border: 1px solid red; */
		background-color: white;
		width: 1200px;
		height: 600px;
		margin: 0 auto;
		padding: 50px;
	}
	.mem_manu_wrap{
		width: 400px;
		height: 50px;
		margin: 100px auto 0;
		border: 2px solid gray;
		text-align: center;
		font-size: 30px;
		background-color: #eaeaea;
	}
	.mem_manu_wrap:hover{
		background-color: #dadada;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div class="mem_body_back">
		<div class="mem_body_wrap">
			<div class="mem_manu_wrap" id="update_info">회원정보 수정</div>
			<div class="mem_manu_wrap" id="update_pw">비밀번호 수정</div>
			<div class="mem_manu_wrap" id="drop_mem">회원탈퇴</div>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
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