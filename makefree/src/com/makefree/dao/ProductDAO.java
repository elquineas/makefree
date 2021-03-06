package com.makefree.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.makefree.dao.ProductDAO;
import com.makefree.dto.ProductDTO;
import com.makefree.mybatis.SqlMapConfig;

public class ProductDAO {
		//MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		// mapper에 접근하기 위한 Sqlsession
		SqlSession sqlSession;
		
		// Singleton패턴을 활용한 DAO객체 사용
		// : 객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는 형태
		// : +외부에서는 객체생성이 불가능하게 잠금!
		private ProductDAO() {}
		ProductDTO pDto = null;
		
		// 외부에서 빌려서 사용할 객체 생성(instance)
		private static ProductDAO instance = new ProductDAO();
		//외부에서 getInstance()를 호출하면 객체를 빌려줌
		public static ProductDAO getInstance() {
			return instance;
		}
		int result = 0;
		
		
		public List<ProductDTO> chickenList(){
			List<ProductDTO> list = null;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				list = sqlSession.selectList("chickenList");
				
				for (ProductDTO productDTO : list) {
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close(); 
			}
			return list;
		}
		
		public List<ProductDTO> pigList(){
			List<ProductDTO> list = null;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				list = sqlSession.selectList("pigList");
				
				for (ProductDTO productDTO : list) {
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close(); 
			}
			return list;
		}
		
		public List<ProductDTO> cowList(){
			List<ProductDTO> list = null;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				list = sqlSession.selectList("cowList");
				
				for (ProductDTO productDTO : list) {
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close(); 
			}
			return list;
		}
		
		public List<ProductDTO> recipeList(String p_code){
			List<ProductDTO> list = null;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				list = sqlSession.selectList("detail_search", p_code);
				
				for (ProductDTO productDTO : list) {
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close(); 
			}
			return list;
		}
		
		
		public ProductDTO detail(String p_code) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				
				pDto = sqlSession.selectOne("menu_search", p_code);
				System.out.println("DAO에서 pDto : "+ pDto.toString());
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close(); 
			}
			return pDto;

		}
		
		
		
}
