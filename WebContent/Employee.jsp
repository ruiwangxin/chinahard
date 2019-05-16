<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>员工信息</title>
		<link rel="stylesheet" href="/css/bootstrap.css" />
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
		
		<style>
			.container{
				width: 100%;
				height: 100%;
				padding: 0;
				background-image:url(img/3309241_1269458030432_1024x1024soft.jpg);
				
			}
			.header{
				background-color: black;
				height: 70px;
				width: 100%;			
				
                }
            .list
            {
            	background-color:#262626;
            	width: 100%;
            	height: 60px;
            	padding-top: 13px;
            	padding-left: 30px;                          	
            }
            
            .content
            {
            	
            	width: 70%;
            	height: 800px;
            	margin: 0 auto;
            	background: #DFF0D8;
            	
            }
            a:link
            {
            	text-decoration: none;
            }         
           
            li
            {            	
            	font-size: 28px;
            	list-style: none;            	
            	float: right;
            	display: inline-block;
            	padding-right: 30px;	
            	
            }          
            .info
            {
            	position: absolute;
            	top: 300px;
            	height: 320px;
            	width: 250px;
            	left: 150px;           	
            }
         .img
            {
            	width: 150px;
            	height: 150px;
            	background-color: #F7ECB5;
            	margin: 0 auto;
            	border-radius: 80px 0 80px 0;
            	border: 2px solid white;
            	text-align: center;
            	padding-top: 40px;
            }
            .info:hover .img
            {
            	border-radius: 150px;
            	border: 2px solid red;
            	transition: all 1s;
            }        
            .info:hover .text
            {
            	opacity: 1;
            	transform: translateY(0px);
            	transition: all 1s;
            } 
         .text
            {
            	width: 250px;
            	height: 300px;
            	background-color: #D6E9C6;
            	transform: translateY(-100px);      
            	opacity: 0;
            	box-shadow: 0 0 20px #5E5E5E;     	
            }
            
		</style>
</head>
<body>
<div class="container">
			   <div class="header" align="center">	
			   	    <p style="color: white; font-size: 30px;">中  硬  国  际</p>			   
			   </div>	
			    
			   <%--  <div class="list" >
			    	<ul>
					  <li><a class="center" href="announcement.do" style="color: white;"  target="mainFrame">公告信息</a></li>
					  <c:forEach items="${userList}" var="user">
					  <li><a class="center" href="personInfo.do?uid=${user.uid}" style="color: white;" target="mainFrame">个人信息</a></li>  
					  </c:forEach>
					  
					  
					</ul>
				</div> --%>
				
				<div class="info">
					   <div class="img">
						<h2 style="color: red;">公告</h2>
					    </div>
					<div class="text">
						<c:forEach items="${queryannouncement}" var="ann">
							   <table>
							   <tr>
									<td>${ann.announcement}</td>
								</tr>
							   </table>
						</c:forEach>
					</div>
					
				</div>
				<div>
				
				   <div class="list" >
			    	  <span style="color: white; font-size: 25px;">个人信息</span>
				   </div>
				</div>
				<div class="content">
<!-- 					<iframe name="mainFrame" style="width: 100%; height: 100%;" frameborder="0"></iframe>
 -->					
 

		               <c:forTokens items="${querUserID}" delims="," var="name">		                
                             <c:out value="${name}"/><p>
                       </c:forTokens>
				
			</div>
			
		</div>	
</body>
</html>