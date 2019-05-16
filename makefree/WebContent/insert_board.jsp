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
body{
	margin: 0;
	padding: 0;
}
.board_wrap{
	box-sizing: border-box;
	/* border: 1px solid black; */
	margin: 0 auto;
	padding: 90px;
	width: 1200px;
	font-size: 18px;
	letter-spacing : -3px;
}
.board_insert_box{
	box-sizing: border-box;
	padding: 30px;
	margin: 0 auto;
	width: 800px;
	height: 600px;
	border: 1px solid lightgray;
	box-shadow: 0 10px 30px -10px rgba(0,0,0,0.5);
	border-radius:20px;
}
.board_insert_header{
	width: 100%;
	height: 160px;
	/* border: 1px solid red; */
}
.board_name{
	font-size: 25px;
	letter-spacing : -3px;
	font-weight: 700;
	margin-top: 10px;
	margin-bottom: 10px;
}
.content_wrap{
	position:relative;
	display:flex;
	height: 35px;
	/* border:1px solid black; */
}
.content_name{
	font-weight: 700;
	margin-top:-2px;
	width: 100px;
	background-color: #FFE08C;
	font-size:15px;
	line-height:35px;
	border:1px solid white;
	text-align: center;
}
.board_input{
	margin-left:10px;
	height: 32px;
	width: 615px;
}
#b_file{
	border:none;
	margin-left:10px;
	display: none;
	
}
.board_insert_body{
	width: 100%;
	height: 300px;
	/* border: 1px solid blue; */
}
.div_file{
	position: absolute;
	left: 112px;
	width: 100px; 
	height: 32px;
	line-height:28px;
	background-color: white;
	border: 1px solid black;
	border-radius:15px;
	text-align: center;
	cursor: pointer;
}
.d_file_text{
	position: absolute;
	left: 232px;
	height: 32px;
	line-height:28px;
	color:#BDBDBD;
}
.d_file_text > i {
	margin-right:10px;
	color:#BDBDBD;
}
.board_textarea{
	height: 200px;
	width: 100%;

}
.board_insert_footer{
	display: flex;
	justify-content: flex-end;
}
.b_i_btn{
	/* border: 1px solid black; */
	height: 30px;
	width: 70px;
	border-radius: 10px;
	line-height: 30px;
	font-size:15px;
	background-color: white;
	text-align: center;
	margin-left:10px;
}
.b_x_btn{
	background-color: lightgray;
}
.b_x_btn:hover{
	background-color: gray;
}
.b_o_btn{
	background-color: #FFE08C;
}
.b_o_btn:hover{
	background-color: orange;
}
</style>
</head>
<body>
	<div class="all_wrap">
		<div class="board_wrap">
			<div class="board_insert_box">
				<div class="board_insert_header">
					<div class="board_name">O O 게시판</div>
					<div class="content_wrap">
						<span class="content_name">작성자</span>
						<input type="text" name="" class="board_input">
					</div>
					<div class="content_wrap">
						<span class="content_name">제목</span>
						<input type="text" name="" class="board_input" placeholder="제목을 입력해주세요.">
					</div>
					<div class="content_wrap">
						<span class="content_name">첨부파일</span>
						<input type="file" name="" id="b_file">
						<div class="div_file">파일선택</div>
						<div class="d_file_text"><i class="fas fa-file-upload"></i>
							<span> 첨부된 파일이 없습니다.</span>
						</div>
					</div>
				</div>
				
				<div class="board_insert_body">
					<div class="board_name">내용</div>
					<textarea class="board_textarea"></textarea>
				</div>
				
				<div class="board_insert_footer">
					<div class="b_i_btn b_x_btn">취소</div>
					<div class="b_i_btn b_o_btn">작성</div>
				</div>
				
			</div>
		</div>
	</div> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.div_file').click(function(event) {
				$('#b_file').click();
			});



		});
	</script>
</body>
</html>