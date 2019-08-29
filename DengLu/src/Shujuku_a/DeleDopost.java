package Shujuku_a;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONObject;
import com.doget.Shoop;

public class DeleDopost extends HttpServlet{
   @Override
public void init(ServletConfig config) throws ServletException {
	// TODO Auto-generated method stub
	super.init(config);
}
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   req.setCharacterEncoding("utf-8");
   	   resp.setCharacterEncoding("utf-8");
   	   resp.setContentType("text/http; charest=utf-8");
	   List<Shoop> booklist = (List) req.getSession().getAttribute("booklist");
		String Id = req.getParameter("id");
		HttpSession  session=req.getSession();
		session.setAttribute("list", booklist);
		int bookid=Integer.parseInt(Id);
	    for(int i=0;i<booklist.size();i++){  
           if(booklist.get(i).getFushi().getId()==bookid){  
        	   booklist.remove(i);  
           	break;
          }  
       } 
	    double sum=0;
		for(Shoop shoop : booklist){
			sum+=shoop.getFushi().getJiage()*shoop.getNum();
		}
		System.out.println(sum);
		  PrintWriter out=resp.getWriter();
		  JSONObject obj=new JSONObject();
		  //结果字符串发送给客户端
		  obj.put("msg", "success");
		  obj.put("sum", sum);
		  out.print(obj);
		  out.flush();
		  out.close();
	}
   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
   @Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}
}
