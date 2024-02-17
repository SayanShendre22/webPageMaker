<%@page import="com.project.webPageMaker.Models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
User u = (User) session.getAttribute("CurrentUser");

if(u!=null){
	
}else{
	response.sendRedirect("login.jsp");
}

%>

<nav>
<form action="HandleLogout" ><input type="submit" >Logout</form>
</nav>

Home page
</body>
</html>