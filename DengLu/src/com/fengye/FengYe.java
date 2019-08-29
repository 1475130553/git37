package com.fengye;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.conn.jdbc.Connectionutils;

import Shujuku.dingyi;

public class FengYe {
	public  static  List<dingyi>  getAllfen(){
		dingyi ding=null;
		PreparedStatement prp=null;
		 ResultSet res=null;
		Connection conn=null;
		List<dingyi> list=new ArrayList<>();
		try {
			conn=Connectionutils.getconnection();
         prp=conn.prepareStatement("SELECT id,xinghao,jiage,tupian,shuliang FROM fushi");
        res=prp.executeQuery();
			while(res.next()){
			 ding=new dingyi();
			ding.setId(res.getInt("id"));
			ding.setXinghao(res.getString("xinghao"));
			ding.setJiage(res.getDouble("jiage"));
			ding.setTupian(res.getString("tupian"));
			ding.setShuliang(Integer.parseInt(res.getString("shuliang")));
			list.add(ding);
			}
			
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return list;
		
		
		
	
	
	}
	public dingyi getbookById(int id){
		dingyi asd=null;
		
		try {
			Connection con=Connectionutils.getconnection();

        PreparedStatement ps=con.prepareStatement("SELECT id,xinghao,jiage,tupian,shuliang FROM fushi where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				 asd=new dingyi();
				asd.setId(Integer.valueOf(rs.getString("id")));
				asd.setXinghao(rs.getString("xinghao"));
				asd.setJiage(Double.valueOf(rs.getString("jiage")));
				asd.setTupian(rs.getString("tupian"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return asd;
		
	}
}
