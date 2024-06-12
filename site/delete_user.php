<?php
	require_once "functions/db_connect.php";
	$id = $_POST['id'];
	/* проверка заполнения значений. */
	if($id > 0){
		/* проверка существования записи на основе прямого запроса*/
		$checkRecord = mysqli_query($link,"SELECT * FROM users WHERE id_user=".$id);
		$totalrows = mysqli_num_rows($checkRecord);
		if($totalrows > 0){
			/* удаление записи с использование простого запроса*/
			$order = "DELETE FROM users WHERE id_user='$id'";
			db_query($order,$link);
			echo 1;
			$link->close();
			exit;
		}
	}
	echo 0;
	$link->close();
	exit;
?>