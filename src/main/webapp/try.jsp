<%@page import="com.project.webPageMaker.Models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet" href="style.css">

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


	<div id="DataForm" style="display: none;">

		<div class="container">
			<div class="picture-container">
				<div class="picture">
					<img
						src="https://lh3.googleusercontent.com/LfmMVU71g-HKXTCP_QWlDOemmWg4Dn1rJjxeEsZKMNaQprgunDTtEuzmcwUBgupKQVTuP0vczT9bH32ywaF7h68mF-osUSBAeM6MxyhvJhG6HKZMTYjgEv3WkWCfLB7czfODidNQPdja99HMb4qhCY1uFS8X0OQOVGeuhdHy8ln7eyr-6MnkCcy64wl6S_S6ep9j7aJIIopZ9wxk7Iqm-gFjmBtg6KJVkBD0IA6BnS-XlIVpbqL5LYi62elCrbDgiaD6Oe8uluucbYeL1i9kgr4c1b_NBSNe6zFwj7vrju4Zdbax-GPHmiuirf2h86eKdRl7A5h8PXGrCDNIYMID-J7_KuHKqaM-I7W5yI00QDpG9x5q5xOQMgCy1bbu3St1paqt9KHrvNS_SCx-QJgBTOIWW6T0DHVlvV_9YF5UZpN7aV5a79xvN1Gdrc7spvSs82v6gta8AJHCgzNSWQw5QUR8EN_-cTPF6S-vifLa2KtRdRAV7q-CQvhMrbBCaEYY73bQcPZFd9XE7HIbHXwXYA=s200-no"
						class="picture-src" id="wizardPicturePreview" title=""> <input
						type="file" id="wizard-picture" class="">
				</div>
				<h6 class="">Choose Picture</h6>
               
			</div>
		</div>
	</div>
	<form>
  <label for="title">Title</label><br>
  <input type="text" id="title" name="title"><br>
  <label for="note">About</label><br>
  <input type="text" id="note" name="note">
    <h1>
       Enter all your links
    </h1>
    <div id="innerdiv"></div>
    <button id="mybutton">
        click me
    </button>
</form>


	<script type="text/javascript" src = "jvascript.js"></script>

</body>
</html>