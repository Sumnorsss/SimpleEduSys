<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language = "javascript" src = "code.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教师界面</title>
</head>
<body>
<jsp:include page = "Login.jsp"/>
<%
	String userName = request.getParameter("username");
	String pass = request.getParameter("pass");
	String valueType = request.getParameter("logType");
	
	if(valueType.equals("")){
	
	valueType = "student";
 	}
	
	if(userName.equals("ZhangSan") 
			&& pass.equals("12345")
			&&valueType.equals("teacher")){
%>	
	 <font color="blue">3秒后进入教师界面</font>
<%
	response.setHeader("Refresh", "3;url=Teacher.jsp");

	}else if(userName.equals("ZhangSan") 
			&& pass.equals("12345")
			&&valueType.equals("student")){	
%>
		<script>alert("身份验证错误");</script>
		
<% 	}
 	else if(userName.equals("Jack") 
			&& pass.equals("12345")
			&&valueType.equals("student")){
%>
		<font color="blue">3秒后进入学生界面</font>
<%		response.setHeader("Refresh", "3;url=Student.jsp");
	}else if(userName.equals("Jack")
			&& pass.equals("12345")
			&&valueType.equals("teacher")){
%>
		out.print("身份验证错误");
<%	}
 	else if(userName.length()==0||pass.length()==0){	
%>
		<script>alert("用户名或密码不能为空");</script>
<%	}

	else{
%>
		<script>alert("用户名或者密码错误");</script>
	

	<font color=blue>正在返回首页</font>
	<%response.setHeader("Refresh", "1;Login.jsp"); %>
<% 	}%>

	
	

</body>
</html>