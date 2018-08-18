<?php
	if(!isset($_SESSION['email'])){
		  $_SESSION['email'] = null;
  		  $_SESSION['password'] = null;
  		  $_SESSION['userID'] = null;
  		  header("location: landingPage.php");
	}
?>