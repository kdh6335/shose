package com.shose.common;

import java.sql.*;

public class DBManager {

                    private static Connection conn;

                    private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
                    private final static String URL = "jdbc:oracle:thin:@teno.homedns.tv:1521:XE";
                    private final static String USER = "java";
                    private final static String PASSWORD ="1234";


                    private DBManager(){

                    }

                    public static Connection getConnection(){
                                 conn = null;

                                 if(conn == null){
                                        try{
                                               Class.forName(DRIVER);
                                               conn = DriverManager.getConnection(URL , USER , PASSWORD);
                                        }catch (Exception e){
                                               e.printStackTrace();

                                        }
                                 }
                                 return conn;
                    }
                    public static void close(Connection conn , PreparedStatement pstmt , ResultSet rs){
                           try {
                                 if(conn != null){
                                               try {
                                                                   conn.close();
                                               } catch (Exception e) {
                                                     e.printStackTrace();
                                               }
                                 }

                                        if(pstmt != null){
                                                     try {
                                                                          pstmt.close();
                                                     } catch (Exception e) {
                                                            e.printStackTrace();
                                                     }
                                        }

                                               if(rs != null){
                                                            try {
                                                                                rs.close();
                                                            } catch (Exception e) {
                                                                   e.printStackTrace();
                                                            }
                                               }

                           } catch (Exception e) {
                                        e.printStackTrace();
                           }
                    }
                           // insert , update , delete close 메소드
                           public static void close(Connection conn , PreparedStatement pstmt){
                                 try {
                                        if(conn != null){
                                                     try {
                                                                          conn.close();
                                                     } catch (Exception e) {
                                                            e.printStackTrace();
                                                     }
                                        }

                                               if(pstmt != null){
                                                            try {
                                                                                pstmt.close();
                                                            } catch (Exception e) {
                                                                   e.printStackTrace();
                                                            }
                                               }


                                 } catch (Exception e) {
                                               e.printStackTrace();
                                 }


                           }










}
