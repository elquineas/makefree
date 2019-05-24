<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%
	String referer = request.getHeader("referer");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 게시글</title>
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
	padding: 90px 90px 50px;
	width: 1200px;
	font-size: 18px;
	letter-spacing : -3px;
}
.board_insert_box{
	box-sizing: border-box;
	padding: 0 30px 30px;
	margin: 0 auto;
	width: 800px;
	height: 570px;
	border: 1px solid lightgray;
	box-shadow: 0 10px 20px -10px rgba(0,0,0,0.5);
	border-radius:20px;
}
.board_insert_box input{
	font-size: 15px;
	padding-left: 10px;
}
.date_box{
	padding-left: 10px;
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
	height: 35px;
	justify-content: space-between;
	/* border:1px solid black; */
}
.gv_box{
	position: absolute;
	right: 20px;
	letter-spacing : 0;
}
.good_i{
	color:red;
}
.view_i{
	margin-left:3px;
	margin-right:2px;
	color: #B2CCFF;
}
.content_infobox{
	margin-top:-2px;
	width: 259px;
	font-size:15px;
	line-height:35px;
	border:1px solid white;
	letter-spacing : -1px;
}
.content_namebox{
	box-sizing:border-box;
	margin-top:-2px;
	width: 632px;
	font-size:15px;
	line-height:35px;
	border:1px solid white;
	padding-left:8px;
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
.read_time{
}
.read_info{
	border:none;
	outline:none;
	height: 35px;
	width: 100%;
}
#b_file{
	border:none;
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
	height: 100px;
	width: 99.5%;
}
.board_textbox{
	height: 200px;
	width: 100%;
	border: 1px solid lightgray;
	box-sizing: border-box;
	padding: 10px;
}

.board_insert_footer{
	position: relative;
	display: flex;
	justify-content: space-between;
}
.b_i_btn{
	height: 35px;
	width: 80px;
	border-radius: 10px;
	line-height: 35px;
	font-size:15px;
	text-align: center;
	background-color: #FFE08C;
}
.b_update_btn{
	margin-right:10px;
}
.b_back_btn{
	background-color: #FFE08C;
}
.board_ud_box{
	display: flex;
}
.b_i_btn:hover{
	background-color: orange;
	cursor: pointer;
}
.comment_wrap{
	box-sizing: border-box;
	/* border: 1px solid black; */
	margin: 0 auto;
	padding: 0 90px 90px 90px;
	width: 1200px;
	font-size: 18px;
	letter-spacing : -3px;
}
.comment_box{
	box-sizing: border-box;
	margin: 0 auto;
	width: 800px;
	border: 1px solid lightgray;
	box-shadow: 0 10px 30px -10px rgba(0,0,0,0.5);
	border-radius: 25px;
}
.comment_header{
	font-weight: 700;
	margin: 10px 30px;
	font-size:25px;
}
#box_solid{
	border: 1px solid coral;
	width: 796px;
	/* border: 2px dashed black; */
}
#box_solid_top{
	border: 1px solid coral;
	width: 796px;
	margin-bottom: 20px;
	margin-left: -30px;
}
#box_dashed{
	border: 1px dashed lightgray;
}
.comment_list{
	letter-spacing : normal;
	padding-bottom:30px;
}
.comment_write{
	margin:30px 30px 10px;
	padding : 10px;
	font-size:25px;
	border:1px solid gray;
	box-sizing:border-box;
	border-radius: 5px;
	
}
.write_title{
	margin-bottom:10px;
	font-weight: 700;
	font-size:20px;
	letter-spacing : -1px;
}
.comment_footer{
	display:flex;
	justify-content:space-between;
	box-sizing: border-box;
	padding: 0 30px;
	margin-bottom:30px;
}
.b_write_btn{
	background-color: #FFE08C;
}
.b_write_btn:hover{
	background-color: orange;
}
.comment_list_wrap{
	position:relative;
	margin:30px 30px 0px;
	padding : 10px;
	height: 130px;
	border:1px solid gray;
	box-sizing:border-box;
	border-radius: 5px;
	display: flex;
	justify-content: space-between;
}



.comment_main{
	width: 100%;
	height: 100%;
	/* border:1px solid blue; */
	box-sizing: border-box;
	padding: 10px 0;
}
.comment_main2{
	width: 100%;
	height: 100%;
	/* border:1px solid blue; */
	box-sizing: border-box;
	padding: 10px 0;
}
.board_info{
	display:flex;
	justify-content:space-between;
	font-size: 17px;
	height: 20px;
	line-height: 20px;
	padding-bottom:5px;
	border-bottom:1px solid orange;
}
.board_info > span{
	margin: 0 10px;
}
.uname{
	font-weight: 700;
}
.btime{
	font-weight: 200;
	font-size: 15px;
}
.comment_text{
	position:relative;
	box-sizing:border-box;
	font-size: 15px;
	height: 70px;
	padding: 10px;
}
#profile_img{
	width: 100%;
	height: 100%;
}
.good_btn{
	position: absolute;
	margin:0 auto;
	top:0;
	left:50%;
	width:50px;
	height:50px;
	transform: translate(-50%, 0);
	text-align: center;
	color:lightgray;
	cursor: pointer;
}
/* .good_btn > i {	
	font-size:30px;
	line-height: 30px!important;
} */


