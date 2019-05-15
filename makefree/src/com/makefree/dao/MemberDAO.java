package com.makefree.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dto.MemberDTO;
import com.makefree.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	MemberDTO mDto = null;
	int result = 0;
	boolean flag = false;
	
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
		
		try {
			result = sqlSession.insert("memInsert", mDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	public int memUpdate(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession(true);

		try {
			result = sqlSession.update("memUpdate", mDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	
	
	public MemberDTO memOne(String id) {
		sqlSession = sqlSessionFactory.openSession(true);

		try {
			mDto = sqlSession.selectOne("memOne", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return mDto;
	}
	
	//비밀번호 재설정 : 현재 비밀번호와 입력한 비밀번호가 일치하는지 확인
	public boolean pwCheck(String id, String pw) {
		
		sqlSession = sqlSessionFactory.openSession();
		HashMap<String, String> map = new HashMap<>();
		try {
			map.put("id", id);
			map.put("pw", pw);
			result = sqlSession.selectOne("pwCheck", map);
			
			if(result ==1 ) {
				flag=true;
			} else {
				flag=false;
			}
			System.out.println("flag >> " + flag);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return flag;
	}
	
	//비밀번호 재설정
	public int pwUpdate(String id, String pw) {
		sqlSession = sqlSessionFactory.openSession(true);
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", pw);
		try {
			result = sqlSession.update("pwUpdate", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	//회원삭제(완전삭제)
	public int memDelete(String id) {
		sqlSession = sqlSessionFactory.openSession(true);
		try {
			result = sqlSession.delete("memDelete",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
}
