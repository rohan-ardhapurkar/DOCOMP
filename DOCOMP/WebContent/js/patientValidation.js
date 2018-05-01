/**
 * 
 */

function validatePhoneField(){
	debugger;
	var phoneNo = document.getElementById('phone').value;
	if (phoneNo == "") {
		document.getElementById('mandatoryPhone').innerHTML = "contact required";
		document.getElementById("mandatoryPhone").style.backgroundColor = "";  
		return false;
	} else {
		document.getElementById('mandatoryPhone').innerHTML = "blue";

	}
	
}
