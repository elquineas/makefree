<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	body{
		background: #eaeaea;
	}
	.body_wrap{
		
	}
	.body_box{
		background: white;
		margin: 50px auto 0;
		border: 1px solid black;
		width: 600px;
		height: 600px;
	}
	.body_header{
		/*border: 1px solid blue;*/
		margin-top: 0px;
		text-align: center;
		height: 100px;
		line-height: 70px;
		font-size: 30px;
	}
	.drop_txt{
		margin-top: 50px;
		text-align:center;
		height: 70px;
		width: 100%;
	}
	.mss_box{
		border: 1px solid gray;
		width: 500px;
		margin: 0 auto;	
	}
	.mss_header{
		color: blue;
		text-align: center;
		font-size: 20px;
	}
	.mss_body{
		text-align: left;
		margin-top: 20px;
	}
	.mss_info{
		color: blue;
	}
	.pw_box{
		text-align: center;
		line-height: 35px;
		position: relative;
		/*border: 1px solid blue;*/
		width: 500px;
		height: 40px; 
		margin: 20px auto 0;
		/*border: 1px solid lightgray;*/
		box-sizing: border-box;
	}
	.input_pw{
		width: 417px; 
		height: 25px;
	}
	.ox_btn{
		/*border: 1px solid red;*/
		width: 500px;
		height: 50px;
		display: flex;
		justify-content: space-between;
		padding: 0 40px 0 40px;
		margin: 20px auto 0px;
	}
	.btn_box{
		width: 230px;
		height: 50px;
		text-align: center;
		font-size: 30px;
		line-height: 45px;
		cursor: pointer;
	}
	.x_btn{
		height: 100%;
		background-color: lightgray;
		border: none;
		outline: none;
		font-size: 30px;
		width:100%;
	}
	.o_btn{
		width:100%;
		height: 100%;
		background-color: #FFB400;
		border: none;
		outline: none;
		font-size: 30px;
	}
	.modal_back{
		display: none;
		position: absolute;
		top: 0;
		left: 0;
		width:100vw;
		height:100vh;
		background-color: rgba(0,0,0,0.6);
	}
	.modal_box{
		border-radius: 30px;
		margin: 200px auto 0;
		width: 400px;
		height: 300px;
		background-color: white;
	}
	.modal_header{
		height: 70px;
		width: 100%;
		/*border: 1px solid gray;*/
		font-size: 40px;
		line-height: 70px;
		text-align: center;
	}
	.point{
		color: orange;
	}
	.modal_body{
		width: 100%;
		height: 150px;
		text-align: center;
		font-size: 20px;
		line-height: 150px;
	}
	.re_ox_btn{
		display: flex;
		height: 50px;
		/*border: 1px solid gray;*/
		justify-content: space-around;
	}
	.re_ox_btn > button {
		outline: none;
		border:none;
		width: 150px;
		font-size: 20px;
		cursor: pointer;
		background-color: lightgray;
	}
	.re_ox_btn > button:hover {
		background-color: #FFB400;
	}
</style>
</head>
<body>
	<div class="body_wrap">
		<form>
			<div class="body_box">
				<div class="body_header">
					<div class="drop_txt">회 원 탈 퇴</div>
				</div>
				<div class="mss_box">
					<div class="mss_header">""님의 회원탈퇴시 아래의 조취가 취해집니다.</div>
					<div class="mss_body">
						1.개인정보는 <span class="mss_info">"개인 정보 보호 정책"에 따라 60일간 보관(잠김)</span> 
						되며, 60일이 경과된 후에는 모든 개인정보는 완전히 삭제되며
						더 이상 복구할 수 없게 됩니다.<br>
						<br>
						2.작성된 게시물은 삭제되지 않으며, 익명처리 후 <span class="mss_info">MakeFree로 소유권</span>이 귀속됩니다.<br>
						<br>
						3.게시물 삭제가 필요한 경우에는 <span class="mss_info">관리자(elquineas@makefree.co.kr)</span>에게 문의해 주시
						기 바랍니다.<br>
						<br>
					</div>
				</div>

				<div class="pw_box">
					비밀번호 : 
					<input type="password" class="input_pw" name="" id="">
				</div>

				<div class="ox_btn">
					<div class="btn_box"><button type="button" class="x_btn">취 소</button></div>
					<div class="btn_box"><button type="button" class="o_btn">삭 제</button></div>
				</div>
			</div>
		</form>
		<div class="modal_back">
			<div class="modal_box">
				<div class="modal_header"><span class="point">M</span>ake <span class="point">F</span>ree</div>
				<div class="modal_body">
					정말로 계정을 삭제하시겠습니까?
				</div>
				<div class="re_ox_btn">
					<button class="back_btn">아니오</button>
					<button class="ok_btn">예</button>
				</div>
			</div>
		</div>
	</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.o_btn').click(function(event) {
				$('.modal_back').css('display', 'block');
			});
			$('.back_btn').click(function(event) {
				$('.modal_back').css('display', 'none');
			});
		});
	</script>
</body>
</html>