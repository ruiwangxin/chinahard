<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		body
		{
			background-color: #F5E79E;
		}
	</style>
</head>
<body>

<div style="margin: 200px 600px;" class="info">
	<form class="bs-example bs-example-form" role="form" action="saveann">
		<div class="input-group input-group-lg" >
			<span class="input-group-addon">信息：</span>
			<textarea class="form-control" name="announcement"  rows="3" style="height: 300px; width: 350px;"></textarea>
		</div>
		<br />
		<input  type="submit"  class="btn btn-success" value="发布"  style="width: 440px; height: 50px; font-size: 20px;"/>
	</form>
</div>
</body>
</html>