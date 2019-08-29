package com.select;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.conn.jdbc.Connectionutils;
import com.doget.Bianliang;
import com.tyu.Doget;
public class Asd implements Qwe{
   
	@Override
	public int insert(Bianliang q) {
		
		Connection conn=Connectionutils.getconnection();
		
		int t;
		try {
			
			PreparedStatement pre=conn.prepareStatement("INSERT INTO zhuce (username,mima) VALUES (?,?)");  
			pre.setString(1, q.getUsername());
			pre.setString(2, q.getMima());
		    t=pre.executeUpdate();	
		
			if(t>0){
				System.out.println("³É¹¦");
			}else{
				System.out.println("Ê§°Ü");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return 0;
	}

	@Override
	public List<Bianliang> getall() {
		Connection conn=Connectionutils.getconnection();
		List<Bianliang> list=new ArrayList<>();
		Statement sta=null;
		ResultSet result=null;
		try {
			 sta= conn.createStatement();
		 result=sta.executeQuery("SELECT username,mima FROM zhuce");
			while(result.next()){
				Bianliang stu=new Bianliang();
				stu.setUsername(result.getString("username"));
				stu.setMima(result.getString("mima"));
				
				list.add(stu);
		    }
			sta.close();
			result.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;

	}

}
