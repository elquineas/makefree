<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/board.css?v=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
	pagination_i > i{
		line-height: 1.5!important;
	}
	.pagination_i{
		height: 30px;
	}
	.fas{
		line-height: 1.5!important;
	}
	.container{
		width: 500px;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div class="all_wrap">
		<div class="board_wrap">
		
			<div class="board_header">
				<div class="board_title">
					게시판 제목
				</div>
				<div class="board_array">
					<div class="array_content">최신순</div>
					<div class="array_content">추천순</div>
					<div class="array_content">댓글순</div>
					<div class="array_content">조회순</div>   
				</div>
			</div>

			<div class="board_body">
				<div class="content_title">
					<div class="content_box board_content_num">NO.</div>
					<div class="content_box board_content_title">제목</div>
					<div class="content_box board_content_user">작성자</div>
					<div class="content_box board_content_day">작성일</div>
					<div class="content_box board_content_good">좋아요</div>
					<div class="content_box board_content_view">조회수</div>
					<div class="content_box board_content_file">첨부</div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">1</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">2</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">3</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">4</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file">
						<i class="fas fa-file-download"></i>
					</div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">5</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">6</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">7</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">8</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file"></div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">9</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file">
						<i class="fas fa-file-download"></i>
					</div>
				</div>
				<div class="content_body">
					<div class="content_box board_content_num">10</div>
					<div class="content_box board_content_title">안녕하세요</div>
					<div class="content_box board_content_user">김도연</div>
					<div class="content_box board_content_day">2019-05-16</div>
					<div class="content_box board_content_good"><i class="fas fa-heart"></i> 0</div>
					<div class="content_box board_content_view"><i class="far fa-eye"></i> 0</div>
					<div class="content_box board_content_file">
						<i class="fas fa-file-download"></i>
					</div>
				</div>

			</div>

			<div class="board_footer">
				<div class="border_page">
					<div class="container">
						<ul class="pagination pagination-sm">
							<li><a href="#" class="pagination_i"><i class="fas fa-angle-double-left"></i></a></li>
					 		<li><a href="#" class="pagination_i"><i class="fas fa-angle-left"></i></a><li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" class="pagination_i"><i class="fas fa-angle-right"></i></a></li>
							<li><a href="#" class="pagination_i"><i class="fas fa-angle-double-right"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="board_footer_btn">
					<div class="board_search">
						<select name="select" id="selset_board">
			                <option value="1">제목</option>          
			                <option value="2">내용</option>
			                <option value="3">제목+내용</option>
			                <option value="3">작성자</option>
			           </select>
						<div class="board_search_bar">
							<input type="text" name="" id="input_search" placeholder="검색">
							<div class="search_i"><i class="fas fa-search"></i></div>
						</div>
					</div>
					<div class="board_insert">게시글 등록</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#input_search').focus(function(event) {
				$('.board_search_bar').css('width', '400px')
									  .css('background-color', 'white')
									  .css('transition', '.7s');
				$('#input_search').css('background-color', 'white')
				  				  .css('transition', '.7s');
			});

			$('#input_search').blur(function(event) {
				$('.board_search_bar').css('width', '120px')
									  .css('background-color', '#f8f8f8')
									  .css('transition', '.7s');
				$('#input_search').css('background-color', '#f8f8f8')
								  .css('transition', '.7s')
								  .val("");
			});


		});
	</script>
</body>
</html>