package com.shose.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shose.DTO.ProductDTO;
import com.shose.common.DBManager;



public class ProductDAO {
	 	Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    int result =0;
	   // ArrayList<ProductDTO> list = new ArrayList<>();
	 
	    
	    //신상품 조회
	    public ArrayList<ProductDTO> imagelist() {
	    	
	    	ArrayList<ProductDTO> list = new ArrayList<>();
	    	try {
	    		conn = DBManager.getConnection();
	    		String sql = "SELECT * FROM new_pro_view ";
	    		pstmt = conn.prepareStatement(sql);
	    		
	    		rs = pstmt.executeQuery();
	    		
	    		while(rs.next()) {
	    			String p_code = rs.getString("p_code");
	    			String  p_name =rs.getString("p_name");
	    			String  p_price2 = rs.getString("p_price2");
	    			String  p_img = rs.getString("p_img");
	    			
	    			ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
	    			list.add(pDto);
	    		}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
	    	
	    	return list;
	    }
	    
	    public ArrayList<ProductDTO> bestlist() {
	    	ArrayList<ProductDTO> list = new ArrayList<>();
	    	try {
	    		conn = DBManager.getConnection();
	    		String sql = "SELECT * FROM best_pro_view ";
	    		pstmt = conn.prepareStatement(sql);
	    		
	    		rs = pstmt.executeQuery();
	    		
	    		while(rs.next()) {
	    			String p_code = rs.getString("p_code");
	    			String  p_name =rs.getString("p_name");
	    			String  p_price2 = rs.getString("p_price2");
	    			String  p_img = rs.getString("p_img");
	    			
	    			ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
	    			list.add(pDto);
	    		}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
	    	
	    	return list;
	    }

}
