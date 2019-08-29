package com.conn.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Connectionutils {
	
	static{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getconnection(){
		Connection conn=null;
		String name="root";
		String mima="zl971116";
		String dizhi="jdbc:mysql://localhost:3306/stu?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT&useSSL=false";
		
		try {
			conn=DriverManager.getConnection(dizhi, name, mima);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	
	

}
