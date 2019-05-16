<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
		<script  src="js/jquery-3.3.1.min.js"></script>
		<script  src="js/bootstrap.js"></script>
		<style>
			.container{
				width: 100%;
				height: 100%;
				padding: 0;
				background:url(img/3309241_1269458030432_1024x1024soft.jpg);
				perspective: 800px;
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
            	
            	width: 50%;
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
            .text
            {
            	width: 250px;
            	height: 300px;
            	background-color: #D6E9C6;
            	transform: translateY(-100px);      
            	opacity: 0;
            	box-shadow: 0 0 20px #5E5E5E;     	
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
        
		</style>
</head>
	<body>
		<div class="modal fade" id="myModal">
            <div class="modal-dialog modal-lg">
                 <div class="modal-content">
   
        <!-- 模态框头部 -->
             <div class="modal-header">
                  <h4 class="modal-title">请假</h4>
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
             </div>
   
        <!-- 模态框主体 -->
        <div class="modal-body">
            <div class="input-group input-group-lg" >
			<span class="input-group-addon">请假原因：</span>
			<textarea class="form-control" rows="3" >  事例 </textarea>
		</div>
		
        </div>
   
        <!-- 模态框底部 -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-success" data-dismiss="modal">提交</button>
        </div>
   
      </div>
    </div>
  </div>
		<div class="container">
			   <div class="header" align="center">	
			   	    <p style="color: white; font-size: 30px;">中  硬  国  际</p>			   
			   </div>	
			    
			    <div class="list" >
			    	
			    	<span style="color: white; font-size: 25px;">个人信息</span>
			    	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="margin-left: 1600px;"> 请假</button>
				</div>
				
				<div class="info">
					<div class="img">
						<h2 style="color: red;">公告</h2>
					</div>
					<div class="text">
						<h3>公告信息</h3>
					</div>
				</div>
				
				<div class="content">
					<iframe name="mainFrame" style="width: 100%; height: 100%;" frameborder="0"></iframe>
				</div>
		</div>	
				 
</body>
</html>