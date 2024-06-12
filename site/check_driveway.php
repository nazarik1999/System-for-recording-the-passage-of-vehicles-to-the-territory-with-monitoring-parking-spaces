<?php
	require_once 'functions/db_connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="img/logo.svg" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:
              wght@400;600;700&family=Dancing+Script:wght@600&family=Inter:wght@400;700&family=
              PT+Sans+Narrow:wght@400;700&family=Roboto+Condensed:ital,wght@0,300;0,700;1,400&display=swap" 
              rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;600;700&
              family=Dancing+Script:wght@600&family=Inter:wght@400;700&family=PT+Sans+Narrow&family
              =Roboto+Condensed:ital,wght@0,300;0,700;1,400&display=swap" rel="stylesheet">
							<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,opsz,wght@0,6..12,300;0,6..12,700;1,6..12,400&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style.css">

  <title>Паркинг Онлайн</title>

    <script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/main.js"></script>	

	<style>
		/* Слайдер */
		.slider {
		width: 800px;
		height: 500px;
		overflow: hidden;
		border: 10px solid #000;
		}

		.main-slider {
			margin: 0 auto;
			display: flex;
            flex-direction: column;
			align-items: center;
    		margin-top: 20px;
		}

		.navigation {
			position: relative;
    		bottom: 30px;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		.bar {
		width: 30px;
		height: 8px;
		margin: 6px;
		cursor: pointer;
		background-color: blue;
		opacity: .5;
		border-radius: 10px;
		transition: all 0.4s ease;
		}

		.bar:hover {
		opacity: 1;
		transform:scale(1.1);
		}

		input[name="r"] {
		position: absolute;
		visibility: hidden;
		}

		.slides {
		width: 400%;
		height: 100%;
		display: flex;
		}

		.slide {
		width: 25%;
		transition: all 0.6s ease;
		}

		.img {
		width: 100%;
		height: 100%;
		}

		#r1:checked ~ .s1 {
		margin-left: 0;
		}

		#r2:checked ~ .s1 {
		margin-left: -25%;
		}

		#r3:checked ~ .s1 {
		margin-left: -50%;
		}
	</style>
</head>

<body>
	<div class="container">
	  	<header class="header">
		 <?php
			include 'menu.php';
		?>
	 	 </header>
	</div>
	
	<section class="view1">
		<div class="container">
			<div class="date_filters">
				<form class="gatename_form" action="check_driveway.php" method="post">
					<select class="gate_selector" id="gatename" name="gatename">
					  <option value="Северный проезд" selected>Северный проезд</option>
					  <option value="Западный проезд">Западный проезд</option>
					</select>	
					<input type="submit" 
						name="submit value" class="data_filter" value="Фильтр по проезду">
				</form>
			</div>
			
			<div class="date_filters date-input">
				<form class="date_form" action="check_driveway.php" method="post">
				 C: <input type="date" class="date_selector" id="date_start" name="date_start">
				  До: <input type="date" class="date_selector" id="date_end" name="date_end">
					<input type="submit" class="data_filter"
						name="submit value" value="Фильтр по дате">
				</form>
			</div>

			<?php
				$filter = '';
				$vr = '';
				 if(isset($_POST["gatename"]))
				 {
					$vr = "'%" . $_POST["gatename"] . "%'";
					$filter = ' AND ( gate_name LIKE ' . $vr . ')';
				 }

				 if(isset($_POST["date_start"]) and isset($_POST["date_end"]))
				 {
					$filter = ' AND ( date_driveway BETWEEN ' ."'". $_POST['date_start'] . "'". ' and ' . "'" . $_POST['date_end'] . "'" . ')';
				 }

				$query1 = "SELECT * FROM view_driveway_car WHERE (id_user = " . $_SESSION['id_user'] . ') ' . $filter;
				$result1 = db_query($query1, $link);

				echo "<table class='table_driveway'>";
				echo "<thead><tr><th>Дата</th>
				<th>Время</th>
				<th>Проезд</th>
				<th>Тип проезда</th>
				<th>Цвет</th>
				<th>Номер машины</th>
				<th>Модель</th>
				<th>Марка</th></tr></thead>";
				while($row1 = mysqli_fetch_array($result1, MYSQLI_BOTH)){  
				echo "<tr><td>" . htmlspecialchars(date('d.m.Y', strtotime($row1['date_driveway']))) .				
				"</td><td>" . htmlspecialchars($row1['time_driveway']) . 
				"</td><td>" . htmlspecialchars($row1['gate_name']) . 
				"</td><td>" . htmlspecialchars($row1['name_drivewaytype']) . 
				"</td><td>" . htmlspecialchars($row1['name_color']) . 
				"</td><td>" . htmlspecialchars($row1['number']) . 
				"</td><td>" . htmlspecialchars($row1['name_model']) . 
				"</td><td>" . htmlspecialchars($row1['name_brand']) . 
				"</td></tr>"; 
				}

				echo "</table>";

				// Освобождаем память от результата
				mysqli_free_result($result1); 
			?>
		</div>
	</section>
	 

	   <footer class="footer">
			<div class="container">
		  	<div class="footer__inner">
					<a href="#" class="footer__link">Контактная информация</a>

						<div class="footer__social">
							<a class="footer__social-link" href="https://vk.com/nazariksaidov" target="_blank">
								<img class="footer__social-img" src="img/vk.svg" alt="VK">
							</a>
							<a class="footer__social-link" href="https://t.me/nazarik1999" target="_blank">
								<img class="footer__social-img" src="img/telegram.svg" alt="Telegram">
							</a>
						</div>

						<div class="footer__contacts">
							<a class="footer__contacts-link" href="tel:+79232892224">
								<img class="footer__contacts-img" src="img/phone.svg" alt="phone">
								<span>+79232892224</span>
							</a>
							<a class="footer__contacts-link" href="mailto:nazar-saidov1999@mail.ru">
								<img class="footer__contacts-img" src="img/mail.svg" alt="mail">
								<span>nazar-saidov1999@mail.ru</span>
							</a>
						</div>
		 		</div>
			</div>
	   </footer>
	 
		<!-- Смена пароля для пользователя -->
		<div class="popup_change_pass">
		  <div class="popup-wrapper">
			<h2 class="title-autorize">Сменить пароль</h2>
			
			<form id="change_pass" action="change_pass.php" method="POST">
			  <p> <span>Новый пароль:</span> <input type="text" name="RegP1" id="RegP1"/></p>
			  <p><span>Повторить пароль:</span> <input type="text" name="RegP2" id="RegP2"/></p>

			  <div class="autorize_buttons">
			  <input type="submit" class='btn' id="change_pass"
				name="submit value" value="Сменить пароль">
				<a class='btn'> Отмена </a>
			  </div>   
			</form>
		  </div>
		</div>
</body>
</html>