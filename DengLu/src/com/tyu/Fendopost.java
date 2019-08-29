package com.tyu;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fengye.Feng;
import com.fengyeA.Servlet;

public class Fendopost extends HttpServlet {
   @Override
public void init(ServletConfig config) throws ServletException {
	// TODO Auto-generated method stub
	super.init(config);
}
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   req.setCharacterEncoding("utf-8");
		 resp.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html");
		 //获取当前页是第几页
		 int pageNum=Integer.valueOf(req.getParameter("pageNum"));
		 //每页记录数。Integer.valueOf(req.getParameter("pageNum"));
		 int pageSize=3;
		 
		 
		 
		 //service
		 Servlet  bs=new Servlet();	
		 Feng page=bs.find(pageNum, pageSize);
		 
		 
		 
		 System.out.println(page.getStartIndex());
		 System.out.println(page.getTotalRecord());
		 req.getSession().setAttribute("pagebean",page);
		 req.getRequestDispatcher("/NewFile.jsp").forward(req, resp);
	}
   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
   @Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}
}
