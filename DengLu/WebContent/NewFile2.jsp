<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$.ajax({ 
			type : "post", //提交方式
			url : "/DengLu/che",
			dataType : "json", //返回的数据类型
			success : function(result) {
				/* var result=eval('('+result+')'); */
				console.log(result.id);
				//保留表头,移除tr>0的标签，也就是保留列名，移除每一行。
				 $("#userTable tr:gt(0)").remove();
				var viewData = "";
				//统计总价格变量
				var sum=0;                                      
				//遍历数据
				//循环返回Book对象，index代表下标，node代表每一个对象。
				$.each(result, function(index, node){ 
					// 将每一个结果,拼接成tr,td, 循环插入到table表中*/
					viewData += "<tr>";
					viewData += "<td>" + node.id + "</td>";
					viewData += "<td>" + node.xinghao + "</td>";
					viewData += "<td><p id='price"+node.id+"'>" + node.jiage + "</p></td>";
					viewData += "<td><button id='"+node.id+"'>+</button><input type='text' id='num"+node.id+"'  value='"+node.shuliang+"'  size=3><button  id='"+node.id+"'>-</button></td>";
					viewData +="<td><p id='total"+node.id+"'>" + node.jiage*node.shuliang + "</p></td>";
					viewData += "<td><button id='"+node.id+"'>删除</button></td>"; 
					viewData += "</tr>";
					var everyOneSum=node.jiage*node.shuliang;
					//计算总价格
					sum+=everyOneSum; 
					
				//});
				//$("#data").html(viewData);
				//获取ID为money，将总价打印在页面中。
				$("#money").html(sum);
				//给table表格绑定tr数据。
				$("#userTable").append(viewData);
			    changenum();//绑定改变数量函数
			    
			    
			});
	  
	      }
	
		}); 
		 


});

	//绑定按钮改变数量函数
	function changenum(){
	
	$("button").click(function(){ 
	var n=$(this).attr("id");//获得名字为ID的属性值。
	var price=$("#price"+n).text();  //获取ID为price， p标签中的值。
	//alert(price);
	var sumMoney=$("#money").text();
	
	//判断点击是+，-按钮
	if($(this).html()=="+"){
		$("#num"+n).val(parseInt($("#num"+n).val())+1);
		var sunMoney1=parseFloat(sumMoney)+parseFloat(price);
		var totalPrice=parseFloat(price)*parseInt($("#num"+n).val());
		//alert(totalPrice);
		$("#money").html(sunMoney1);
		$("#total"+n).html(totalPrice);
		changestate(n,$("#num"+n).val());
	}else if($(this).html()=="-"){
		if(parseInt($("#num"+n).val())>1){
			$("#num"+n).val(parseInt($("#num"+n).val())-1);
			var sunMoney1=parseFloat(sumMoney)-parseFloat(price); 
			var totalPrice=parseFloat(price)*parseInt($("#num"+n).val());
			//alert(totalPrice);
			$("#money").html(sunMoney1);
			$("#total"+n).html(totalPrice);
		}
		//改变购物车商品信息
		changestate(n,$("#num"+n).val());
	}else{
	 $(this).parent().parent().remove();//删除本行
		delgood(n);//调用删除购物车商品函数
		$("#money").html(sunMoney1);
		
	}
	});
	
	}
	
	//删除购物车商品信息
	function delgood(gid){
		$.ajax({
			type : "post", //提交方式
			url : "/DengLu/zxv", //提交地址
			data:{"id":gid},
			//dataType : "json", //返回的数据类型
			success : function(result) {				
				//统计总价格变量
				var sum=0;
				alert(result);
				//遍历数据
				//循环返回Book对象，index代表下标，node代表每一个对象。
				$.each(result, function(index, node){
					/* 将每一个结果,拼接成tr,td, 循环插入到table表中*/
					var everyOneSum=node.jiage*node.shuliang;
					//计算总价格
					sum-=everyOneSum;
					
				});
				
				
			//显示总金额
			if(result.msg=="success"){
				$("#money").html(sum+"元");
					
				}
			
			}
			
	
			}
		);
	
	}
	
	
	//改变商品商量
	function changestate(gid,num){
		$.ajax({
			type : "post", //提交方式
			url : "/DengLu/ABC", //提交地址
			data: {"num": num, "id":gid},
			//dataType : "json", //返回的数据类型
			success : function(result) {
			//显示总金额
			if(result.msg=="success"){
				$("#money").html(result.sum+"元");
			
			}
			
			}
		});
	
	}

</script>

</head>

	<body>
		<table width="800px" id="userTable">
			<tr>
				<td>编号</td>
				<td>名称</td>
				<td>价格</td>
			    <td>修改数量</td>
			   <td>总价</td>
				<td>删除</td>
			</tr>
		
		</table>
		<p id="data"></p>
		
		总价钱:<p id="money"></p>
		<br><br><br>
		<a href="javascript:history.back()">继续购买</a>