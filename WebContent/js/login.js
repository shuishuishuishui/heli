/**
 * 登录时判断信息是否为空
 */
function validateMyForm() {

	var loginName = document.getElementById("inputUser").value;
	var passWord = document.getElementById("inputPassword").value;
	if (loginName == "") {
		alert("Please put your login name!");
		return false;
	} 
	if (passWord == "") {
		alert("Please put your password!");
		return false;

	}
return true;
}
