<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.*" %>
    <%@page import="Shujuku.dingyi" %>
     <%@page import="com.fengye.Feng" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

 function tocar(id){
		alert(id);
		$.ajax({
	    type:'get',
	    
		url: "/DengLu/fen?iD="+id,
		success : function(result) {
			alert(result);
			window.location.href="NewFile2.jsp";
		},
		error : function() {
			alert("发生了错误");

		}

	}); 
	} 

	
	


 /*  List<dingyi> list=(List<dingyi>)session.getAttribute("pagebean");
 request.setAttribute("stulist", list);  */
/*  for(int i=0;i<list.size();i++){
	 out.print(list.get(i).getId());
	 out.print(list.get(i).getJiage());
	 out.print(list.get(i).getTupian());
	 out.print(list.get(i).getXinghao());
 } */

location.href="http://localhost:8080/DengLu/moban3373/NewFile1.jsp"; 
 
 </script>
</head>
<body>




<c:forEach  items="${pagebean.list}"  var="q">
<table>
  <tr> 
  <td>${q.tupian}</td>
   <td>${q.jiage}</td>
   <td>${q.xinghao}</td>
   <td>${q.id}</td>
    <td>
	<input type="button" value="加入购物车"  onclick="javascript:tocar(${q.id})"/>
						
					</td>  
</tr>
  
</c:forEach>

</table>
 

				<p>共有${pagebean.totalRecord}条记录, ${pagebean.totalpage}页  , 当前页：${pagebean.pageNum}</p>
		
<div class="page-normal">
	<span class="page-prev">&lt;</span>
	<span class="page-current">
	<!-- 如果为当前页，就没有上一页 -->
	
	   <a href="${pageContext.request.contextPath}/fenye?pageNum=1">首页</a>
	        
	         <c:if test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      
	      <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	      

	            
	            
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	    <!-- 如果当前页不是首页也不是最后一页，则有上一页和下一页 -->
	    <c:if  test="${sessionScope.pagebean.pageNum>1 && sessionScope.pagebean.pageNum<sessionScope.pagebean.totalpage}">
	       <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	       <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1"  var="i">
	         <c:if test="${sessionScope.pagebean.pageNum==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	           <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	          <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	    </c:if>
	    
	    
	    
	    <!--如果是最后一页，则只有上一页。没有下一页  -->
	   
	     
	   
	    <c:if  test="${sessionScope.pagebean.pageNum == sessionScope.pagebean.totalpage}">
	      <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	      <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1" var="i">
	         <c:if  test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	    </c:if>    
	    
	    <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
	     
	</span>
	</div>
 
</body>
</html>