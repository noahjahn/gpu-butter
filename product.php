<?php include 'require.php';?>


<?php 
 
             $canAddToFavs = true;
              $sqlPriceRangeSearch = "SELECT userID FROM Favs WHERE userID = ? AND gpuID = (SELECT gpuID FROM Gpu WHERE Model = ?)";
       
              $query = $db->prepare($sqlPriceRangeSearch);
              $query->bindValue(1, $_SESSION['userID']);
              $query->bindValue(2, $_GET['id']);
              $query->execute();
              $result = $query ->fetchAll();
             
              foreach ($result as $values) {
                 $canAddToFavs = false;
              }

            if(isset($_POST['temp'])){
    
              $canAddToFavs = false;
              $insertSql = "INSERT INTO Favs (userID, gpuID) VALUES(?,(SELECT gpuID FROM Gpu WHERE Model = ?))";
              $stmt = $db->prepare($insertSql);
              $stmt->bindValue(1,$_SESSION['userID']);
              $stmt->bindValue(2,$_GET['id']);
              $stmt->execute();
         
            }
  
?>

<!DOCTYPE html>
<html>
  <meta charset="utf-8">
  <head>
     <link rel="stylesheet" type="text/css" href="css/reset.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
     <title></title>
     <script type="text/javascript" src="product.js"></script>
     <style type="text/css">
       #centeredTextOnImage{
         color: white;
         font-weight: bold;
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         text-shadow: 1px 1px #000000;
       }
       #smallImages{
          opacity: .75;
          width: 100%;
          border-radius: 20px;
       }
       #smallImagesBackground{
         background-color: black;
         border-radius: 20px;
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

    <div class="container" style="padding-top: 20px">
      <div class="row justify-content-center">
        <div class="col-md-5">
          <?php
            $gpuSql = "SELECT Model FROM Gpu WHERE Model='".$_GET['id']."'";

            $query = $db->prepare($gpuSql);
            $query->execute();

            if ($query->rowCount() != 0) {
              while ($row = $query->fetch()) {
                echo '<img src="images/gpus/'.$row['Model'].'.jpg" style="max-height: 400px; width:100%; border-radius: 20px;" alt="gpu">';
              }
            }
          ?>
        </div>
        <div class="col-md-5">
          <?php
            $gpuSql = "SELECT Type, Memory, Brand, Price, Chipmanf, Model FROM Gpu WHERE Model='".$_GET['id']."'";
            $query = $db->prepare($gpuSql);
            $query->execute();
            $gpuType = '';

            if ($query->rowCount() != 0) {
              while ($row = $query->fetch()) {
                  $gpuType = $row['Type'];
                  echo '<h2>'.$row['Type']."</h2>"."\n\r";
                  echo "<h4>Memory: ".$row['Memory']."</h4>"."\n\r";
                  echo "<h4>Brand: ".$row['Brand']."</h4>"."\n\r";
                  echo '<h4><span style="color:rgb(131,212,41)">$</span>'.$row['Price'].'</h4>';
                  echo "<h4>Chip Manufacturer: ".$row['Chipmanf']."</h4>"."\n\r";
                  echo "<h4>Model: ".$row['Model']."</h4>"."\n\r";
                  if($canAddToFavs){ echo " <form id = 'form2' action='product.php?id=".$_GET['id']."' method='POST'><button type=\"button name = 'Favorites' id = 'favBnt' \" class=\"btn btn-secondary\">Add to Favorites</button>
                    <input id = 'temp' type='hidden' name='temp' value='value'/></form>
                    ";}
              }
            }
          ?>
        </div>
      </div>
    </div>

    <div class="container" style="padding-top: 10px">
      <h4>FPS for popular games</h4>
      <div class="row justify-content-center">
        <?php
          $games = ["csgo","fortnite","gta","The Witcher 3","overwatch","pubg","Dota 2","lol","BattleField1"];

          foreach ($games as $game) {

            $fpsSql = "SELECT Fps FROM Fps WHERE Series='".$gpuType."' AND Game='".$game."'";
            $query = $db->prepare($fpsSql);
            $query->execute();

            if ($query->rowCount() != 0) {
              while ($row = $query->fetch()) {
                echo '<div class="col-md-2">';
                echo '<div class="background" id="smallImagesBackground">';
                echo '<img src="images/'.$game.'.jpg" alt="csgo" id="smallImages">';
                echo '</div>';
                echo '<div class="centered" id="centeredTextOnImage">';
                echo ''.$row['Fps'].'';
                echo '</div>';
                echo '</div>';
              }
            }
          }
        ?>
      </div>
    </div>


    <div class="container" style="padding-top: 40px">
      <h4>Similar GPUs</h4>
        <div class="row justify-content-center">
          <?php

            $results = [];

            $modelSql = "SELECT G1.Model FROM GPU, G1, Gpu G2 WHERE G2.Model='".$_GET['id']."' AND G1.Price=G2.Price";
            $query = $db->prepare($modelSql);
            $query->execute();

            if ($query->rowCount() !=0) {
              while ($row = $query->fetch()) {
                if (count($results) < 5) {
                  if (!(in_array($row['Model'], $results)) && $row['Model'] != $_GET['id']) {
                    array_push($results, $row['Model']);
                  }
                }
              }
            }

            $modelSql = "SELECT G1.Model FROM Gpu G1, Gpu G2 WHERE G2.Model='".$_GET['id']."' AND G1.Price >= G2.Price-10 AND G1.Price <= G2.Price+10 GROUP BY G1.Price LIMIT 1";
            $query = $db->prepare($modelSql);
            $query->execute();

            if ($query->rowCount() !=0) {
              while ($row = $query->fetch()) {
                if (count($results) < 5) {
                  if (!(in_array($row['Model'], $results)) && $row['Model'] != $_GET['id']) {
                    array_push($results, $row['Model']);
                  }
                }
              }
            }

            $modelSql = "SELECT G1.Model FROM Gpu G1, Gpu G2 WHERE G2.Model='".$_GET['id']."' AND G1.Price >= G2.Price -30 AND G1.Price <= G2.Price +30 GROUP BY G1.Price LIMIT 1";
            $query = $db->prepare($modelSql);
            $query->execute();

            if ($query->rowCount() !=0) {
              while ($row = $query->fetch()) {
                if (count($results) < 5) {
                  if (!(in_array($row['Model'], $results)) && $row['Model'] != $_GET['id']) {
                    array_push($results, $row['Model']);
                  }
                }
              }
            }

            $modelSql = "SELECT G1.Model FROM Gpu G1, Gpu G2 WHERE G2.Model = '".$_GET['id']."' AND G1.Memory = G2.Memory AND G1.Series NOT IN(SELECT G3.Series FROM Gpu G3 WHERE G3.Series = G2.Series) LIMIT 1";
            $query = $db->prepare($modelSql);
            $query->execute();

            if ($query->rowCount() !=0) {
              while ($row = $query->fetch()) {
                if (count($results) < 5) {
                  if (!(in_array($row['Model'], $results)) && $row['Model'] != $_GET['id']) {
                    array_push($results, $row['Model']);
                  }
                }
              }
            }

            $modelSql = "SELECT G1.Model FROM Gpu G1, Gpu G2 WHERE G2.Model = '".$_GET['id']."' AND G1.Memory = G2.Memory AND G1.Series = G2.Series LIMIT 3";
            $query = $db->prepare($modelSql);
            $query->execute();

            if ($query->rowCount() !=0) {
              while ($row = $query->fetch()) {
                if (count($results) < 5) {
                  if (!(in_array($row['Model'], $results)) && $row['Model'] != $_GET['id']) {
                    array_push($results, $row['Model']);
                  }
                }
              }
            }

            foreach ($results as $result) {

              echo '<div class="col-md-2">';
              echo "<a href = 'product.php?id=".$result."'>";
              echo '<img src="images/gpus/'.$result.'.jpg" style="width:100%; border-radius: 20px;" alt="gpu">';
              echo "</a>";
              echo '</div>';

            }
          ?>
      </div>
    </div>
  </body>
</html>
