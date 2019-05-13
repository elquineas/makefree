package com.makefree.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dto.MemberDTO;
import com.makefree.mybatis.SqlMapConfig;

public class LoginDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private LoginDAO() {}
	private static LoginDAO instance = new LoginDAO();
	public static LoginDAO getInstance() {
		return instance;
	}
	
	//Login시 회원가입 유무Check
	public MemberDTO loginCheck(String id, String pw) {
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPw(pw);
		try {
			mDto = sqlSession.selectOne("loginCheck", mDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return mDto;
	}
	
	
}
