<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<c:if test="${sessionScope.loginUser == null}">
	<script>
		alert("로그인 하신 후 사용하세요.");
		location.href="${path}/boardList.makefree";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
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
	margin-top:30px;
	/* border: 1px solid blue; */
}

.d_file_text{
	position: absolute;
	left: 115px;
	line-height:28px;
	color:#BDBDBD;
	cursor: pointer;
	letter-spacing : -2px;
}
.old_upload{
	cursor:default;
	color: black;
}
.d_file_text1 > i {
	color:#BDBDBD;
}
.d_file_text > div{
	height: 32px;
}
.d_file_text > div > i{
	margin-right:10px;
}


.board_textarea{
	height: 200px;
	width: 99.5%;
}
.board_insert_footer{
	display: flex;
	margin-top:10px;
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
	cursor: pointer;
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
.file_xx_btn{

}
.file_x_check{
	display: none;
	color:black;
}
.o_check{
	display: none;
}
.file_x_btn > i{
	margin-left: 5px;
	line-height: 33px!important;
	cursor: pointer;
}
.file_xx_btn > i{
	margin-left: 5px;
	line-height: 33px!important;
	cursor: pointer;
}

#now_file_size{
	letter-spacing:-1px;
	color:black;
}
</style>
</head>
<body>
	<div class="all_wrap">
		<form action="updateBoard.makefree"  method="POST" name="register_frm" id="register_frm" enctype="multipart/form-data">
			<div class="board_wrap">
				<div class="board_insert_box">
					<div class="board_insert_header">
						<div class="board_name">자유 게시판</div>
						<div id="box_solid_top"></div>
						
						<div class="content_wrap">
							<span class="content_name">작성자</span>
							<span class="content_namebox">
								<input type="text" name="user_name" id="user_name" class="read_info" readonly="readonly" value="${sessionScope.loginUser.id}">
							</span>
						</div>
						<div class="content_wrap">
							<span class="content_name">제 목</span>
							<span class="content_namebox">
								<input type="text" name="title_name" id="title_name" class="read_info" value="${one.title}">
								<input type="hidden" name="bno" value="${one.bno}">
							</span>
						</div>
						<div class="content_wrap">
							<span class="content_name">첨부파일</span>
							<input type="file" name="b_file" id="b_file">
							<input type="hidden" name="basic_file_name" id="basic_file_name" value="${one.filename}">
							<input type="hidden" name="basic_file_size" id="basic_file_size" value="${one.filesize}">
							<input type="hidden" name="basic_check" id="basic_check" value="">
							<div class="d_file_text">		
								<div class="d_file_text1">
									<i class="fas fa-file-upload"></i>
									<span class="file_name"> 첨부된 파일이 없습니다. </span>
									<span id="now_file_size"> </span>
									<span class="file_x_btn"><i class="fas fa-times-circle"></i></span>
								</div>
								<c:if test="${one.filesize > 0}">
									<div>
										<i class="fas fa-file-upload upload_i" style="color:mediumseagreen;"></i>
										<span class="old_upload"> ${one.filename} </span>
										<span class="old_upload">
											<c:choose>
											<c:when test="${one.filesize/1024/1024 > 1}">
												(<fmt:formatNumber type="number" pattern="0.00" value="${one.filesize / 1024 / 1024}">
												</fmt:formatNumber> MB)
											</c:when>
											<c:otherwise>
												(<fmt:formatNumber type="number" pattern="0.00" value="${one.filesize / 1024}">
												</fmt:formatNumber> KB)
											</c:otherwise>
										</c:choose>	
										</span>
										<span class="file_xx_btn">
											<i class="fas fa-times-circle x_check"></i>
											<i class="fas fa-check-circle o_check"></i>
										</span>
										<span class="file_x_check">[첨부파일 삭제됨] </span>
									</div>
								</c:if>
							</div>
						</div>
					</div>
					
					<div class="board_insert_body">
						<div class="board_name">내용</div>
						<textarea class="board_textarea" name="boardInsert" id="boardInsert">${one.content}</textarea>
						<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
							 oAppRef: oEditors,
							 elPlaceHolder: "boardInsert",
							 sSkinURI: "<%=request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",
							 fCreator: "createSEditor2"
							});
						</script>
					</div>
					
					<div class="board_insert_footer">
						<div class="b_i_btn b_x_btn">취 소</div>
						<div class="b_i_btn b_o_btn">수 정</div>
					</div>
					
				</div>			
			</div>
		</form>
	</div> 
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.d_file_text1 > i').click(function(event) {
				$('#b_file').click();
			});
			$('#now_file_size').click(function(event) {
				$('#b_file').click();
			});
			
			$('.file_name').click(function(event) {
				$('#b_file').click();
			});
			
			$('.file_x_btn > i').click(function(event) {
				$('.file_name').text("첨부된 파일이 없습니다.")
							   .css("color", "#BDBDBD")
							   .css("letter-spacing", "-1px");
				$('#b_file').replaceWith($("#b_file").clone(true));
				$('#b_file').val("");
				$('#now_file_size').text("");
				$('.file_x_btn').css("display", "none");
				$('.d_file_text1 > i').css("color", "#BDBDBD");
			});
			
			var flag = 0;
			$('.file_xx_btn').click(function(event) {
				if(flag == 0){
					$(".upload_i").css("color", "#BDBDBD");
					$(".old_upload").css("text-decoration", "line-through")
									.css("color", "#BDBDBD");
					$(".x_check").css("display", "none");
					$(".o_check").css("display", "inline-block")
								 .css("color", "mediumseagreen");
					$(".file_x_check").css("display", "inline-block");
					$("#basic_check").val("no");
					flag = 1;
				} else{
					$(".upload_i").css("color", "mediumseagreen");
					$(".old_upload").css("text-decoration", "none")
									.css("color", "black");
					$(".x_check").css("display", "inline-block");
					$(".o_check").css("display", "none");
					$(".file_x_check").css("display", "none");	
					$("#basic_check").val("yes");
					flag = 0;
				}
				
			});
			
			
			
			
			
			$('#b_file').change(function(event) {
				var filesize = $(this)[0].files; 
				if(filesize.length < 1){
					$('.file_name').text("선택된 파일 없음");
					$('.file_x_btn').css("display", "none");
					$("#now_file_size").text("");
				} else {
					var filename = this.files[0].name;
					var size = this.files[0].size;
					var maxSize = 10 * 1024 * 1024;
					var mbsize = size / (1024 * 1024);
					
					if(size > maxSize){
						alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.");
						$(".file_name").text("선택된 파일 없음")
									   .css("color", "#BDBDBD")
									   .css("letter-spacing", "-2px");
						$("#b_file").val("");
						$("#now_file_size").text("");
						$('.d_file_text1 > i').css("color", "#BDBDBD");
					} else {
						$(".file_name").text(filename)
									   .css("color", "black")
									   .css("letter-spacing", "-2px");
						$('.file_x_btn').css("display", "inline-block");
						$('.d_file_text1 > i').css("color", "mediumseagreen");
						
						if(mbsize < 1){
							var kbsize = size / 1024;
							$("#now_file_size").text("("+kbsize.toFixed(2)+"KB)");
						}else{
							$("#now_file_size").text("("+mbsize.toFixed(2)+"MB)");
						}
					}
				}
			});
			
			$('.b_o_btn').click(function(event) {
				var id = "${sessionScope.loginUser.id}";
				var title = $.trim($('#title_name').val()); 
				oEditors.getById["boardInsert"].exec("UPDATE_CONTENTS_FIELD", []);
				var content = $("#boardInsert").val();
				
				if(title == ""){
					alert('제목을 입력해주세요.');
					$('#title_name').focus();
					
				} else {
					$('#register_frm').submit();
				}
				
				
				
				
			});
			

		});
	</script>
</body>
</html>