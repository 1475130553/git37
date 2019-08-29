<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
 	
 	</script>
</head>
<body>

<table  width="500" align="center" border="1">

      <tr>
				<td>书籍名称</td>
				<td>价格</td>
				<td>数量</td>
				<td>操作</td>z
			</tr>
			   <c:forEach items="${zxc}" var="booklist">
				<tr>
					<td>书名: ${booklist.xinghao}</td>
				</tr>
				<tr>
					<td>价格: ${booklist.jiage}元</td>
				</tr>
				
				<tr>
					<td>
						数量: <input id="num" type="number" name="num" min="1" value="1" >本
					</td>
				</tr>
				
				<td>
					<a href="javascript:tocar(${booklist.id})">放入购物车</a>
				</td>
		
			
		       </c:forEach>
</body>
</html>