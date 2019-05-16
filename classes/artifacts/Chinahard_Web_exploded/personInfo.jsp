<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
			<style>
			.container
			{
				width: 100%;
				height: 1000px;
				background:url(img/bg1.jpg);
			}
			
			.center
			{
				width: 500px;
				height: 650px;				
				margin: 100px auto;
				color: white;
			}
			.tit
			{
				width: 500px;
				height: 80px;
				
				text-align: center;
				color: white;
			}
			.info
			{
				width: 500px;
				height: 600px;
				
			    border-radius: 5px;
			    box-shadow:0 0 20px  #999999;
			    background-image: url(img/touming.png);
			}
		</style>
</head>
<body>
<!-- <form class="form-horizontal" role="form" action="employeeInfo.do">
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">名字</label>
		<div class="col-sm-10">
			<input type="text" name="userName" class="form-control" id="firstname" placeholder="请输入姓名">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">编号</label>
		<div class="col-sm-10">
			<input type="text" name="cid" class="form-control" id="firstname" placeholder="请输入编号">
		</div>
	</div>

	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">年龄</label>
		<div class="col-sm-10">
			<input type="text" name="age" class="form-control" id="lastname" placeholder="请输入年龄">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
			<label>用户性别：</label>
							<select class="form-control" name="sex">
								<option>保密</option>
								<option>男</option>
								<option>女</option>
							</select>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">保存</button>
		</div>
	</div>
</form> -->


<div class="container">
			<div class="center">
				<div class="tit">
					<h1>注 册 信 息</h1>
				</div>
			    <div class="info">
			    	   <br /><br />
			    	   
			    	   
<form class="form-horizontal" role="form" action="employeeInfo">
				       	<div class="form-group">
		<label  class="col-sm-2 control-label">编号</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="cid" id="firstname"  placeholder="请输入编号" style="width: 380px;">
		</div>
	</div>
				       	
	<div class="form-group">
		<label  class="col-sm-2 control-label">姓名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="userName" id="firstname"  placeholder="请输入姓名" style="width: 380px;">
		</div>
	</div>
	
	<div class="form-group">
		<label  class="col-sm-2 control-label">年龄</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="age" id="lastname"  placeholder="请输入年龄" style="width: 380px;">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
				
				<label>
					<select class="form-control" name="sex">
			           <option>男</option>
			           <option>女</option>
			
		            </select>
				</label>
			</div>
		</div>
	</div>
	
	
	
	
	
	<br />
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-info" style="width: 200px;">保存</button>
		</div>
	</div>
</form>
			    </div>
			</div>
		</div>

</body>
</html>