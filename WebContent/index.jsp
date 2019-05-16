<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<style type="text/css">
			.container{
				width: 100%;
				height: 100%;
				padding: 0px;

			}
			.header{
				background-color:#7CC5EC ;
				height: 120px;
				width: 100%;
			}
			.logo{
				display: inline;
			}
			.userDiv{
				float: right;
				padding-top: 10px;
				padding-right: 20px;
			}
			userDiv  span{
				color: white;
				font-size: 20px;
			}
			.slider{
				position: fixed;
				top: 122px;
				left: 0px;
				bottom: 52px;
				background-color:#DDDDDD ;
				width: 150px;
				
			}
			.slider ul li{
				list-style-type: none;
			}
			.slider ul li a{
				text-decoration: none;
				color: black;
				font-size: 1em;
				padding-left:40px;
			}
			.slider ul li a:hover{
				color: white;
				background-color:#7CC5EC ;
			}
			
			.main{
				position: fixed;
				top: 122px;
				bottom: 52px;
				right: 0px;
				left: 150px;
			}
			.footer{
				position: fixed;
				bottom: 0px;
				background-color: #7CC5EC;
				width: 100%;
				height: 50px;
				text-align: center;
				color: white;
				font-size: 22px;
			}
			</style>
			<script  type="text/javascript">
				$(function(){
					$(".menu").click(function(){
						$(".menu").each(function(){
							$(this).next().slideUp();
						})
						$(this).next().slideToggle();
					});
				});		
			</script>
</head>
<body>
	<div class="container">
			<!--这是顶部的盒子-->
			<div class="header">
				<img src="img/logo.png" class="logo"/>
				<div  class="userDiv">
				
	        <c:forEach items="${userList}" var="user">
				<span style="color: white;font-size: 20px;">欢迎你：${user.userName}</span>
		    </c:forEach>
				<a href="Login.jsp" style="color: black;font-size: 20px;">注销</a>
				
				</div>
			</div>
			<!--中左的盒子-->
			<div class="slider">
				<span>
					系统菜单
				</span>
				<!--无序标签-->
				<ul class="nav">
					<li class="menu"><a href="javascript:void(0);">人员管理</a></li>
					<li  class="submunu" style="display: none;">
						<ul>
							<li><a href="user_list?start=0" target="mainFrame">用户管理</a></li>
							<li><a href="leave.jsp" target="mainFrame">角色管理</a></li>		
						</ul>
					</li>
					
					
					<li class="menu"><a href="javascript:void(0);">部门管理</a></li>
					<li class="submunu" style="display: none;">
						<ul>
							<li><a href="user_list?start=0" target="mainFrame">部门管理</a></li>
							<li><a href="create_dept.jsp" target="mainFrame">部门创建</a></li>
						</ul>
					</li>
					
					
					
					<li class="menu"><a href="javascript:void(0);">系统管理</a></li>
					<li  class="submunu" style="display: none;">
						<ul>
							
							<li><a href="notice.jsp" target="mainFrame">公告管理</a></li>
							<li><a href="create_admin.jsp" target="mainFrame">管理员创建</a></li>
						</ul>
					</li>
					
				</ul>
			</div>
			
			<!--中右部分的盒子-->
			<div class="main">
				<iframe name="mainFrame" src="" width="100%" height="100%" frameborder="0"></iframe>
			</div>
			<!--这个是底部的盒子-->
			<div  class="footer">
				<span>©中硬国际</span>
			</div>
		</div>
		
</body>
</html>