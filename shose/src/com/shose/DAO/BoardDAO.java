package com.shose.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shose.DTO.BoardDTO;
import com.shose.DTO.CriteriaDTO;
import com.shose.DTO.NextPreDTO;
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
				

				public List<BoardDTO> listAll(CriteriaDTO criDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = null;
				
					
					try {
						
						list = sqlSession.selectList("listCriteria", criDto);
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
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
				
				
				public int totalCount(CriteriaDTO criDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					
					int result = 0;
					
					try {
						
						result = sqlSession.selectOne("countPaging",criDto);
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					
					return result;
					
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
				
				
				public int bodylistRead(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
						
					int result = 0;
					
				
					
					try {
						
						result = sqlSession.update("bodylistRead", bno);
						
						sqlSession.commit();
						
					
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return result;
				}
				
				public int bodySweetAdd(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
						
					int result = 0;
					
				
					
					try {
						
						result = sqlSession.update("bodyseetadd", bno);
						
						sqlSession.commit();
						
					
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return result;
				}
				
				
				public List<NextPreDTO> bodyNextBody(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
						
					List<NextPreDTO> list = new ArrayList<>();
					
					try {
						
						list = sqlSession.selectList("bodynext", bno);
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
				}
				
				
				public int countUpdate(BoardDTO bDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int rusult = 0;
				
					
					try {
						
						rusult = sqlSession.update("countUpdate", bDto);
						sqlSession.commit();
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return rusult;
				}
				
}
