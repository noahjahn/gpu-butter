function checkPassword(){

	var pass1 = $("#pass1").val();
	var pass2 = $("#pass2").val();


	if (pass1 != pass2){
		$("#checkPassMatch").html("Passwords don't match");
		$("#button1").html("");
		

	}
	else{
		$("#checkPassMatch").html("Passwords match");
		$("#button1").html('<input type="submit" style = "margin-bottom:50px;" class="btn btn-danger submitBnt" name="registure" value="Register" >');
		
	}
}

$(document).ready(function (){
	$("#pass2").keyup(checkPassword);

});