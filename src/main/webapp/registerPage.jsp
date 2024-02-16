<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>

	Welcome to Register Page
	
	<form action="handleUserReg"  method="post">
	
	<input type="text" name="userName"  placeholder="Enter Your User Name"  >
	<input type="email" name="email" placeholder="Enter Your Email"  >
	<input type="password" name="password" placeholder="Enter Your Password"  >
	
	<button type="submit" >Submit</button>
	
	</form>


</body>
</html>