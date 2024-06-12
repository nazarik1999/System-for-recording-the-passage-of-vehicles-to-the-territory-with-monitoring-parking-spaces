<?php
	require_once 'functions/db_connect.php';
?>

<html>
	<head>
		<meta charset=utf-8>
		<title>Просмотр пользователей</title>
		<link href="css/lab.css" type="text/css" rel="stylesheet">
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/check_user.js"></script>		
		<script src="js/main.js"></script>	
	</head>
	<body>
		<div>
			<h2>Информация о пользователях</h2>
			<table class="staff" id="staff">
				<tr>
					<th>id</td>
					<th>Логин</td>
					<th>Пароль</td>
				</tr>
			</table>
			<div>
			
			<div> <p>Перезагрузка данных по кнопке:  
				<button> <a  id="load_data" class="btn"> Загрузить данные из бд </a></button> 
				<button> <a  id="add_data" class="btn Js_ADD_Staff"> Добавить запись </a></button> 
                </p>
            </div>   	
		</div>
		
		<div class="popup-wrapper">
			
			<h3 id="headmsg">Пример добавления записи о сотруднике  <br> с использованием jQuery AJAX Post method </h3>
			<p><strong>Заполните данные и нажмите кнопку "Сохранить сотрудника" </strong></p>
			<form name='form1'>
				<label>Логин:</label>&nbsp;
				<input type='text' placeholder='Логин ' name='user_login' id= 'user_login' required  ids=''><br />
				<label>Пароль:</label>&nbsp;
				<input type='password' name='user_pass1' placeholder='Пароль' id='user_pass1' required ><br/>
				<label>Повтор пароля:</label>&nbsp;
				<input type='password' name='user_pass2' placeholder='Пароль' id='user_pass2' required ><br/>
				<label>Права доступа:</label>&nbsp;
				<input type='text' name='access_right' placeholder='Права доступа' id='access_right' required ><br/>
				<div class="butons_line">
					<button><a class='btn' id= "savestaff"> Сохранить пользователя</a></button>
					<button><a class='btn Js_ADD_Staff_cancel' > Отмена</a></button>
				</div>
				<div id="message"></div>	
			</form>
		</div>
	</body>
</html>				