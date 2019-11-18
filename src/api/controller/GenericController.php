<?php

class GenericController implements IController
{

  private $conn;
  private $model;

  public function __construct($model)
  {
    $this->model = new $model;
    $db = new DBClass();
    $this->conn = $db->getConnection();
  }

  public function create($data)
  {
    if (!isset($data))
      return $this->send_result(400);
    
   if(!empty(array_diff(array_keys($data), $this->model::FIELDS)))
      return $this->send_result(400);

    $cols = '';
    $vals = '';

    $query = "INSERT INTO `" . $this->model::TABLE_NAME . "`";
    $pdoParams = array();

    foreach ($data as $key => $value) {
      $cols .= "`$key`, ";
      $vals .= ":$key, ";
      $pdoParams[":$key"] = $value;
    }

    $cols = substr($cols, 0, strlen($cols) - 2);
    $vals = substr($vals, 0, strlen($vals) - 2);
    $query .= " ($cols) VALUES ($vals)";

    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute($pdoParams);

    $lastInsert = "SELECT * FROM `" . $this->model::TABLE_NAME . "` WHERE `" . $this->model::PRIMARY_KEY . "` = ?";

    if ($result) {
      $stmt = $this->conn->prepare($lastInsert);
      $stmt->execute(array($this->conn->lastInsertId()));
      return $this->send_result(200, $stmt->fetchAll(PDO::FETCH_ASSOC));
    }
    return $this->send_result(500);
  }

  public function read($params = NULL): array
  {
    $query = "SELECT * FROM `" . $this->model::TABLE_NAME . "`";
    $pdoParams = array();

    if (isset($params)) {
      $query .= " WHERE ";
      foreach ($params as $key => $value) {
        $query .= "`$key` LIKE :$key AND";
        $pdoParams[":$key"] = "%$value%";
      }
      $query = substr($query, 0, strlen($query) - 4);
    }
    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute($pdoParams);

    if ($result)
      return $this->send_result(200, $stmt->fetchAll(PDO::FETCH_ASSOC));
    return $this->send_result(500);
  }

  public function update($data)
  {
    if (!isset($data[$this->model::PRIMARY_KEY]))
      return $this->send_result(400);

   if(!empty(array_diff(array_keys($data), array_merge($this->model::FIELDS, array('id')))))
      return $this->send_result(400);

    $query = "UPDATE `" . $this->model::TABLE_NAME . "` SET ";
    $pdoParams = array(
      ":" . $this->model::PRIMARY_KEY=> $data[$this->model::PRIMARY_KEY]
    );

    foreach ($data as $key => $value) {
      $query .= "`$key` = :$key, ";
      $pdoParams[":$key"] = $value;
    }

    $query = substr($query, 0, strlen($query) - 2);
    $query .= " WHERE `". $this->model::PRIMARY_KEY ."` = :". $this->model::PRIMARY_KEY;

    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute($pdoParams);

    $lastInsert = "SELECT * FROM `" . $this->model::TABLE_NAME . "` WHERE `". $this->model::PRIMARY_KEY ."` = ?";

    if ($result) {
      $stmt = $this->conn->prepare($lastInsert);
      $stmt->execute(array($data[$this->model::PRIMARY_KEY]));
      return $this->send_result(200, $stmt->fetchAll(PDO::FETCH_ASSOC));
    }
    return $this->send_result(500);

    return array("data" => "update called!");
  }

  public function delete($param)
  {
    if (!$param)
      return $this->send_result(400);
    
    $query = "DELETE FROM `" . $this->model::TABLE_NAME . "` WHERE `id` = ?";

    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute(array(intval($param)));

    if($stmt->rowCount() == 0)
      return $this->send_result(404, "Data Not Found");
    else if ($result)
      return $this->send_result(200);

    return $this->send_result(200, "Delete Called");
  }

  private function send_result($code, $data = NULL): array
  {

    return array(
      "code" => $code,
      "data" => $data
    );
  }
}
