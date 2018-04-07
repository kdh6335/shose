package com.shose.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shose.DTO.MemberDTO;
import com.shose.common.DBManager;
import com.shose.mybatis.SqlMapConfig;


public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result, flag;
	
	// MyBatis 세팅값 호출
			SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
			//mapper에 접근하기 위한 SqlSession
			SqlSession sqlSession;
		    //신상품 조회
	
	// ID 중복 체크
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}

	
	public int memIdCheck(String mid) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		List<MemberDTO> list = new ArrayList<>();
	
		
		try {
			
			list = sqlSession.selectList("memIdCheck", mid);
			
				System.out.println(list.size());
				if(list.size() > 0) {
					
					System.out.println("중복된 ID 입니다.");
					flag = 0;
					
				}else {
					
					System.out.println("사용가능한 ID 입니다.");
					flag = 1;
					
				}
			
			
		
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return flag;
	}
	//아이디 체크
	public int memLogin(MemberDTO mDto) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		List<MemberDTO> list = null;
		
		try {
			String id = mDto.getMid();
			String pw = mDto.getMpw();
			
			Map map = new HashMap();
			map.put("id", id);
			map.put("pw", pw);
			
			list = sqlSession.selectList("memlogin", map);
			
			
			
			
			
			System.out.println(list.size());
			
			if(list.size() > 0) {
				
				System.out.println("로그인 성공");
				
				flag = 1;
				
			}else {
				
				System.out.println("로그인 실패");
				
				flag = 0;
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return flag;
	}
	//회원 등록
	
	public int memIsert(MemberDTO mDto) {
		
			sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			result = sqlSession.insert("memIsert", mDto);
			
			
			
			if(result > 0 ) {
				
				System.out.println("등록 성공");
				
			} else {
				
				System.out.println("등록 실패");
			
			}
			
			sqlSession.commit();
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
		}
		return result;
	}
	
	
	
	
	
public MemberDTO sessionLogin(MemberDTO mDto) {
		
		List<HashMap> list = null;
		
		sqlSession = sqlSessionFactory.openSession();
		
		
		try {
			
			String id = mDto.getMid();
			String pw = mDto.getMpw();
			
			System.out.println(id + " , " + pw);
			
			Map map = new HashMap();
			map.put("id", id);
			map.put("pw", pw);
			
			
			list = sqlSession.selectList("sessionLogin", map);
			
			System.out.println(list.size());
			
			for (int i = 0; i < list.size(); i++) {
				
				map = (HashMap)list.get(i);
				
				String mid = (String)map.get("MID");
				String mpw = (String)map.get("MPW");
				String mname = (String)map.get("MNAME");
				String memail = (String)map.get("MEMAIL");
				String mbirth = (String)map.get("MBIRTH");
				String mjuso = (String)map.get("MJSUO");
				String mphone = (String)map.get("MPHONE");
				String mmen = (String)map.get("MMEN");
				//Date regdate = (Date)map.get("REGDATE");
				
				mDto = new MemberDTO(mid, mpw, mname, mphone, mjuso, memail, mbirth, mmen);
				
				System.out.println(mid+ " , " + mpw+ " , " + mname+ " , " + memail+ " , " + mjuso+ " , " + mphone+ " , " + mbirth+ " , " + mmen );
			}
			
			/*for (MemberDTO memberDTO : list) {
				
				String mid = (String)memberDTO.getMid();
				String mpw = (String)memberDTO.getMpw();
				String mname = (String)memberDTO.getMname();
				String memail = (String)memberDTO.getMemail();
				String mbirth = (String)memberDTO.getMbirth();
				String mjuso = (String)memberDTO.getMjuso();
				String mphone = (String)memberDTO.getMphone();
				Date regdate = (Date)memberDTO.getRegdate();
				String mmen = (String)memberDTO.getMmen();
				
				mDto = new MemberDTO(mid, mpw, mname, mphone, mjuso, memail, mbirth, mmen, regdate);
				
			}*/
			
		
			/*Iterator<String> iterator = map.keySet().iterator();
		    while (iterator.hasNext()) {
		        String key = (String) iterator.next();
		        System.out.print("key="+key);
		        System.out.println(" value="+map.get(key));
		    }*/
			
			
		
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return mDto;
	}





	

	
}
