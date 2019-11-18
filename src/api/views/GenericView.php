<?php

class GenericView
{
  private $controller;

  public function __construct($controller)
  {
    $this->controller = new $controller;
  }

  public function handle()
  {
    $method = $_SERVER['REQUEST_METHOD'];
    $response = array();
    $data = json_decode(file_get_contents('php://input'), true);
    switch ($method) {
      case 'GET':
        $params = array();
        parse_str($_SERVER['QUERY_STRING'], $params);
        $response = $this->controller->read(empty($params) ? NULL : $params);
        break;
      case 'POST':
        $response = $this->controller->create($data);
        break;
      case 'PATCH':
        $response = $this->controller->update($data);
        break;
      case 'DELETE':
        $id = array();
        parse_str($_SERVER['QUERY_STRING'], $id);
        $response = $this->controller->delete($id);
        break;
      default:
        $response['code'] = 400;
        break;
    }
    $this->send_response($response);
  }

  private function send_response($response)
  {
    if (!isset($response['data'])) {
      switch ($response['code']) {
        case 200:
          $data = "Success";
          break;
        case 400:
          $data = "Bad Request";
          break;
        case 403:
          $data = "Forbidden";
          break;
        case 404:
          $data = "Not Found";
          break;
        case 500:
          $data = "Internal Error Response";
          break;
        default:
          $data = "Unknown Error";
          break;
      }
      $response['data'] = $data;
    }

    // header('Content-Type: application/json', true, $response['code']);
    echo json_encode($response['data']);
  }
}
