package com.makefree.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dto.BoardDTO;
import com.makefree.dto.CriteriaDTO;
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
	
	
	
}