.btn_like {
	position: relative;
	display: inline-block;
	width: 44px;
	height: 44px;
	border: 1px solid #e8e8e8;
	border-radius: 44px;
	font-family: notokr-bold,sans-serif;
	font-size: 14px;
	line-height: 16px;
	background-color: #fff;
	color: #DD5D54;
	box-shadow: 0 2px 2px 0 rgba(0,0,0,0.03);
	transition: border .2s ease-out, box-shadow .1s ease-out, background-color .4s ease-out;
	cursor: pointer;
	outline: none;
}
.btn_like: hover {
	border: 1px solid rgba(228, 89, 89, 0.3);
	background-color: rgba(228, 89, 89, 0.02);
	box-shadow: 0 2px 4px 0 rgba(228, 89, 89, 0.2);
}
.btn_unlike .img_emoti {
	background-position: -30px -120px;
}
.img_emoti {
	display: inline-block;
	overflow: hidden;
	font-size: 0;
	line-height: 0;
	background: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/img_emoti.png?v=20180410) no-repeat;
	text-indent: -9999px;
	vertical-align: top;
	width: 20px;
	height: 17px;
	margin-top: 1px;
	background-position: 0px -120px;
	text-indent: 0;
}	
.btn_like .ani_heart_m {
	margin: -63px 0 0 -63px;
}
.ani_heart_m {
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 125px;
	height: 125px;
	margin: -63px 0 0 -63px;
	pointer-events: none;
}
.ani_heart_m.hi {
	background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_on_m.png);
	-webkit-background-size: 9000px 125px;
	background-size: 9000px 125px;
	animation: on_m 1.06s steps(72);
}
.ani_heart_m.bye {
	background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_off_m.png);
	-webkit-background-size: 8250px 125px;
	background-size: 8250px 125px;
	animation: off_m 1.06s steps(66);
}
@keyframes on_m {
	from { background-position: 0 }
	to { background-position: -9000px}
}
@keyframes off_m {
	from { background-position: 0 }
	to { background-position: -8250px}
}
#wrap_like {
	text-align: center;
}
i.fa-heart {
	font-size: 14px;
	padding-right: 5px;
}

	.modal_deleteback{
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		width:100vw;
		height:100vh;
		background-color: rgba(0,0,0,0.6);
	}
	.modal_deletebox{
		border-radius: 30px;
		margin: 200px auto 0;
		width: 400px;
		height: 300px;
		background-color: white;
	}
	.modal_deleteheader{
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
	.modal_deletebody{
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
	.drop_btn {
		width: 150px;
		text-align:center;
		font-size: 20px;
		line-height:50px;
		cursor: pointer;
		background-color: lightgray;
	}
	.drop_btn:hover {
		background-color: #FFB400;
	}
	.content_num{
		margin-right:5px;
		color:tomato;
		font-size: 12px;
	}


</style>
</head>
<body>
	<div class="all_wrap">
		<div class="board_wrap">
			<div></div>
			<div class="board_insert_box">
				<div class="board_insert_header">
					<div class="board_name">자유 게시판</div>
					<div id="box_solid_top"></div>
					
					<div class="content_wrap">
						<span class="content_name">작성자</span>
						<span class="content_infobox">
							<input type="text" name="" id="user_name" class="read_info" readonly="readonly" value="${one.writer}">
						</span>
						<span class="content_name read_time">작성일자</span>
						<span class="content_infobox date_box">
							<fmt:formatDate pattern="yyyy-MM-dd" value="${one.regdate}" />	
						</span>
					</div>
					<div class="content_wrap">
						<span class="content_name">제목</span>
						<span class="content_namebox">
							${one.title}
							
						</span>
						
					</div>
					<div class="content_wrap">
						<span class="content_name">첨부파일</span>
						<input type="file" name="" id="b_file">
						<div class="d_file_text"><i class="fas fa-file-upload"></i>
							<span> 첨부된 파일이 없습니다.</span>
						</div>
						<div class="gv_box">
							<span class="content_num">
								${one.bno} 번째글
							</span>
							<i class="fas fa-heart good_i"></i><span id="goodcnt">${one.goodcnt}</span>
							<i class="far fa-eye view_i"></i><span id="viewcnt">${one.viewcnt}</span>
						</div>
					</div>
				</div>
				
				<div class="board_insert_body">
					<div class="board_name">내용</div>
					<div class="board_textbox">${one.content}</div>
				</div>
				
				<div class="board_insert_footer">
					<div class="b_i_btn b_back_btn">목록으로</div>
					
					<c:if test="${!empty sessionScope.loginUser}">
						<div class="good_btn">
							<div id="wrap_like">
								<button type="button" class="btn_like" id="btn_good">
									<span class="img_emoti">좋아요</span>
									<span class="ani_heart_m"></span>
								</button>
							</div>
						</div>
					</c:if>
					
					<div class="board_ud_box">
						<c:if test="${sessionScope.loginUser.id == one.writer}">
							<div class="b_i_btn b_update_btn">수정하기</div>
							<div class="b_i_btn b_delete_btn">삭제하기</div>
						</c:if>
					</div>
				</div>
				
				<div class="modal_deleteback">
					<div class="modal_deletebox">
						<div class="modal_deleteheader"><span class="point">M</span>ake <span class="point">F</span>ree</div>
						<div class="modal_deletebody">
							정말로 게시판을 삭제하시겠습니까?
						</div>
						<div class="re_ox_btn">
							<div class="drop_btn back_btn">아니오</div>
							<div class="drop_btn ok_btn">예</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="comment_wrap">
			<div id="commentList"></div>
		</div>
	</div> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			/*문서가 준비되면 댓글 목록을 조회하는 AJAX 실행 */
			comment_list();
			good_check();
			
			$(document).on("click", ".b_write_btn", function(event){
				oEditors.getById["replyInsert"].exec("UPDATE_CONTENTS_FIELD", []);
				var content = $("#replyInsert").val();
				
				if(content == "<p><br></p>"){
					//유효성체크(Null 체크)
					$("#replyInsert").focus();
					return false;
				}else{
					//게시글번호 담아서
					var bno = '${one.bno}';
					$('#re_bno').val(bno);
					
					/* serialize직렬화 시켜서 전송, 데이터를 바이트화 시켜서 전송 */
					$.ajax({
						type:"POST",
						url: "replyAdd.makefree",
						data: $('#frm_reply').serialize(), 
						contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
						success:function(result){
							comment_list();
							$("#replyInsert").val("");
						},
						error: function(){
							alert("System Error!!!")
						}
					});
				}
			});
			
			$('.d_file_text').click(function(event) {
				$('#b_file').click();
			});
			
			$('.b_delete_btn').click(function(event) {
				$('.modal_deleteback').css('display', 'block');
			});
			$('.back_btn').click(function(event) {
				$('.modal_deleteback').css('display', 'none');
			});
			
			$('.ok_btn').click(function(event) {
				var bno = '${one.bno}';
				location.href="deleteBoard.makefree?bno="+bno;
			});
			
			
		<%-- 	$('.b_back_btn').click(function(){
				location.href = "<%=referer%>";
			}); --%>
			
			$('#btn_good').click(function(){
				var bno = '${one.bno}';
 				var id = '${sessionScope.loginUser.id}';
 				
 				$.ajax({
					type:"POST",
					url: "goodAdd.makefree",
					data: "bno=" + bno + "&id=" + id, 
					dataType: "json",
					success:function(data){
						if(data.check == "0"){
							$('#btn_good').addClass('btn_unlike');
							$('.ani_heart_m').addClass('hi');
							$('.ani_heart_m').removeClass('bye');
						}else {
							$('#btn_good').removeClass('btn_unlike');
							$('.ani_heart_m').removeClass('hi');
							$('.ani_heart_m').addClass('bye');
						}
						$('#goodcnt').text(data.goodcnt);
						
					},
					error: function(){
						alert("System Error!!!")
					} 
				});
				
			});
		});
		$(document).on("click", ".b_back_btn", function(event){
			location.href = "<%=referer%>";
		});
		
		$(document).on("click", ".delete_comment", function(event){
			var rno = $(this).attr("data_num");
			var bno = '${one.bno}';
			
			$.ajax({
				type:"POST",
				url: "replyRemove.makefree",
				data: "rno=" + rno + "&bno=" + bno, 
				success:function(result){
					comment_list();
				},
				error: function(){
					alert("System Error!!!")
				}
			});
		});
		
		function good_check(){
			var bno = '${one.bno}';
			var id = '${sessionScope.loginUser.id}';
			$.ajax({
				type:"POST",
				url: "good_check.makefree",
				data: "bno="+bno+"&id="+id,
				success:function(data){
					
					if(data.check == "0"){
						$('#btn_good').removeClass('btn_unlike');			
					}else {
						$('#btn_good').addClass('btn_unlike');
					}
				}
			});
		}
		
		function comment_list(){
			$.ajax({
				type:"POST",
				url: "commentlist.makefree",
				data: "bno=${one.bno}",
				success:function(result){
					$("#commentList").html(result);
				}
			});
		}
	</script>
</body>
</html>