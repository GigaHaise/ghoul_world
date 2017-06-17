<?php
/*This file is reserved for login, registration, and logout functions
*/

require_once("backend/libraries/library.php");
require_once("backend/libraries/template.php");
require_once("backend/libraries/interface.php");

function door () {
	if(isset($_SESSION["uid"]) == true)
	{
		phone();
		
	}
	else
	{
		login();
	}
}

function login () {
	if(!empty($_POST))
	{
		extract($_POST);
		
		$template = new Template();
		$template->activate();
		$object = new MySql();
		$object->link_start();
		$sql = "SELECT * FROM user WHERE username=?";
		$params = array("s", strval($username));
		$result = $object->execute($sql, 'prepare', true, $params);
		$row = $result->fetch_assoc();
		if($row == false)
			{
				$message = "There is no such user registered.";
				$params = array('message' => $message);
				$template->content('login', $params);
			}
		else {
			if($row["password"] == md5($password))
			{	
				$message = "You have successfully logged in";
				$params = array('message' => $message);
				$_SESSION = $row;
				$template->content('login', $params);
			}
			else
			{
				$message = "Your password is incorrect";
				$params = array('message' => $message);
				$template->content('login', $params);
			}
		}
		$object->link_close();
		$template->compile('', 'single');
	
	}
	else
	{
		$template = new Template();
		$template->activate();
		$template->compile('login', '');
	}
}


function logout () {


}


function register () {


}


function lost_password () {


}


function lost_username () {



}

function email_confirmation () {


}

function session_updater () {
	$sql = "SELECT * FROM user WHERE uid='".$_SESSION["uid"]."'";
	$object = new MySql();
	$object->link_start();
	$result = $object->execute($sql, '', true);
	$row = $result->fetch_assoc();
	$_SESSION = $row;
	$object->link_close();
}
?>