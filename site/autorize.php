<?php
	require_once 'functions/db_connect.php';
	$login=$_POST["RegL"];
	$pass=$_POST["RegP"];
	$pass = md5(base64_encode($pass));
	$order = "CALL user_autorize('$login', '$pass')";
	$result = db_query($order, $link);
	
	$name = '';
	$surname = '';
	$lastname = '';
	$number_entrance = '';
	$name_access_right = '';
	$id_user = '';

	while ($row=mysqli_fetch_array($result, MYSQLI_BOTH)){
		$name = $row['firstname'];
		$surname = $row['middlename'];
		$lastname = $row['lastname'];
		$number_entrance = $row['id_entrance'];
		$id_user = $row['id_user'];
		$_SESSION['name_access_right'] = $name_access_right;
		$_SESSION['fio'] = $name.' '.$surname.' '.$lastname;
		$_SESSION['number_entrance'] = $number_entrance;
		$_SESSION['id_user'] = $id_user;
	}
	// Освобождаем память от результата
	mysqli_free_result($result);

	echo '<script>location.replace("index.php");</script>'; 
	exit;
?>