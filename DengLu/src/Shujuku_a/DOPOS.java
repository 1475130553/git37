package Shujuku_a;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doget.Shoop;
import com.fengye.FengYe;

import Shujuku.dingyi;
public class DOPOS extends HttpServlet{
	private static final long serialVersionUID = 1L;
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	super.init(config);
    }@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("utf-8");
    	resp.setCharacterEncoding("utf-8");
    	resp.setContentType("text/http; charest=utf-8");
    	String Id =req.getParameter("iD");
    	System.out.println(Id);
		FengYe dao = new FengYe();
		dingyi qwe=dao.getbookById(Integer.parseInt(Id));
		Shoop asd=new Shoop();
		asd.setFushi(qwe);
		System.out.println(asd.getFushi().getShuliang());
		HttpSession  session=req.getSession();
		List<Shoop> old=(List<Shoop>)session.getAttribute("bookItemlist");
		List<Shoop>  newlist=new ArrayList<Shoop>();
		int flag = 1;
				//之前没有购物项
				if (old == null) {
					newlist.add(asd);
					req.getSession().setAttribute("bookItemlist", newlist);
				} if(old!=null) {
					//有购物车且有相同购物项
					for (int i = 0; i < old.size(); i++) {
						if (old.get(i).getFushi().getId() == Integer.parseInt(Id)) {
							old.get(i).setNum(old.get(i).getNum() + 1);
							flag = 2;
						}
					}
					//有购物车但没有相同购物项
					if(flag==1){
						newlist.add(asd);
						req.getSession().setAttribute("bookItemlist", newlist);
						for (int i = 0; i < old.size(); i++) {
							newlist.add(old.get(i));
							System.out.println("添加了一行新列");
						}
						
					}

				}

		/*if(zxc!=null){
			for(int i=0;i<zxc.size();i++){
				dingyi get=zxc.get(i).getFushi();
				
				if(get.getId()==qwe.getId()){
					zxc.get(i).setNum(zxc.get(i).getNum()+1);
				}else{
					//zxc.get(i).setNum(1);
					newlist.add(zxc.get(i));
				}
		
				 
			}
		}
		 newlist.add(asd);
		 
		*/
		
		//把集合保存在session中
//			session.setAttribute("bookItemlist", newlist);
				PrintWriter out=resp.getWriter();
				out.print("添加购物车成功");
				out.flush();
				out.close();
    }@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    doPost(req, resp);
    }@Override
    public void destroy() {
    	// TODO Auto-generated method stub
    	super.destroy();
    }
}
