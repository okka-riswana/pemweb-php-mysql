<?php

interface IController
{
  public function create($data);
  public function read($params = NULL);
  public function update($data);
  public function delete($data);
}