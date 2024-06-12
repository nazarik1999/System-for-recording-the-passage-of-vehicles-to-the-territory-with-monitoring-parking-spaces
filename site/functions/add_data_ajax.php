<?php
	require_once 'db_connect.php';
	/* Получение данных о сотруднике через массив  $_POST  */
	$id_user  = $_POST['ids'];
	$user_login  = $_POST['user_login'];
	$user_pass1  = $_POST['user_pass1'];
	$user_pass2  = $_POST['user_pass2'];
	$access_right  = $_POST['access_right'];
	/* проверка заполнения значений. */
	// if(!$id_user || !$user_login || !$user_pass1 || !$user_pass2 || !$access_right ){
	// 	$result = 2;
	// 	}elseif ($user_pass1 != $user_pass2 ) {
	// 	$result = 3;
	// }
	// else {
		if ($id_user>0)
		{
			/*выполнение запроса на обновление с привязкой параметров*/
			$sql    = "UPDATE users SET user_login=?, user_pass=?, id_access=? WHERE id_user=?";
			$stmt   = $link->prepare($sql);
			$user_pass = md5(base64_encode($user_pass1));
			$stmt->bind_param('ssii', $user_login, $user_pass, $access_right, $id_user);
			if($stmt->execute()){
				$result = 1;
			}
		}
		else
		{
			/*выполнение запроса на обновление с привязкой параметров*/
			$sql    = "insert users (user_login, user_pass, id_access) values (?, ?, ?)  ";
			$user_pass = md5(base64_encode($user_pass1));
			$stmt   = $link->prepare($sql);
			$stmt->bind_param('ssi', $user_login, $user_pass, $access_right);
			if($stmt->execute()){
				$result = 1;
			}
		}
		
	// }
	echo $result;
	$link->close();
?>
