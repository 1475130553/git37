package com.shujuku_b;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.conn.jdbc.Connectionutils;

import Shujuku.dingyi;
public class ShiXian implements Jiekou{

	@Override
	public List<dingyi> getall() {
		Connection conn=Connectionutils.getconnection();
		List<dingyi> list=new ArrayList<>();
		try {
			Statement sta=conn.createStatement();
			ResultSet res=sta.executeQuery("SELECT id,xinghao,jiage,tupian,shuliang FROM fushi");
			while(res.next()){
				dingyi ding=new dingyi();
			ding.setId(res.getInt("id"));
			ding.setXinghao(res.getString("xinghao"));
			ding.setJiage(res.getDouble("jiage"));
			ding.setTupian(res.getString("tupian"));
			ding.setShuliang(res.getInt("shuliang"));
			list.add(ding);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	

}
