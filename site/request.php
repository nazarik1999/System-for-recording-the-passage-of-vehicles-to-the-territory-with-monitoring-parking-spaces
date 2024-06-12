<?php
	require_once 'functions/db_connect.php';
    $fio = $_POST["RegFIO"];
	$login = $_POST["RegLog"];
	$pass = $_POST["RegPass"];
    $phone = $_POST["RegPh"];
    $addr = $_POST["RegAdr"];
    $date_req = date("Y-m-d H:i:s");  
	$order = "INSERT INTO request (fio, login_user, pass, number_request, location_user, date_request) VALUES ('$fio', '$login', '$pass', '$phone', '$addr', '$date_req')";
	$result = db_query($order, $link);
	echo '<script>location.replace("index.php");</script>'; 
	exit;
?>