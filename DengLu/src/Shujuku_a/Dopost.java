package Shujuku_a;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shujuku_b.ShiXian;

import Shujuku.dingyi;

public class Dopost extends HttpServlet{
     @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	super.init(config);
 }
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("utf-8");
    	ShiXian qaz=new ShiXian();
    	List<dingyi> list=qaz.getall();
    	HttpSession session=req.getSession();
        session.setAttribute("k", list);
         req.getRequestDispatcher("/NewFile.jsp").forward(req, resp);
    	resp.setCharacterEncoding("utf-8");
    	resp.setContentType("text/http; charset=utf-8");
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
