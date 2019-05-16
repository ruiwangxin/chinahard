<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
		<style type="text/css">
			.info{
				background-color:  #d9edf7;
				padding: 10px;
			}
			.form{
				/*text-align: center;*/
			}
			.form-group{
				margin-left: 50px;
			}
			.form-inline{
				margin-top: 20px;
				margin-bottom: 20px;
				text-align: center;
			}
			
		</style>
</head>
<body>
<div>
			<ul class="nav nav-tabs">
				<li class="active" style="font-family: '微软雅黑'; font-size: 20px; "><a href="#">管理创建</a></li>
			</ul>
		</div>
		
		
		<div>
			<form class="form" name="form1" action="admin">
				<div class="info" style="background-color: #333333;">
					<label style="color: white;">基本信息</label>
				</div>
				<div class="form-inline">
					<div class="form-group form-inline" style="margin-right: 320px;">
						<label>用户编号:</label>
						<input type="text" class="form-control" name="admincid"  />
					</div>			
				</div>
				<div class="form-inline">
					<div class="form-group form-inline">
						<label>用户姓名:</label>
						<input type="text" class="form-control" name="adminName" />
					</div>
					<div class="form-group form-inline">
						<label>用户性别:</label>
						<select class="form-control" style="width: 200px;" name="adminsex" >
							<option>请选择</option>
							<option>男</option>
							<option>女</option>
						</select>
					</div>
					
				</div>
				<div class="form-inline">
					<div class="form-group form-inline">
						<label>用户年龄:</label>
						<input type="text" class="form-control" name="adminage"/>
					</div>
					<div class="form-group form-inline">
						<label>电话:</label>
						<input type="text" class="form-control" name="adminphoto"/>
					</div>			
				</div>
				
				<div class="form-inline">
					<div class="form-group form-inline">
						<label>E-mail:</label>
						<input type="text" class="form-control" name="adminmall"/>
					</div>
					<div class="form-group form-inline">
						<label>住址:</label>
						<input type="text" class="form-control" name="adminaddress" />
					</div>			
				</div>
				
				<div class="form-inline">
					<div class="form-group form-inline">
						<label>用户名:</label>
						<input type="text" class="form-control" name="adminuid"/>
					</div>
					<div class="form-group form-inline">
						<label>密 码:</label>
						<input type="text" class="form-control" name="adminpassword"/>
					</div>			
				</div>
				<br />
				
				<div class="form-inline" style="text-align: center;">
					<a href="create_admin.jsp" class="btn btn-danger">清空</a>
					<a href="javascript:document.form1.submit();" class="btn btn-success">创建</a>
				</div>
			</form>
		</div>
		
</body>
</html>