<%@page import="com.project.webPageMaker.Models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="jquery-3.7.1.min.js"></script>
</head>
<body>

	<%
	User u = (User) session.getAttribute("CurrentUser");

	if (u != null) {

	} else {
		response.sendRedirect("login.jsp");
	}
	%>

	<nav>
		<form action="HandleLogout">
			<input type="submit">Logout
		</form>
	</nav>

	Home page

	<div>

		<h1>Create Your Page</h1>
		<button onclick="togglePageDataForm()" id="StartToggleBtn">Start</button>

	</div>


	<div id="DataForm" style="display: none;" >
	form data
	</div>


	<script type="text/javascript">
		let x = 0;
		function togglePageDataForm() {
			console.log("sayan " + x)
			if (x == 0) {
				document.getElementById("StartToggleBtn").innerHTML = "end";
				document.getElementById("DataForm").style.display = "block";
				x = 1
			} else {
				document.getElementById("StartToggleBtn").innerHTML = "start";
				document.getElementById("DataForm").style.display = "none";
				x = 0

			}

		}
	</script>

</body>
</html>