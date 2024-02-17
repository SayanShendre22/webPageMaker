<%@page import="com.project.webPageMaker.Models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
/*Profile Pic Start*/
.picture-container {
	position: relative;
	cursor: pointer;
	text-align: center;
}

.picture {
	width: 106px;
	height: 106px;
	background-color: #999999;
	border: 4px solid #CCCCCC;
	color: #FFFFFF;
	border-radius: 50%;
	margin: 0px auto;
	overflow: hidden;
	transition: all 0.2s;
	-webkit-transition: all 0.2s;
}

.picture:hover {
	border-color: #2ca8ff;
}

.content.ct-wizard-green .picture:hover {
	border-color: #05ae0e;
}

.content.ct-wizard-blue .picture:hover {
	border-color: #3472f7;
}

.content.ct-wizard-orange .picture:hover {
	border-color: #ff9500;
}

.content.ct-wizard-red .picture:hover {
	border-color: #ff3b30;
}

.picture input[type="file"] {
	cursor: pointer;
	display: block;
	height: 100%;
	left: 0;
	opacity: 0 !important;
	position: absolute;
	top: 0;
	width: 100%;
}

.picture-src {
	width: 100%;
}
/*Profile Pic End*/
</style>

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
	<script>
		$(document).ready(function() {
			// Prepare the preview for profile picture
			$("#wizard-picture").change(function() {
				readURL(this);
				console.log("url taken"+ this)
			});
		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#wizardPicturePreview').attr('src', e.target.result)
							.fadeIn('slow');
					console.log("url uploaded "+ e.target.result)
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>
</html>