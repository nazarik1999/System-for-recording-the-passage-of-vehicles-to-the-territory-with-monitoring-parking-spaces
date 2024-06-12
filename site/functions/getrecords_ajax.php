<?php 
	require_once 'db_connect.php';
	$ids = 0;
	
	// Проверка наличия идентификатора сотрудника 
	if (isset($_POST['id'])) 
	{   // если передан id то назначаем переменной ids его значение
		$ids= $_POST['id'];
	}
	
	// проверка извлечения данных одного сотрудника
	if($ids > 0){
		$result = mysqli_query($link,"SELECT id_user, user_login, user_pass, id_access FROM users WHERE  id_user=".$ids);
		if (mysqli_num_rows($result)>0)
		{
			$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
			echo json_encode($row);	
		}
	}
	else
	{
		/* Формирование SQL запроса к БД */
		$sql = "SELECT id_user, user_login, user_pass FROM users WHERE id_access = '2'";
		$result = db_query($sql,$link);
		/* Если не пустой результ из базы данных, то заполняем массив результата */
		if($result->num_rows > 0) 
		while ($row=mysqli_fetch_array($result,MYSQLI_BOTH)){
			echo ("<tr><td>$row[id_user]</td>");
			echo ("<td>$row[user_login]</td>");
			echo ("<td>$row[user_pass]</td>");
			echo ("<td><button class='js-add-user' id='$row[id_user]'>Изменить</button></td>");
			echo ("<td><button class='js-delete-user' id='$row[id_user]'>Удалить</button></td>");
			echo ("<td><button class='js-reset-pass' id='$row[id_user]'>Сбросить пароль</button></td>");
		}
	}
	// Освобождаем память от результата
	mysqli_free_result($result);
    $link->close();
?>