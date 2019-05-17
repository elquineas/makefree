<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>

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
	padding: 0 30px 30px;
	margin: 0 auto;
	width: 800px;
	height: 600px;
	border: 1px solid lightgray;
	box-shadow: 0 10px 20px -10px rgba(0,0,0,0.5);
	border-radius:20px;
}
#box_solid_top{
	border: 1px solid coral;
	width: 796px;
	margin-bottom: 20px;
	margin-left: -30px;
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
	margin: 10px 0;
}
.content_wrap{
	position:relative;
	display:flex;
	justify-content:space-between;
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
.read_info{
	outline:none;
	border:none;
	height: 35px;
	width: 100%;
	font-size: 18px;
	box-sizing: border-box;
	padding-left: 10px;
}
.content_namebox{
	margin-top:-2px;
	width: 634px;
	font-size:15px;
	line-height:35px;
	text-align: center;
}
#b_file{
	border:none;
	margin-left:10px;
	display: none;
	
}
.board_insert_body{
	width: 100%;
	height: 300px;
	margin-top:30px;
	/* border: 1px solid blue; */
}

.d_file_text{
	position: absolute;
	left: 115px;
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
.file_x_btn{
	display:none;
	height: 100%;
}
.file_x_btn > i{
	margin-left: 20px;
	line-height: 33px!important;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="all_wrap">
		<div class="board_wrap">
			<div class="board_insert_box">
				<div class="board_insert_header">
					<div class="board_name">자유 게시판</div>
					<div id="box_solid_top"></div>
					
					<div class="content_wrap">
						<span class="content_name">작성자</span>
						<span class="content_namebox">
							<input type="text" name="" id="user_name" class="read_info" readonly="readonly" placeholder="작성자">
						</span>
					</div>
					<div class="content_wrap">
						<span class="content_name">제목</span>
						<span class="content_namebox">
							<input type="text" name="" class="read_info" placeholder="제목을 입력해주세요.">
						</span>
					</div>
					<div class="content_wrap">
						<span class="content_name">첨부파일</span>
						<input type="file" name="b_file" id="b_file">
						<div class="d_file_text">
							<i class="fas fa-file-upload"></i>
							<span class="file_name"> 첨부된 파일이 없습니다. </span>
							<span class="file_x_btn"><i class="fas fa-times-circle"></i></span>
						</div>
					</div>
				</div>
				
				<div class="board_insert_body">
					<div class="board_name">내용</div>
					<textarea class="board_textarea" readonly="readonly"></textarea>
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
			$('.d_file_text > i').click(function(event) {
				$('#b_file').click();
			});
			$('.file_name').click(function(event) {
				$('#b_file').click();
			});
			$('.file_x_btn > i').click(function(event) {
				$('.file_name').text("첨부된 파일이 없습니다.");
				$('#b_file').val("");
				$('.file_x_btn').css("display", "none");
			});
			
			
			
			$('#b_file').change(function(event) {
				var filesize = $(this)[0].files; 
				if(filesize.length < 1){
					$('.file_name').text("선택된 파일 없음");
					$('.file_x_btn').css("display", "none");
				} else {
					var filename = this.files[0].name;

					$('.file_name').text(filename)
								   .css("letter-spacing","-1px");
					$('.file_x_btn').css("display", "inline-block");
				}
			});
			

		});
	</script>
</body>
</html>