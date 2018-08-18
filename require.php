<?php
  session_start();
  $username = "root";
  $password = "";
  try {
      $db = new PDO("mysql:host=localhost;dbname=GPUDataBase", $username, $password);
  }
  catch (PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
  }

?>