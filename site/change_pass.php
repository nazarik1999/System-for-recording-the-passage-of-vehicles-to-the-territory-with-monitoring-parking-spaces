<?php
	require_once 'functions/db_connect.php';
	$login=$_SESSION['id_user'];
	$pass1=$_POST["RegP1"];
    $pass2=$_POST["RegP2"];
    echo $pass1, $pass2;
    if ($pass1 == $pass2){
        $pass = $pass1;
        $order = "CALL set_pass($login, '$pass')";
        $result = db_query($order, $link);
    }

	echo '<script>location.replace("index.php");</script>'; 
	exit;
?>