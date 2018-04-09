package com.shose.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	
	private static SqlSessionFactory sqlSessionFactory; 
	
	static {
		String resource = "com/shose/mybatis/Configuration.xml";
		
		try {
			
			Reader reader = Resources.getResourceAsReader(resource);// resource를 읽어오는 함수이다.
			
			if(sqlSessionFactory == null) {
				
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
		public static SqlSessionFactory getSqlSession() {
			return sqlSessionFactory;
		}
}
