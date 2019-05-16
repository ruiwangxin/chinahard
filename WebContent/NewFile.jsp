<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<style type="text/css">
		.info
		{
			/* width: 800px;
			height: 600px; */
			background: #C1E2B3;
			margin: 0 auto;
			box-shadow:0 0 20px  #999999;		 
		}
	</style>
</head>
<body>

<div class="info">
<c:forTokens items="${querUserID}" delims="," var="name">
  <c:out value="${name}"/><p>
</c:forTokens>
</div>
</body>
</html>