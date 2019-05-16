<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<style type="text/css">
			.info{
				background-color: #C7DDEF;
				padding: 10px 0px;
				margin-bottom: 20px;
			}
		</style>
		<script>
			$(function(){
				$("#save").click(function(){
					var userAccount=$("#userAccount").val();//document.getElementById("userAccount").value;
					var userPwd=$("#userPwd").val();
					if(userAccount.length==0){
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
					}
				});
				$("#saveuser").click(function(){
					var userName=$("#UserName").val();//document.getElementById("userAccount").value;
					var userAge=$("#userAge").val();
					if(userName.length==0){
						alert("请输入用户姓名")
						return;
					}
					if(userAge.length==0){
						alert("请输入年龄")
						return;
					}
				});
				
			})
			
		</script>
</head>
<body>
      <div>
			<div>
				<ul class="nav nav-tabs">
				<li class="active">
					<a href="#">用户添加</a>
					
				</li>
			</ul>
			</div>
			
			<form name="form2" action="employeeInfo" >
				<div class="info">
					基本信息
				</div>
				<div class="row">
					<div class="col-md-3 col-md-offset-3  col-sm-3 col-sm-offset-3 ">
						<div class="form-group form-inline">	
							<label>用户姓名：</label>
							<input class="form-control" name="userName" id="UserName"/>
						</div>
					</div>
					<div class="col-md-3  col-sm-3 ">
						<div class="form-group form-inline">
							<label>用户性别：</label>
							<select class="form-control" name="sex">
								<option>保密</option>
								<option>男</option>
								<option>女</option>
							</select>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-3 col-md-offset-3  col-sm-3 col-sm-offset-3 ">
						<div class="form-group form-inline">	
							<label>	用户年龄：</label>
							<input class="form-control" name="age" id="userAge"/>
						</div>
					</div>
					
				</div>
				<div class="row">
					<div class="col-md-3 col-md-offset-3  col-sm-3 col-sm-offset-3 ">
						<div class="form-group form-inline">	
							<label>	用户编号：</label>
							<input class="form-control" name="cid"/>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-2   col-md-offset-5  ">
						<a href="user_list.html" class="btn btn-warning">返回</a>
						<a href="javascript:document.form2.submit();"  class="btn btn-success" id="saveuser">保存</a>
					</div>	
				</div>
			</form>
				
			<form name="form1" action="UserInfo" >
				<div class="info">
					账户信息
				</div>
				 <div class="row">
					<div class="col-md-3   col-md-offset-3  col-sm-3 ">
						<div class="form-group form-inline">
							<label>用户账号：</label>
							<input class="form-control" type="text" id="userAccount" name="uid"/>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 ">
						<div class="form-group form-inline">	
							<label>	用户密码：</label>
							<input class="form-control" type="text" id="userPwd" name="PASSWORD" />
						</div>
					</div>
				 </div>
				<div class="row">
					<div class="col-md-2   col-md-offset-5  ">
						<a href="user_list.html" class="btn btn-warning">返回</a>
						<a href="javascript:document.form1.submit();"  class="btn btn-success" id="save">保存</a>
					</div>	
				</div>
				</form>
				
		</div>
</body>
</html>