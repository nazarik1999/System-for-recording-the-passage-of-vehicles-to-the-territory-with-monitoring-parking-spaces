<?php

	function db_connect($host, $user, $passwd, $dbname)
	{
		$mysqli = new mysqli($host, $user, $passwd, $dbname);
		if ($mysqli->connect_errno) 
		{ 
			echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
			exit();
		}
		
		$mysqli->query('SET NAMES utf8' );
		
		return $mysqli;
	}
	
	
	
	function db_query($query,$slink)
	{
		$result = $slink->query($query)
		or die("\nНекорректный SQL запрос >>" . $query);
		return $result;
	}

	
?>