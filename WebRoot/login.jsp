<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>长大一条龙登录</title>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css" />
	</head>

	<body>
		<div class="m-login-bg">
			<div class="m-login">
				<h3>长大一条龙登录</h3>
				<div class="m-login-warp">
					<form class="layui-form" action="/cl-final/login" method="POST">
						<div class="layui-form-item">
							<input type="text" name="userName" required lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item">
							<input type="password" name="userPassword" required lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item m-login-btn">
							<div class="layui-inline">
								<button   class="layui-btn layui-btn-normal"  lay-filter="login" >登录</button>
							</div>
							<div class="layui-inline">
								<button type="reset" class="layui-btn layui-btn-primary">取消</button>
							</div>
						</div>
					</form>
				</div>
				<div style="margin-top:100px"><p class="copyright" >Copyright</p></div>
			</div>
		</div>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer;


				//自定义验证规则
				form.verify({
					username: function(value) {
						if(value.length <= 0) {
							return '用户名不能为空';
						}
					},
					password: [/(.+){6,12}$/, '密码必须6到12位'],
					
				});
				
			});
		</script>
	</body>

</html>
