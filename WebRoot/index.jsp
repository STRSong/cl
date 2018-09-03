<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--     <a id="qs" href="/cl-final/queryScore.jsp">查成绩</button>
    <a id="ckc" href="/cl-final/kb">查课表</button> -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
  		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>长大一条龙</title>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="css/admin.css"/>
	</head>
	<body>
		<div class="main-layout" id='main-layout'>
			<!--侧边栏-->
			<div class="main-layout-side">
				<div class="m-logo">
				</div>
				<ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
				  <li class="layui-nav-item layui-nav-itemed">
				    <a href="javascript:;"><i class="iconfont">&#xe607;</i>长大助手</a>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;" data-url="/cl-final/queryScore.jsp" data-id='1' data-text="查成绩"><span class="l-line"></span>查成绩</a></dd>	
				      <dd><a href="javascript:;" data-url="/cl-final/kb" data-id='2' data-text="查课表"><span class="l-line"></span>查课表</a></dd>				   
				    </dl>			   
				  </li>
				  <li class="layui-nav-item layui-nav-itemed">
				    <a href="javascript:;"><i class="iconfont">&#xe607;</i>生活圈</a>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;" data-url="" data-id='1' data-text="快递代领"><span class="l-line"></span>快递代领</a></dd>	
				      <dd><a href="javascript:;" data-url="" data-id='2' data-text="失物招领"><span class="l-line"></span>失物招领</a></dd>				   
				    </dl>			   
				  </li>
				  <li class="layui-nav-item layui-nav-itemed">
				    <a href="javascript:;"><i class="iconfont">&#xe607;</i>长大论坛</a>
				    <dl class="layui-nav-child">
				    </dl>			   
				  </li>
				</ul>
			</div>
			<!--右侧内容-->
			<div class="main-layout-container">
				<!--头部-->
				<div class="main-layout-header">
					<div class="menu-btn" id="hideBtn">
						<a href="javascript:;">
							<span class="iconfont">&#xe60e;</span>
						</a>
					</div>
					<ul class="layui-nav" lay-filter="rightNav">
					  <li class="layui-nav-item"><a href="javascript:;" data-url="email.html" data-id='4' data-text="邮件系统"><i class="iconfont">&#xe603;</i></a></li>
					  <li class="layui-nav-item">
					    <a href="javascript:;" data-url="" data-id='5' data-text="个人信息">欢迎你，${stid}</a>
					  </li>
					  <li class="layui-nav-item"><a href="javascript:;">退出</a></li>
					</ul>
				</div>
				<!--主体内容-->
				<div class="main-layout-body">
					<!--tab 切换-->
					<div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
					  <ul class="layui-tab-title">
					    <li class="layui-this welcome">查成绩</li>
					  </ul>
					  <div class="layui-tab-content">
					    <div class="layui-tab-item layui-show" style="background: #f5f5f5;">
					    	<!--1-->
					    	<iframe src="/cl-final/queryScore.jsp" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0" charset="utf-8"></iframe>
					    	<!--1end-->
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!--遮罩-->
			<div class="main-mask">
			</div>
		</div>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
		
	</body>
</html>