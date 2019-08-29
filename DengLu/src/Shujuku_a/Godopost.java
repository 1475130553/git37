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

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.doget.Shoop;
import com.fengye.FengYe;

import Shujuku.dingyi;

public class Godopost extends HttpServlet{
@Override
public void init(ServletConfig config) throws ServletException {
	// TODO Auto-generated method stub
	super.init(config);
}
     @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
    			throws ServletException, IOException {
    	 req.setCharacterEncoding("utf-8");
     	 resp.setCharacterEncoding("utf-8");
    	 resp.setContentType("text/html;charset=utf-8");
    	 FengYe chaxun=new FengYe();
 		//购物车的每条记录，封装都bookitem.
 		HttpSession session=req.getSession();
 		@SuppressWarnings("unchecked")
 		List<Shoop> bookItemlist = (List<Shoop>) session.getAttribute("bookItemlist");
 		JSONArray jsonArray=new JSONArray();
 		double sum = 0;
        if(bookItemlist!=null){
 		for (int i=0;i<bookItemlist.size();i++) {
 			dingyi  book=bookItemlist.get(i).getFushi();
 			JSONObject jsonObject=new JSONObject();
 			jsonObject.put("id", book.getId());
 			jsonObject.put("xinghao", book.getXinghao());
 			jsonObject.put("jiage", book.getJiage());
 			jsonObject.put("shuliang", book.getShuliang());
 			jsonArray.add(jsonObject);
 			System.out.println(book.getTupian());
 		  }
        }
 		String array = JSONArray.toJSONString(jsonArray);
 		PrintWriter out = resp.getWriter();
 		out.write(array);
 		out.flush();
 		out.close();
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
