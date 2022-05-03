<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	String username = "MH";
	String password = "1234";
	
	int signin(String username, String password){
		if(this.username.equals(username)){
			if(this.password.equals(password)){
				//login success
				return 2;
			}else{
				//password fail
				return 1;
			}
		}else {
			return 0;
		//id fail
		}
	}	
%>
<%
	String _username = request.getParameter("username");
	String _password = request.getParameter("password");
	String loginFlag = request.getParameter("login-flag");
	
	System.out.println(loginFlag);

	int flag = signin(_username, _password);
	
	if(flag == 0){
%>
	<jsp:forward page= "username_error.jsp"></jsp:forward>
<%
	}else if(flag == 1){
%>
	<jsp:forward page= "password_error.jsp"></jsp:forward>
<%		
	}else if(flag == 2){
%>
	<jsp:forward page= "signin_success.jsp"></jsp:forward>
<%		
	}
%>