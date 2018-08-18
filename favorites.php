
<?php 

	
  session_start();

  $email = $_SESSION['email'];
  $pass = $_SESSION['password'];
  $userID = $_SESSION['userID'];

  $username = "root";
  $password = "";
  try {
      $pdo = new PDO("mysql:host=localhost;dbname=GPUDataBase", $username, $password);
  }
  catch (PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
  }

 ?>


 <!DOCTYPE html>
 <html>
 <head>
 	<title>Favorites</title>

      <link rel="stylesheet" type="text/css" href="css/reset.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      

      <title>GPU Search</title>
      <style type="text/css">
       .scollLockElement{
        width: 100%;
        height: 100vh;
       }

       .white{
        background-color: white;
       }
       .row{
        margin-bottom: 50px;
       }
       .green{
        background-color: green;
       }
       #gamesSelectContainer{
          margin-top: 70px;
        }

        #gamesSelectContainer p{
          line-height: 10px;
        }
        .headerbackground{
          position: absolute;
          background-color: #4dd0e1;
          width:100%;
          height: 25vh;
        }
        #headerContainer{
          margin: 0 auto;
          margin-top: 150px;
          margin-bottom: 150px;
          text-align: center;
        }
        .thumbnail img:hover{
          border:solid #4dd0e1 6px;
          width: 105%
          border-radius:20px;
        }
        
        .blueButton {
          background-color:#4dd0e1;
          border-color:#4dd0e1;
        }

         #sumbitForm{
           margin-top: 10px;
           margin-bottom: 100px;
        }
        #page1 h2{
          text-align: center;
        }

        .gpu{
          width: 300px;
          height: 50px;
          border-radius: 20px;
          background-color: #4dd0e1;
          text-align: center;
        }
        .gpu{
          padding-top: 12px;
          padding-right: 12px;
          margin-bottom: 20px;
        }


        #gpus ul{
          margin-top: 100px;
          list-style-type: none;

        }

        #gpus{
          margin-left: 50%;
        }
    </style>


 </head>
 <body>
    <nav class="navbar navbar-expand-lg navbar-lightx">
    <a class="navbar-brand" href="#">GPU Butter</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="favorites.php">Favorites</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="landingPage.php">logout</a>
        </li>
      </ul>

    </div>
  </nav>

  <strong><h1 style="margin-left: 400px;margin-top: 100px;">Favorites</h1></strong>

 	<?php 

    $sql = "SELECT * FROM (SELECT GpuID FROM Favs WHERE userID = '".$userID."')temp natural join Gpu";
    $stmt = $pdo->query($sql);

 		$gpu = $stmt->fetchAll();

echo'
<div class="col-md-10" id = "gpuCnt" style="background-color: white; height: 100vh">
        <div id = "gpus" class="container">
          <ul>';
            
              foreach ($gpu as $values) {
                 echo "
                     <a href = 'product.php?id=".$values['Model']."'> <li class = 'gpu'><p sytle='float:left;'>".$values['Model']."<span style='color:green;float:right;'>".$values['Price']."</span></p></li></a>";
              }
            
          
         echo' </ul>
        </div>
      </div>'

 	 ?>

 	<div>
 		
 	</div>
 </body>
 </html>