package com.makefree.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.common.Constants;
import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class InsertBoardAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.makefree";
		
		File uploadDir = new File(Constants.UPLOAD_PATH);
		//파일업로드 1)
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		//파일 업로드 2) "D:\\upload"로 첨부파일 저장
		//기존파일이 있든 없든 새로운 파일을 저장
		//ex) 만약에 기존파일이 aaa.txt가 있고 새로 등록하는 첨부파일이 bbb.txt가 있다면
		//	     현재 upload 디렉토리에는 aaa.txt와 bbb.txt가 있음
		MultipartRequest multi = new MultipartRequest(request,
				Constants.UPLOAD_PATH, // 파일이 저장될 위치
				Constants.MAX_UPLOAD,  // 파일최대사이즈
				"UTF-8", //인코딩 방식
				new DefaultFileRenamePolicy()); //같은 이름이 들어올경우 파일이름뒤에 숫자를 자동으로 붙여줌
		//매개변수가 5개가 필요한 생성자.
		//위에서 만들어진 폴더에 자료가 들어감
		
		
		String writer = multi.getParameter("user_name");
		String content = multi.getParameter("boardInsert");
		String title = multi.getParameter("title_name");
		String filename = " ";
		int filesize = 0;
		
		try {
			Enumeration files = multi.getFileNames();
			//cos.jar 라이브러리에서 추가된 코드
			//input 타입에 있는 파일이름을 가져옴
			
			while(files.hasMoreElements()) { // 가져온 이름의 rs.next처럼 줄을 가르킴
				String file1 = (String)files.nextElement();
				filename = multi.getFilesystemName(file1);
				File f1 = multi.getFile(file1); 
				//list처럼 한줄씩 꺼내온 파일을 각각 변수에 담아주는 것
				
				if(f1 != null) { //f1에 파일이 있으면
					filesize = (int)f1.length();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// jsp 페이지에 있는 <input type="file"...>에 저장 된 파일 이름과 사이즈를 알아내기위한 코드 (try ~ catch)
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer, filename, filesize);
		System.out.println(bDto.toString());
		
		bDao.insertBoard(bDto);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
