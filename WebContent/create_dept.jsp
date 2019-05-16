<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
</head>
<body>
<form class="form-horizontal" role="form" action="deptLogin">
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">部门名称</label>
		<div class="col-sm-10">
			<input type="text" name="deptName" class="form-control" id="firstname" placeholder="请输入姓名">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">部门职位</label>
		<div class="col-sm-10">
			<input type="text" name="position" class="form-control" id="firstname1" placeholder="请输入编号">
		</div>
	</div>

	
	


	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">保存</button>
		</div>
	</div>
</form>
</body>
</html>