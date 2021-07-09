<?php

require('vendor/autoload.php');

error_log(var_dump($_POST,1));

error_log(var_dump($_GET,1));

error_log('input '. file_get_contents("php://input"));

file_put_contents('/tmp/result-'.date_create('now')->format('Y-m-d-H-i-s').'.xml', file_get_contents('php://input'));
