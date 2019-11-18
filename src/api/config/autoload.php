<?php

function autoload($dirs, $root)
{
  foreach($dirs as $dir) {
    spl_autoload_register(function($class) use ($root, $dir) {
      if(file_exists("$root/$dir/$class.php"))
        include "$root/$dir/$class.php";
    });
  }
}