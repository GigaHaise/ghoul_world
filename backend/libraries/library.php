<?php
/* 
	Ghoul World - created by Anthony Moore aka Haise
	Copyright 2015 All Rights Reserved.
	Primary Library
*/

class MySQL {
		
		private $params;
		private $link;
		private $ref;
		private $result;
		
		public function link_start() 
		{
			$this->link = new mysqli('localhost', "root", "ga4q14", "ghoul_world");
			$this->ref = new ReflectionClass('mysqli_stmt');

			if($this->link->connect_errno > 0){
				die('Unable to connect to database [' . $link->connect_error . ']');
			}
		}
		
		
		public function execute ($sql, $mode='', $fetch=false, $params = '') 
		{

			if($mode == "prepare")
			{
				$statement = $this->link->prepare($sql);
				$method = $this->ref->getMethod("bind_param");
				$method->invokeArgs($statement, $params);
				if($fetch == true)
				{
					$statement->execute();
					$this->result = $statement->get_result();
					return $this->result;
				}
				else
				{
					return $statement->execute();
				}
				
			}
			else
			{
				if(!$this->result = $this->link->query($sql))
				{
					die('There was an error running the query [' . $this->link->error . ']');
				}
				else
				{
					return $this->result;
				}
			}
		}
		
		public function link_close () 
		{
			if(!is_bool($this->result))
			{
				$this->result->free_result();
			}
			$this->link->close();
		
		}
		
		public function param_generator () {
		
		}

}


?>