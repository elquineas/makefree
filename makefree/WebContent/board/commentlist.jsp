<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
									<span id="uname">${replyview.writer}</span>
									<span id="btime">
										<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${replyview.regdate}" />
									</span>
								</div>
								<div class="comment_text">
									${replyview.content}
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
		<div class="comment_write">
			<div class="write_title">유저ID</div>
			<div class="write_box">
				<textarea class="board_textarea">내용</textarea>
			</div>
		</div>
		<div class="comment_footer">
			<div class="b_i_btn b_back_btn">목록으로</div>
			<div class="b_i_btn b_write_btn">작성</div>
		</div>
	</div>
</body>
</html>