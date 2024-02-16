<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form id="login" action="handleLogin" method="POST">
		<h1>Login</h1>
		<input type="email" name="email" placeholder="email" required>
		<input type="password" name="password" placeholder="Password" required>
		<button type="submit">Login</button>
		<a href="#" class="forgot-password">Forgot password?</a>
	</form>

</body>
</html>