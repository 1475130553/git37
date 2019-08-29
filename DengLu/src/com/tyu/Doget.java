package com.tyu;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doget.Bianliang;
import com.select.Asd;
public class Doget extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	super.init(config);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("utf-8");
    	//获取jsp中的name
    	String a=req.getParameter("username");
		String b=req.getParameter("password");
		
		Bianliang bian=new Bianliang();
    	bian.setUsername(a);
    	bian.setMima(b);
    	
    	Asd q=new Asd();
    	q.insert(bian);
    	
    	
    	resp.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html; charset=utf-8");
    	req.getRequestDispatcher("/jiaoben3447").forward(req, resp);
    	
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
