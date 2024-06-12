<?php
session_start();
	require_once 'config.php';
if (!isset($_SESSION['db_mode'])) $_SESSION['db_mode']=1;	
	
	if ($_SESSION['db_mode']==1)
	{
//	"Процедурный  режим работы";
	require_once 'db_proc.php';
	}
	else
		{
//	"объектный режим работы";
	require_once 'db_obj.php';
	}
	
	global $link;
	// подключаемся к БД
	$link = db_connect(DBHOST, DBUSER, DBPASSWD, DBNAME);
?>