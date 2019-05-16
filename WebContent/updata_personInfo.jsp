<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
</head>
<body>

<form class="form-horizontal" role="form" action="updata">
<c:forEach items="${User}" var="user">
<input type="hidden" name="id" value="${user.id}" >
	<div class="form-group" >
		<label for="firstname" class="col-sm-2 control-label">名字</label>
		<div class="col-sm-10">
			<input type="text" name="userName" value="${user.userName}" class="form-control" id="firstname" placeholder="请输入姓名">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">编号</label>
		<div class="col-sm-10">
			<input type="text" name="cid" value="${user.cid}"  class="form-control" id="firstname" placeholder="请输入编号">
		</div>
	</div>

	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">年龄</label>
		<div class="col-sm-10">
		
			<input type="text" name="age" value="${user.age}" class="form-control" id="lastname" placeholder="请输入年龄">
			
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
			<label>用户性别：</label>
							<select class="form-control" name="sex" >
								<option>保密</option>
								<option>男</option>
								<option>女</option>
							</select>
			</div>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">保存修改</button>
		</div>
	</div>
	</c:forEach>
</form>

</body>
</html>