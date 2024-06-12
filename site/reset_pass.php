<?php
	require_once 'functions/db_connect.php';
	$login=$_POST['check_id'];
    $order = "CALL set_default_pass($login)";
    $result = db_query($order, $link);
	//echo '<script>location.replace("index.php");</script>'; 
	exit;
?>