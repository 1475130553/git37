package com.tyu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.doget.Shoop;
import com.fengye.FengYe;
import com.fengye.FengYeb;
import com.shujuku_b.ShiXian;

import Shujuku.dingyi;


public class Shooppost extends HttpServlet{
   @Override
public void init(ServletConfig config) throws ServletException {
	// TODO Auto-generated method stub
	super.init(config);
}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
	resp.setContentType("text/html; charset=utf-8");
	FengYe shixian=new FengYe();
	List<dingyi> list;
	list = shixian.getAllfen();
	 Shoop  shop=new Shoop();
		double sum=0;
		for (int i=0;i<list.size();i++) {
			dingyi  book=list.get(i);
			shop.setFushi(book);
			sum += shop.getFushi().getJiage() * shop.getFushi().getShuliang();
		}
		String array = JSONArray.toJSONString(list);
		PrintWriter out = resp.getWriter();
		out.print(array);
		out.flush();
		out.close();
 }
       @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doPost(req, resp);
		}@Override
			public void destroy() {
				// TODO Auto-generated method stub
				super.destroy();
			}
}
