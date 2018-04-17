package com.shose.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shose.DTO.BoardDTO;
import com.shose.DTO.CriteriaDTO;
import com.shose.mybatis.SqlMapConfig;

public class SearchDAO {
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		//신상품 조회
	
		private static SearchDAO instance = new SearchDAO();
		public static SearchDAO getInstance() {
			return instance;
		}
		
		public List<BoardDTO> searchTitle(String title) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			
			try {
				
				list = sqlSession.selectList("searchTitle", title);
				
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}

}
