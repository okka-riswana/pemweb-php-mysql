<?php

include "config/autoload.php";
$include_dirs = array("config", "models", "controller", "views");
autoload($include_dirs, __DIR__);
$requestUrl = $_SERVER['REQUEST_URI'];

if (($pos = strpos($requestUrl, '?')) !== false) {
    $requestUrl = substr($requestUrl, 0, $pos);
}

switch ($requestUrl) {
    case '/api' :
        require __DIR__ . '/views/index.php';
        break;
    case '/api/todo' :
        $view = new GenericView("TodoController");
        $view->handle();
        break;
    default:
        http_response_code(404);
        require __DIR__ . '/views/404.php';
        break;
}
