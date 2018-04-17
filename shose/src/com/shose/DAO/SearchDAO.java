package com.shose.DAO;

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
		
		public List<BoardDTO> searchTitle(CriteriaDTO cDto) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			try {
				
				list = sqlSession.selectList("searchTitle", cDto);
				
				System.out.println(cDto.getSearch());
				
				for (BoardDTO boardDTO : list) {
					System.out.print(boardDTO.getBno()+ " , ");
					System.out.print(boardDTO.getTitle()+ " , ");
					System.out.print(boardDTO.getContent()+ " , ");
					System.out.print(boardDTO.getWriter()+ " , ");
					System.out.print(boardDTO.getRegdate()+ " , ");
					System.out.print(boardDTO.getViewont()+ " , ");
					System.out.println();
					System.out.println();
				}
				
				
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}
		
		public List<BoardDTO> searchContent(CriteriaDTO cDto) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			try {
				
				list = sqlSession.selectList("searchContent", cDto);
				
				System.out.println(cDto.getSearch());
				
				for (BoardDTO boardDTO : list) {
					System.out.print(boardDTO.getBno()+ " , ");
					System.out.print(boardDTO.getTitle()+ " , ");
					System.out.print(boardDTO.getContent()+ " , ");
					System.out.print(boardDTO.getWriter()+ " , ");
					System.out.print(boardDTO.getRegdate()+ " , ");
					System.out.print(boardDTO.getViewont()+ " , ");
					System.out.println();
					System.out.println();
				}
				
				
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}

		
		public List<BoardDTO> searchTitleContent(CriteriaDTO cDto) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			try {
				
				list = sqlSession.selectList("searchTitleContent", cDto);
				
				System.out.println(cDto.getSearch());
				
				for (BoardDTO boardDTO : list) {
					System.out.print(boardDTO.getBno()+ " , ");
					System.out.print(boardDTO.getTitle()+ " , ");
					System.out.print(boardDTO.getContent()+ " , ");
					System.out.print(boardDTO.getWriter()+ " , ");
					System.out.print(boardDTO.getRegdate()+ " , ");
					System.out.print(boardDTO.getViewont()+ " , ");
					System.out.println();
					System.out.println();
				}
				
				
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}
		
		public List<BoardDTO> searchWriter(CriteriaDTO cDto) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			try {
				
				list = sqlSession.selectList("searchWriter", cDto);
				
				System.out.println(cDto.getSearch());
				
				for (BoardDTO boardDTO : list) {
					System.out.print(boardDTO.getBno()+ " , ");
					System.out.print(boardDTO.getTitle()+ " , ");
					System.out.print(boardDTO.getContent()+ " , ");
					System.out.print(boardDTO.getWriter()+ " , ");
					System.out.print(boardDTO.getRegdate()+ " , ");
					System.out.print(boardDTO.getViewont()+ " , ");
					System.out.println();
					System.out.println();
				}
				
				
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}
}
