<?php
/*This file is reserved for all functions related to the game's interface like HP bars, RC, etc.
*/


function phone () 
{

	if($_SESSION["phone"] == '' | $_SESSION["phone"] == NULL)
	{
		$object = new MySQL;
		$object->link_start();
		$phone = menu_setter($object);
		$phone = app_setter($phone);
		$update = json_encode($phone);
		$sql = "UPDATE user SET phone='".$update."' WHERE uid='". $_SESSION["uid"]."'";
		$result = $object->execute($sql);
		if($result == false)
		{
			die('There was a problem');
		}
		session_updater();
		$object->link_close();
	}
	else
	{
		/*
		$phone = json_decode($_SESSION["phone"], true);
		$num = $phone["menu"]["1"];
		die($num);
		*/
		$template = new Template();
		$template->activate();
		$params = array('message' => '');
		$template->content('interface/phone', $params);
		$template->compile();

	}
}

function menu_setter ($object) 
{
	$sql = "SELECT * FROM apps";
	$num = 1;
	$result = $object->execute($sql, '', true);
	while($row = $result->fetch_assoc())
	{
			$phone["menu"][$num] = $row["appid"];
			$num++;
			
			if($num > 5)
			{
				break;
			}
	}
	$num = 1;
	$object->link_close();
	return $phone;
}


function app_setter ($phone) 
{
	$num = 1;
		while($num <= 20) 
		{
			$phone["screen1"][$num] = '';
			$num++;
		
		}
	return $phone;
}


?>