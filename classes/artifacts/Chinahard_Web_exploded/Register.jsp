<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
		<style>
			#bg
			{
				width:1900px;
				height:1000px;
				padding: 0px;			
				background: url(img/bg.jpg);
				position: absolute;
			}
			#container
			{
				width:380px ;
				height: 480px;
				background: url(img/touming.png);
				margin: 230px auto;
				box-shadow:0 0 20px  #999999;
				border:0px solid;
                border-radius:15px;
			}
			
			.login
			{
				width: 350px;
				height: 450px;
				margin: 250px auto;								                
			}
			.footer
			{
				width: 1900px;
				height: 120px;
				background-color: #000000;
				bottom: 0px;
				position: absolute;
				opacity: 0.8;
				align-content: center;
			}
			
			.title
			{
				width: 310px;
				height: 130px;
				
				border:0px solid;
                border-radius:15px;
			}
			.user
			{
				border:0px solid;
                border-radius:5px;
                padding-left: 50px;
                font-size: 17px;
                font-family:"微软雅黑";
                
			}
			.icon-user
			{
				position: absolute;left: 0；z-index:5;
                background-image: url(img/id1.png); /*引入图片图片*/
                background-repeat: no-repeat; /*设置图片不重复*/
                background-position: 0px 0px; /*图片显示的位置*/
                width:40px; /*设置图片显示的宽*/
                height:40px; /*图片显示的高*/
			}
			.icon-pwd
			{
				position: absolute;left: 0；z-index:5;
                background-image: url(img/closed-lock1.png); /*引入图片图片*/
                background-repeat: no-repeat; /*设置图片不重复*/
                background-position: 0px 0px; /*图片显示的位置*/
                width: 40px; /*设置图片显示的宽*/
                height:40px; /*图片显示的高*/
			}
			
		</style>
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript">
		
		$(function(){
			$("#save").click(function(){
				var userName=$("#UserName").val();//document.getElementById("userAccount").value;
				var userPwd=$("#UserPwd").val();
				var userPwd2=$("#UserPwd2").val();
				if(userName.length==0){
					alert("请输入用户账号")
					return;
				}
				if(userPwd.length==0){
					alert("请输入用户密码")
					return;
				}else if(userPwd.length<=6){
					alert("密码必须大于6位")
					return;
				}else if(userPwd.length>=20){
					alert("密码必须小于20位")
					return;
				}else if(userPwd!=userPwd2){
					alert("密码不一致")
					return;
				}
			});
			
		})
		
		 
		
		</script>
</head>
<body>
<div id="bg">
		  <div id="container">
			 <div class="login"  style="padding: 20px;">
			  
				<div class="title" align="center">
					<strong style="color: #E7E7E7; font-size: 25px;">中硬国际</strong>
					<hr />
				</div>
				
				<form action="/Login">
					<div class="input-group" >
		               	<i class="icon-user"></i>
			            <input class="user" type="text" name="uid" id="UserName" class="form-control" placeholder="用户名" style="width: 310px; height: 40px;" >
	             	</div>
	             	<br />
	             	<div class="input-group" >
		               	<i class="icon-pwd"></i>
			            <input class="user" type="text" class="form-control" placeholder="密码" style="width: 310px; height: 40px;" name="PASSWORD" id="UserPwd" >
	             	</div>
	             	<br />
	             	<div class="input-group" >
		               	<i class="icon-pwd"></i>
			            <input class="user" type="text" class="form-control" placeholder="确认密码" style="width: 310px; height: 40px;" name="PASSWORD2" id="UserPwd2">
	             	</div>
	             	<br />
	             	<div class="input-group">		               	
			            <button type="submit" class="btn btn-warning" style="width:310px; height: 40px;"value="注册" id="save" >注册</button>
	             	</div>
	             	<br />
	             	<div>
	             		<a href="Login.jsp" style="margin-left: 240px; font-size: 15px; color: #000000;" >前往登录</a>
	             	</div>
	             	<br />
	             	
	             	
				</form>
			</div>
		  </div>
			
			<div class="footer" align="center">
				<span>版权所有 © 2000-2017 中硬国际有限公司，保留一切权利。 隐私保护 | 法律声明 | 联系我们 | 网站地图</span>
				<br />
				<br />
				<span>京ICP备05028939号 京公安备11010802014778号</span>
			</div>
		</div>
</body>
</html>