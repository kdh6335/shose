package com.shose.DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shose.common.DBManager;
import com.shose.DTO.ProductDTO;


import com.shose.mybatis.SqlMapConfig;



public class ProductDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
	    //신상품 조회
		
	    public List<ProductDTO> imagelist() {
	    	
	    	List<ProductDTO> list = new ArrayList<>();
	    	
	    	sqlSession = sqlSessionFactory.openSession();
	    	
	    	try {
	    		
	    		list = sqlSession.selectList("newpdtview");
	    		
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
	    	
	    	return list;
	    }
	    
	    
	    
	    
	    public List<ProductDTO> bestlist() {
	    	List<ProductDTO> list = new ArrayList<>();
	    	
	    	sqlSession = sqlSessionFactory.openSession();
	    	
	    	try {
	    		
	    		list = sqlSession.selectList("bestview");
	    		
	    		
	    		
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
			}
	    	
	    	return list;
	    }
		
		
		
		  /*public List<ProductDTO> imagelist() {
		    	
			  ArrayList<ProductDTO> list = new ArrayList<>();
		    	
		    	try {
		    		conn = DBManager.getConnection();
		    		
		    		String sql=" SELECT * FROM new_pro_view ";
					pstmt = conn.prepareStatement(sql);
		    		
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						String p_code = rs.getString("p_code");
						String p_name = rs.getString("p_name");
						String p_price2 = rs.getString("p_price2");
						String p_img = rs.getString("p_img");
						
						ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
						list.add(pDto);
					}
		    		
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					DBManager.close(conn, pstmt , rs);
				}
		    	
		    	return list;
		    }
		    
		    
		    
		    
		    public List<ProductDTO> bestlist() {
		    	
		    	ArrayList<ProductDTO> list = new ArrayList<>();
		    	
		    	
		    	try {
		    		
		    		conn = DBManager.getConnection();
		    		
		    		String sql=" SELECT * FROM best_pro_view ";
					pstmt = conn.prepareStatement(sql);
		    		
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						String p_code = rs.getString("p_code");
						String p_name = rs.getString("p_name");
						String p_price2 = rs.getString("p_price2");
						String p_img = rs.getString("p_img");
						
						ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
						list.add(pDto);
					}
		    		
		    		
		    		
					
				} catch (Exception e) {
					
					e.printStackTrace();
					
				}finally {
					
					DBManager.close(conn, pstmt , rs);
				}
		    	
		    	return list;
		    }*/
	    
	    private static ProductDAO instance = new ProductDAO();
		public static ProductDAO getInstance() {
			return instance;
		}

		

}
