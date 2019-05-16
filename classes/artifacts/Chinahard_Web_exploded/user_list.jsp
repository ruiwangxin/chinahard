<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		
		<style type="text/css">
			.search{
				background-color:  #C7DDEF;
				padding: 10px;
			}
			.search a{
				margin-left: 5px;
			}
		</style>
		
		<script src="js/jquery.min.js"></script>
		<script>
			//等待dom元素加载完成后初始化
			$(function(){
				//根据选择器去获取相应的元素对象
				$("#delete").click(function(){
					//获取复选框的选中情况
//					var cks=new Array();
//					$(".checkbox").each(function(){
//						if(this.checked)
//							cks.push(this);
//					});
					//直接获取已经选中的复选框
					var cks=$("input[class=checkbox]:checked")

					if(cks.length==0){
						alert("请选择要删除的用户");
						return;
					}
				

					var params="";
					//console.log($(cks[0]).parent().parent().find("td")[5].innerHTML);
     				$.each(cks,function(index,item){
     					var idtr=$(this).parent().parent().find("td")[5];
     					var id=idtr.innerHTML;
     					if(index==0){
     						params+="?ids="+id;
     					}else{
     						params+="&ids="+id;
     					}
     				})
					
					var url="deleteUser"+params;
					
					location.href=url;
					
					/* ids.push($(cks[0]).parent().parent().find("td")[5].innerHTML)
			    
					$.each(ids,function()
							{
						 location.href="deleteUser.do?ids="+this
							})
				 */	
					
					
							
				});
				
				//全选事件
				$("#all").click(function(){
					//获取全选按钮的选中情况
					var allChecked=this.checked;
//					alert(allChecked)
					//$(".checkbox")获取所有class的值为checkbox的元素
					//循环
					$(".checkbox").each(function(){
						//将全选按钮的选中情况设置给每一个class的值为checkbox的元素的checked属性
						this.checked=allChecked;
					});
				});
				
				
//				$("#delete").on("click",function(){
//					alert("点击了我111")
//				})
			});
		
		</script>
</head>
<body>
	<!--第一层盒子-->
		<div>
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#">用户管理</a>
					
				</li>
			</ul>
		</div>
		<!--第二层盒子-->
		
		<form name="form1" action="user_one">
		<div>
			<div class="search form-inline">
				<div class="form-group form-inline">
					<label>用户名</label>
					<input type="text"  class="form-control" name="userName">
				</div>
				<!-- <div class="form-group form-inline">
					<label>用户名</label>
					<input type="text" class="form-control" />
				</div> -->
				<a href="javascript:document.form1.submit();" class="btn btn-danger">
					搜索
				</a>
				<a href="user_add.jsp?cid=1" class="btn btn-success">
					添加用户
				</a>

				<a href="javascript:void(0)" class="btn btn-success" id="delete">
					删除用户
				</a>
			 </div>
			</form>
			<!--表格-->
			
			
			<div>
				<table  class="table table-hover">
					<tr>
						<th>
							<input type="checkbox" id="all" />
						</th>
						<th>用户编号</th>
						<th>用户姓名</th>
						<th>用户性别</th>
						<th>用户年龄</th>
						<th>用户账号</th>
						<th>用户密码</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${userList}" var="user">
					<tr>
						<td>
							<input type="checkbox" class="checkbox" id="user_uid" name="user_uid" value="${user.uid}"/>
						</td>
						<td>${user.cid}</td>
						<td>${user.userName}</td>
						<td>${user.age}</td>
						<td>${user.sex}</td>
				
												
						<td>${user.uid}</td>
						<td>${user.PASSWORD}</td>
						
				
						
						<td>
							<a href="updata_personInfo?cid=${user.cid}">修改</a>
						</td>						
					</tr>
					</c:forEach>	
					
				</table>
			</div>
			
			<!--最后一个盒子-->
			<div>
				<ul class="nav nav-pills">
					<li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
						<a href="user_list?start=0${page.param}">首页</a>
					</li>
					<li>
						<a href="user_list?start=${page.start-page.count}${page.param}">上一页</a>
						
					</li>
<c:forEach  begin="0" end="${page.totalPage-1}" varStatus="status">
             <c:if test="${status.count*page.count-page.start<=20 && status.count*page.count-page.start>=-10}">
					<li <c:if test="${status.index*page.count==page.start}">
						class="disabled"
					</c:if>>
						<%-- status.index = 0,1,2,3,4,5      --%>
						<a href="user_list?start=${status.index*page.count}${page.param}"
							<c:if test="${status.index*page.count==page.start}">
								class="current"
							</c:if>>${status.count}
						</a>
					</li> 
       		</c:if>
</c:forEach>
					<!-- <li>
						<a href="">2</a>
					</li><li>
						<a href="">3</a>
					</li><li>
						<a href="">4</a>
					</li><li>
						<a href="">5</a>
					</li> -->
					<li <c:if test="${!page.hasNext}">class="disabled"</c:if>
					>
						<a href="user_list?start=${page.start+page.count}${page.param}">下一页</a>
					</li>
					<li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
						<a href="user_list?start=${page.last}${page.param}">尾页</a>
					</li>

				</ul>
			</div>
		</div>

</body>
</html>