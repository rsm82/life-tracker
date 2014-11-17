/**
 * 
 */

function validateLogin() {
	var isValid = false;
	var userName, password;
	var users = ["raja", "kishore", "murali"];
	var pws = ["nitw", "svu", "nitt"];

	userName = document.getElementById("username").value;
	password = document.getElementById("password").value;

	if(userName && password && (users.indexOf(userName) == pws.indexOf(password))){
		
		alert(userName + "   " + password);
		isValid = true;
		window.location.replace("http://localhost:7080/protomvnwebapp/Welcome");
	
	}else{
		alert("Invalid or empty user credentials !");
	}
	return isValid;
}