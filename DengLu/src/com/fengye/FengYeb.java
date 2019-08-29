package com.fengye;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.conn.jdbc.Connectionutils;

import Shujuku.dingyi;

public class FengYeb {
	public static List<dingyi> fengye(int startIndex, int pageSize) {
		Connection conn=Connectionutils.getconnection();
		PreparedStatement sta=null;
        ResultSet exe=null;
        List<dingyi> lists=new ArrayList<>();
	 	try {
			sta=conn.prepareStatement("SELECT id,xinghao,jiage,tupian, shuliang FROM fushi  LIMIT ?,?");
			sta.setInt(1,startIndex);
			sta.setInt(2, pageSize);
			exe=sta.executeQuery();
			while(exe.next()){
				dingyi asd=new dingyi();
				asd.setId(exe.getInt("id"));
				asd.setJiage(exe.getDouble("jiage"));
				asd.setTupian(exe.getString("tupian"));
				asd.setXinghao(exe.getString("xinghao"));
				asd.setShuliang(exe.getInt("shuliang"));
				lists.add(asd);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return lists;
}
	public  static  List<dingyi>  getGoods(){
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
			ding.setId(res.getInt("1"));
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
}}