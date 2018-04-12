package com.shose.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shose.DTO.BoardDTO;
import com.shose.mybatis.SqlMapConfig;

public class BoardDAO {
	// MyBatis 세팅값 호출
				SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
			
				//mapper에 접근하기 위한 SqlSession
				SqlSession sqlSession;
			    //신상품 조회
				
				private static BoardDAO instance = new BoardDAO();
				public static BoardDAO getInstance() {
					return instance;
				}
				

				public List<BoardDTO> listAll() {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = new ArrayList<>();
				
					
					try {
						
						list = sqlSession.selectList("boardlistAll");
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
							System.out.print(boardDTO.getContent()+" , ");
							System.out.print(boardDTO.getWriter()+" , ");
							System.out.print(boardDTO.getRegdate()+" , ");
							System.out.print(boardDTO.getViewont()+" , ");
							System.out.println();
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
				}
				
				public int insertBoard(BoardDTO bDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int ruselt = 0;
				
					
					try {
						
						ruselt = sqlSession.insert("insertBoard", bDto);
						
						sqlSession.commit();
						
						if (ruselt > 0 ) {
							
							System.out.println("등록 성공");
							
						}else {
							
							System.out.println("등록 실패");
							
						}
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return ruselt;
				}
				
				
				public List<BoardDTO> bodylist(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = new ArrayList<>();
				
					
					try {
						
						list = sqlSession.selectList("bodylist", bno);
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
							System.out.print(boardDTO.getContent()+" , ");
							System.out.print(boardDTO.getWriter()+" , ");
							System.out.print(boardDTO.getRegdate()+" , ");
							System.out.print(boardDTO.getViewont()+" , ");
							System.out.println();
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
				}
				
				public List<BoardDTO> modifyList(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = new ArrayList<>();
				
					
					try {
						
						list = sqlSession.selectList("modfiyList", bno);
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
							System.out.print(boardDTO.getContent()+" , ");
							System.out.print(boardDTO.getWriter()+" , ");
							System.out.print(boardDTO.getRegdate()+" , ");
							System.out.print(boardDTO.getViewont()+" , ");
							System.out.println();
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
				}
				
				
				public int modifUpdate(BoardDTO bDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int rusult = 0;
				
					
					try {
						
						rusult = sqlSession.update("modfiyUpdate", bDto);
						sqlSession.commit();
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return rusult;
				}
				
				public int modifDelete(Integer bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int rusult = 0;
				
					
					try {
						
						rusult = sqlSession.delete("modifDelete", bno);
						sqlSession.commit();
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return rusult;
				}
}
