/**
 * 
 */

function validatePhoneField(){
	debugger;
	var phoneNo = document.getElementById('phone').value;
	if (phoneNo == "") {
		document.getElementById('mandatoryPhone').innerHTML = "first name required";
		return false;
	} else {
		document.getElementById('mandatoryPhone').innerHTML = "";

	}
	
}