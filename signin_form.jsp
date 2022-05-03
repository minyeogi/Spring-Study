<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/JSPStudy/Study/forward/loginController.jsp"method="get">
		<div>
			<label> ID </label>
			<input type="text"name="username"value="aaaa">
		</div>
		<div>
		<label> password </label>
			<input type="password"name="password"value="bbbb">
		</div>
		<input type="hidden"name="login-flag"value="0">
		<button type="submit">login</button>
	</form>
	
</body>
</html>
