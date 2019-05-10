package com.makefree.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dto.MemberDTO;
import com.makefree.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public String idCheck(String id) {
		sqlSession = sqlSessionFactory.openSession();
		String result = "";
		try {
			result = sqlSession.selectOne("idCheck",id);
			if(result != null) {
				result = "-1"; // ID가 있다 = 중복
			} else {
				result = "1"; //사용가능한 아이디
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	public int memInsert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession(true);
		int result = 0;
		
		try {
			result = sqlSession.insert("memInsert", mDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
}
