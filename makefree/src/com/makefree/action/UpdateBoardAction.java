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

public class UpdateBoardAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
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
				Constants.UPLOAD_PATH,
				Constants.MAX_UPLOAD, 
				"UTF-8", 
				new DefaultFileRenamePolicy());
		
		String bno = multi.getParameter("bno");
		System.out.println(bno);
		String writer = multi.getParameter("user_name");
		String content = multi.getParameter("boardInsert");
		String title = multi.getParameter("title_name");
		int bFileSize = Integer.parseInt(multi.getParameter("basic_file_size")); 
		String bFileName = multi.getParameter("basic_file_name");
		String bCheck =  multi.getParameter("basic_check");
		
		String filename = "";
		int filesize = 0;
		
		BoardDTO bDto= new BoardDTO(title, content, writer); 
		System.out.println("bFileSize: "+bFileSize+", bFileName: "+bFileName+", bCheck: "+bCheck);
		// 파일업로드 3) DB에 저장할 첨부파일의 이름과 사이즈를 구함
		// 새로등록한 첨부파일이 있다면
		// : 새로등록한 첨부파일의 filename과 filesize를 구하고
		// 새로등록한 첨부파일이 없다면
		// : while()을 타지않아 filename = "", filesize = 0으로 고정
		
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
		System.out.println("filesize = " + filesize + ", filename = " + filename);
		// jsp 페이지에 있는 <input type="file"...>에 저장 된 파일 이름과 사이즈를 알아내기위한 코드 (try ~ catch)
		
		if(filename == null || filename.trim().equals("")) {
			filename ="-";
			if(bCheck.equals("no")) { //기존첨부파일이 있는 경우
				File file = new File(Constants.UPLOAD_PATH + bFileName);
				file.delete();
			} else { //현상태 유지
				filename = bFileName;
				filesize = bFileSize;
			}
		} else {
			// 새로등록한 첨부파일 있는 경우
			// 기존파일 있는지 체크
			if(bFileSize > 0){ //기존파일 있음
				File file = new File(Constants.UPLOAD_PATH + bFileName);
				file.delete();
			}
		}
		
		bDto = new BoardDTO(bno, title, content, writer, filename, filesize); 
		System.out.println(bDto.toString());
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.registerAdd(bDto);
		
		String url = "boardList.makefree";
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
