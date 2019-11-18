<?php

class DBClass
{
  private $servername = "db";
  private $database = "db";
  private $username = "dev";
  private $password = "devpass";

  public function getConnection(): PDO
  {
    try {
      $conn = new PDO("mysql:host=" . $this->servername . ";dbname=" . $this->database, $this->username, $this->password);
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $conn->exec("SET NAMES utf8");
      return $conn;
    } catch (PDOException $e) {
      echo "Database connection failed: " . $e->getMessage();
      die();
    }
  }
}
