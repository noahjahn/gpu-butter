<?php include 'require.php';?>
<?php include 'logout.php';?>

<!DOCTYPE html>
<html>
   <meta charset="utf-8">
   <head>
      <link rel="stylesheet" type="text/css" href="css/reset.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src = "js/search.js"></script>

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
          margin-top: 150px;
          list-style-type: none;

        }

        #gpus{
          margin-left: 200px;
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
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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

   <div class = "scollLockElement white" id = 'page0'>
      <div id = 'headerContainer'>
        <h1>Gpu Butter</h1>
        <p>The easiest solution to buying a graphics card</p>
      </div>

    <form action="index.php" method="POST">
        <div class=headerbackground><div>
                <div class="container" id='gamesSelectContainer'>
                    <h2>Select your favorite games</h2>
                    <p>Gpu butter is very simple just select your favorite games</p>
                    <p>and put in a price range and search!</p>
                    <br>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/csgo.jpg" value='0' id='gameSelection1' style="width:100%; border-radius: 20px;" alt="Lights">
                                <input id='game1' type="hidden" name='game1' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/gta.jpg" value='0' id='gameSelection2' alt="Nature" style="width:100%;border-radius: 20px;">
                                <input id='game2' type="hidden" name='game2' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/fortnite.jpg" value='0' id='gameSelection3' alt="Fjords" style="width:100%; border-radius: 20px;">
                                <input id='game3' type="hidden" name='game3' value='0'>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/BattleField1.jpg" value='0' id='gameSelection4' style="width:100%; border-radius: 20px;" alt="Lights">
                                <input id='game4' type="hidden" name='game4' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/Dota 2.jpg" value='0' id='gameSelection5' alt="Nature" style="width:100%;border-radius: 20px;">
                                <input id='game5' type="hidden" name='game5' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/lol.jpg" value='0' id='gameSelection6' alt="Fjords" style="width:100%; border-radius: 20px;">
                                <input id='game6' type="hidden" name='game6' value='0'>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/pubg.jpg" value='0' id='gameSelection7' style="width:100%; border-radius: 20px;" alt="Lights">
                                <input id='game7' type="hidden" name='game7' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/The Witcher 3.jpg" value='0' id='gameSelection8' alt="Nature" style="width:100%;border-radius: 20px;">
                                <input id='game8' type="hidden" name='game8' value='0'>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/overwatch.jpg" value='0' id='gameSelection9' alt="Fjords" style="width:100%; border-radius: 20px;">
                                <input id='game9' type="hidden" name='game9' value='0'>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <div id="sumbitForm" class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <label type="text">Price Range</label>
                        <br>
                        <input type="text" name = 'low' class="form-control" placeholder="Low" id="priceRange1" style="width: 150px;display: inline;">
                        <input type="text" name = 'high' class="form-control" placeholder="High" id="priceRange2" style="width: 150px;display: inline;">
                        <a href="#results">
                            <button type="submit" id = 'submit' class="btn btn-primary blueButton" style="float:right; margin-right: 100px">Search</button>
                        </a>
                    </div>
                    <div class="col-md-4"></div>
                </div>
    </form>
   </div>



   <div class = "scollLockElement white" id = 'page1'>
    <div class = 'container'>
      <?php
                 if(isset($_POST['game1']) || isset($_POST['game2']) || isset($_POST['game3']) &&
                  (isset($_POST['low']) && isset($_POST['high'])) ){
                 }else{
                  echo '<h2>No Results Yet</h2>';
                 }

        ?>
       <div class="row">
      <div class="col-md-2" id = 'filters' style="background-color: white; height: 100vh">

      </div>
      <div class="col-md-10" id = 'gpuCnt' style="background-color: white; height: 100vh">
        <div id = 'gpus' class="container">
          <ul>
           <?php 

           if( isset($_POST['game1']) || isset($_POST['game2']) || isset($_POST['game3']) ||
            isset($_POST['game4']) || isset($_POST['game5']) || isset($_POST['game6']) ||
            isset($_POST['game7']) || isset($_POST['game8']) || isset($_POST['game9']) &&

              (isset($_POST['low']) && isset($_POST['high'])) ){
              $sqlPriceRangeSearch = "SELECT * FROM(
                      SELECT Series as type,MAX(sumFPS)FROM(
                      SELECT Series,SUM(Fps) as sumFPS FROM Fps
                      WHERE Series IN (SELECT type FROM Gpu
                      WHERE price >= ? AND price <= ?)
                      GROUP BY Series) temp)temp NATURAL JOIN Gpu
                      WHERE price >= ? AND price <= ?";
       
              $query = $db->prepare($sqlPriceRangeSearch);
              $query->bindValue(1, $_POST['low']);
              $query->bindValue(2, $_POST['high']);
              $query->bindValue(3, $_POST['low']);
              $query->bindValue(4, $_POST['high']);
              $query->execute();
              $result = $query ->fetchAll();

              foreach ($result as $values) {
                 echo "
                     <a href = 'product.php?id=".$values['Model']."'> <li class = 'gpu'><p sytle='float:left;'>".$values['Model']."<span style='color:green;float:right;'>".$values['Price']."</span></p></li></a>";
              }
            }
          ?>
          </ul>
        </div>
      </div>
    </div>

      
    </div>
   </div>

    
   </body>
</html>



























