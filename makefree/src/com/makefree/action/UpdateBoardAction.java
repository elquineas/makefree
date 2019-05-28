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
		
		// 파일업로드 3) DB에 저장할 첨부파일의 이름과 사이즈를 구함
		// 새로등록한 첨부파일이 있다면
		// : 새로등록한 첨부파일의 filename과 filesize를 구하고
		// 새로등록한 첨부파일이 없다면
		// : while()을 타지않아 filename = "", filesize = 0으로 고정
		try {
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 = (String)files.nextElement();
				filename = multi.getFilesystemName(file1); //첨부파일의
				File f1 = multi.getFile(file1); //첨부파일의
				
				if(f1 != null) {
					//filesize는 long 타입으로 가져옴
					//int로 형변환
					filesize = (int)f1.length();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
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
			} else {
				filename = bFileName;
				filesize = bFileSize;
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
