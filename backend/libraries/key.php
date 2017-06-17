<?php
/*  
	Ghoul World - created by Anthony Moore aka Haise
	Copyright 2015 All Rights Reserved.
	Session Key
*/
require("/adodb/adodb-cryptsession2.php");
$options['table'] = 'sessions';
require_once("/adodb/adodb.inc.php");
$driver = 'mysqli'; $host = 'localhost'; $user = 'root'; $password = 'ga4q14'; $database = 'ghoul_world';
ADOdb_Session::config($driver, $host, $user, $password, $database, $options);
session_start();


?>