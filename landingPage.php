<?php include 'require.php';?>
<?php 
  $_SESSION['email'] = null;
  $_SESSION['password'] = null;
  $_SESSION['userID'] = null;
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	  <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Login</title>
    <style type="text/css">
        #gamesSelectContainer{
          margin-top: 100px;

        }
        #gamesSelectContainer p{
          line-height: 10px;
        }
        .center{
          width: 400px;
          background-color: #FBFBFB;
          border-radius: 30px;
          padding-left: 120px;
          padding-right: 30px;
          padding-bottom: 30px;
          margin:0 auto;
          margin-top: 25vh;
        }
        .submitBnt{
          margin-top: 30px;
        }
    </style>
 </head>
 <body>

 	<?php 
 		if (isset($_POST['login'])) {
  		$email = $_POST['email'];
  		$password = $_POST['password'];

  		$sql = "SELECT userID, Email, Password FROM User WHERE Email = ?";
  		$stmt = $db->prepare($sql);
  		$stmt->bindValue(1, $email);
  		$stmt->execute();

  		$rEmail;
  		$rPassword;
  		$userID;
  		$found = false;

  		while( $row = $stmt->fetch()){
  			$found = true;
  			$userID = $row['userID'];
  			$rEmail = $row['Email'];
  			$rPassword = $row['Password'];
  		}

  		if($found){
  				if($rPassword === $password){
            $_SESSION['email'] = $rEmail;
            $_SESSION['password'] = $rPassword;
            $_SESSION['userID'] = $userID;            

  					header("location: index.php");
  				}
  			
  		}
  		
  	}

  	else if(isset($_POST['registure'])){
  		$fname = $_POST['firstname'];
  		$lname = $_POST['lastname'];
  		$email = $_POST['email'];
  		$pass1 = $_POST['password1'];

  		$sql = "SELECT (MAX(userID) + 1) AS uID FROM User";
  		$results = $db->query($sql);
  		$userID =0;
  		while ($row = $results->fetch()) {
  			$userID = $row['uID'];
  		}
      $_SESSION['email'] = $email;
      $_SESSION['password'] = $pass1;
      $_SESSION['userID'] = $userID;            

  		$sql = "INSERT INTO User (FirstName, LastName, Email, Password, userID)  VALUES (?,?,?,?,?)";
  		$stmt = $db->prepare($sql);
  		$stmt->bindValue(1,$fname);
  		$stmt->bindValue(2,$lname);
  		$stmt->bindValue(3,$email);
  		$stmt->bindValue(4,$pass1);
  		$stmt->bindValue(5,$userID);
  		$stmt->execute();

      header("location: index.php");
  	}

  	else{

  	echo '<div>
 		<ul class="nav nav-tabs">
 			<li class="active"><a data-toggle = "tab" href="#login">Log In</a></li>
 			<li><a data-toggle ="tab" href="#signup">Sign Up</a></li>
 		</ul>

 		<div class="tab-content">
 			<div id="login" class="tab-pane fade in active">
 				
 				<div class="container center" >
        <h2 style = "margin-bottom:50px;">Login</h2>
 		 			<form action="landingPage.php" method="post">
 		 				<strong>Email:</strong><br>
 		 				<input type="email" name="email" required=""><br>
 		 				<br><strong>Password:</strong><br>
 		 				<input type="password" name="password" required=""><br>
 		 				<input type="submit" class="btn btn-danger submitBnt" name="login" value="Login">

 		 			</form>
 				</div>
 			</div>
 			<div id="signup" class="tab-pane fade">
      <div class="container center" >
 				 <h2 style = "margin-bottom:50px;">Sign up</h2>
 					<form action="landingPage.php" method="post" id= "form1">
 						First Name:<br>
 						<input type="text" name="firstname" required=""><br>
 						Last Name:<br>
 						<input type="text" name="lastname" required=""><br>
 						Email:<br>
 						<input type="email" name="email" required=""><br>
 						Password:<br>
 						<input type="password" name="password1" id ="pass1" required=""><br>
 						Re-enter Password:<br>
 						<input type="password" name="password2" id = "pass2" required="" onChange = "checkPassword();"><br>
 						<div class = "registureSubmit" id="button1" ></div>
 						<div class = "passwordFormAlert" id="checkPassMatch"></div>
 				</form>
 				</div>
 			</div>
 		</div>

 	</div>';
  	}
 ?>
 	<script src="passwordCheck.js"></script>
 
 </body>
 </html>

