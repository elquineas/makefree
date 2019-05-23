package com.makefree.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dto.BoardDTO;
import com.makefree.dto.CriteriaDTO;
import com.makefree.dto.ReplyDTO;
import com.makefree.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	List<BoardDTO> list = null;
	BoardDTO bDto = new BoardDTO();
	int result = 0;
	boolean flag = false;
	
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	//게시글 목록
	public List<BoardDTO> listAll(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("listAll", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	//페이지네이션에 필요한 게시글 Total수 구하기
	public int  totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.selectOne("totalCount", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		
		return result;
	}
	
	//게시글 1건(상세조회)
	public BoardDTO view(String bno) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			bDto = sqlSession.selectOne("view", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return bDto;
	}
	
	//게시글 조회수 증가(+1)
	public void viewCnt(HttpSession session, String bno) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			long update_time = 0;
			int result = 0;
			
			//null이면 => 처음이므로 조회수 1 증가
			if(session.getAttribute("read_time_"+bno) != null) {
				update_time = (long)session.getAttribute("read_time_"+bno);
				
			}
			
			//현재시간 구하기
			long current_time = System.currentTimeMillis();
			
			//현재시간과 이전에 게시글 조회시간을 비교
			//24시간(1일)이 지났으면 조회수를 1증가
			//아니면 조회수 증가 없음
			
			if(current_time - update_time > 24 * 60 * 60 * 1000) {
				//조회수 1증가
				sqlSession.update("viewCnt", bno);
				
				//조회수 1증가한 최신 시간을 session 담음
				session.setAttribute("read_time_"+bno, current_time);
				
				//ex)30번 게시글을 조회하는 경우
				// read_time_30변수를 하나 만들고
				// 현재시간을 담음
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	public int goodAdd(String bno, String id) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("bno", bno);
		map.put("id", id);
		
		try {
			result = sqlSession.insert("goodAdd", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	public void replyCntAdd(int bno) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.update("replyCntAdd", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	public int replyCntMinus(int bno) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.update("replyCntMinus", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	
}
