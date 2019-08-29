package Shujuku_a;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSONObject;
import com.doget.Shoop;
import com.fengye.FengYeb;

import Shujuku.dingyi;

public class UpdateNumAjaxServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//从session中获取值。
		FengYeb shopcart=new FengYeb();
		List<dingyi> booklist=shopcart.getGoods();
		String num = request.getParameter("num");
		String bookid = request.getParameter("id");
		int book_id=Integer.parseInt(bookid);
		dingyi book=new dingyi();
		Shoop  bookitem=new Shoop();
		List<Shoop>  listbookitem=new ArrayList<>();
		for (int i = 0; i < booklist.size(); i++) {
			  book=booklist.get(i);   
			  bookitem.setFushi(book);
			  listbookitem.add(bookitem);
			if (bookitem.getFushi().getId()==book_id) {
				bookitem.setNum(Integer.parseInt(num));
				break;
			}
		}	
		double sum=0;
		for (Shoop goodItem :listbookitem) {
			sum+=goodItem.getFushi().getJiage()*goodItem.getNum();
		}
		  request.getSession().setAttribute("booklist", booklist);
		  PrintWriter out=response.getWriter();
		  JSONObject obj=new JSONObject();
		  obj.put("msg", "success");
		  obj.put("sum", sum);
		  out.print(obj);
		  out.flush();
		  out.close();
	
	}

}

