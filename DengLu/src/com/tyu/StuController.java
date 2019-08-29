package com.tyu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doget.Bianliang;
import com.select.Asd;
public class StuController extends HttpServlet {
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		req.setCharacterEncoding("utf-8");
		String names=req.getParameter("username");
		String pass=req.getParameter("password");
//		Bianliang stu=new Bianliang();
//		stu.setUsername(names);
//		stu.setMima(pass);
		//����model����
		Asd stus=new Asd();
		List<Bianliang> list=stus.getall();
		//��ֵ�ŵ�session
//      HttpSession session=req.getSession();
//      session.setAttribute("k", list);
      
      boolean bool=false;
      for(int i=0;i<list.size();i++){
    	  if(list.get(i).getUsername().equals(names)&&list.get(i).getMima().equals(pass)){
    		  bool=true;
    	  }
    	 
      }
      if(bool==true){
     out.print("<script>location.href='/DengLu/NewFile.jsp'</script>");
      }
      
		//ת��
		//req.getRequestDispatcher("/jiaoben3447/index.html").forward(req, resp);
		
		
		
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
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
