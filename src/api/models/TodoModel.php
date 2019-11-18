<?php

class TodoModel extends GenericModel
{
  public const TABLE_NAME = "todo";
  public const PRIMARY_KEY = 'id';
  public const FIELDS = array('title', 'detail', 'complete');
}