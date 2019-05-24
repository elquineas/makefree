<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.comment_login{
		display:inline-block;
		margin:10px 0px 20px 30px;
		color:blue;
		font-size:1.1em;
	}
	.delete_comment{
		position:absolute;
		top:10px;
		right:10px;
		color:lightgray;
	}
	.delete_comment:hover{
		color:red;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div class="comment_box">
		<div class="comment_header">댓글 ${replyList.size()}</div>
		<div id="box_solid"></div>
		
		<c:choose>
			<c:when test="${replyList.size() != 0}">
				<div class="comment_list">
					<c:forEach items="${replyList}" var="replyview">
						<div class="comment_list_wrap">
							<div class="comment_main">
								<div class="board_info">
									<span class="uname">${replyview.writer}</span>
									<span class="btime">
										<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${replyview.regdate}" />
									</span>
								</div>
								<div class="comment_text">
									${replyview.content}
									<c:if test="${sessionScope.loginUser.id == replyview.writer}">
										<div class="delete_comment" data_num="${replyview.rno}">삭제</div>
									</c:if>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			
			<c:otherwise>
				<div class="comment_list">
					<div class="comment_list_wrap">
						<div class="comment_main2">
							<div class="board_info">
								<span id="uname">댓글이 없습니다.</span>
								<span id="btime"></span>
							</div>
							<div class="comment_text">
							</div>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>

			
		
		<div id="box_dashed"></div>
		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<span class="comment_login">로그인</span>을 하시면 댓글을 등록할 수 있습니다.
			</c:when>
			<c:otherwise>
				<form action="replyAdd.makefree" method="post" name="frm_reply" id="frm_reply">
					<div class="comment_write">
						<div class="write_title">${sessionScope.loginUser.id}</div>
						<div class="write_box">
							<textarea class="board_textarea" id="replyInsert" name="re_textarea" placeholder="댓글을 입력해주세요."></textarea>
							<script type="text/javascript">
								var oEditors = [];
								nhn.husky.EZCreator.createInIFrame({
								 oAppRef: oEditors,
								 elPlaceHolder: "replyInsert",
								 sSkinURI: "<%=request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",
								 fCreator: "createSEditor2"
								});
							</script>
						</div>
			
					</div>
					<div class="comment_footer">
						<div class="b_i_btn b_back_btn">목록으로</div>
						<div class="b_i_btn b_write_btn">작성</div>
					</div>
					<input type="hidden" name="re_writer" value="${sessionScope.loginUser.id}">
					<input type="hidden" id="re_bno" name="re_bno">
				</form>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>