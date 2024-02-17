/* Toggle Button */
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

/*Profie Picture*/

$(document).ready(function() {
	// Prepare the preview for profile picture
	$("#wizard-picture").change(function() {
		readURL(this);
		console.log("url taken" + this)
	});
});
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#wizardPicturePreview').attr('src', e.target.result)
				.fadeIn('slow');
			console.log("url uploaded " + e.target.result)
		}
		reader.readAsDataURL(input.files[0]);
	}
}



function addMoreComponent() {
	document.getElementById("innerdiv").innerHTML  += "<input type='text' placeholder='enter your link'  >";

}

