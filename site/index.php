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
	 <script>
        $(document).ready(function(){
            // Функция для отправки запроса к серверу и обновления данных
            function updateData() {
                $.ajax({
                    url: 'get_data.php', // Путь к серверному скрипту, который обрабатывает запросы к базе данных
                    type: 'GET', // Метод запроса
                    success: function(data) {
                        // Обновление данных на странице
                        $('#data-container').html(data);
                    },
                    error: function(xhr, status, error) {
                        console.error('Произошла ошибка при обновлении данных:', error);
                    }
                });
            }

            // Запуск функции обновления данных через определенные промежутки времени (например, каждые 5 секунд)
            setInterval(updateData, 100); // 5000 миллисекунд = 5 секунд

            // Используйте эту функцию, чтобы сразу запустить обновление данных при загрузке страницы
            // updateData();
        });
    </script>

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

	  <section class="main-info">
		  	<div class="main-info__inner">
					<div class="main-info__textblock">
			  		<h1 class="tsg-info">
						<?php
							if(isset($_SESSION["fio"]))
							{
								echo "Добро пожаловать";
								$fio = $_SESSION["fio"];
								echo ("<div class='person'>$fio</div>");
							}

							else {
								echo "Контроль парковочных мест онлайн";
							}
						?>
					</h1>

			  		<p class="tsg-info__add">Получайте актуальную информацию о наличии свободных парковочных мест в онлайн режиме.</p>
					
					<h2>На текущий момент:</h2>
						 <div id="data-container"></div>
					</div>
					<div class="main-info__img">
						<img src="img/parking.png" alt="parking">
					</div>
				</div>
	   </section>

		 <section class="parking-place">
			<div class="container">
				<div class="parking-place__inner">
			  	<h2>Схема парковки</h1>
			
				<div class="main-slider">
					<div class="slider">
							<div class="slides">
								<input type="radio" name="r" id="r1" checked>
								<input type="radio" name="r" id="r2">
								<input type="radio" name="r" id="r3">
							
							<div class="slide s1">
								<img src="img/cam1.JPG" alt="Изображение" class="img">
							</div>

							<div class="slide">
								<img src="img/cam2.JPG" alt="Изображение" class="img">
							</div>

							<div class="slide">
								<img src="img/Scheme.png" alt="Изображение" class="img">
							</div>
						</div>
							<div class="navigation">
								<label for="r1" class="bar"></label>
								<label for="r2" class="bar"></label>
								<label for="r3" class="bar"></label>
							</div>
						</div>
					</div>
				</div>
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
	  
		<!-- Форма авторизации пользователя -->
		<div class="popup_field">
		  <div class="popup-wrapper">
			<h2 class="title-autorize">Авторизация</h2>
			
			<form id="autorization" action="autorize.php" method="POST">
			  <p> <span>Логин:</span> <input type="text" name="RegL" id="RegL"/></p>
			  <p><span>Пароль:</span> <input type="password" name="RegP" id="RegP"/></p>

			  <div class="autorize_buttons">
			  	<input type="submit" class='btn' id= "btn_in"
					name="submit value" value="Войти">
				<a class='btn js_btn_cancel' > Отмена </a>
			  </div>   
			</form>
 
				<ul class="autorize-add">
					<li>Просмотр информации с сайта доступен только авторизованным пользователям.</li>
					<li>Необходимо оставить заявку администратору системы для получения доступа на сайт.</li>
				</ul>
		  </div>
		</div>


		<!-- Смена пароля для пользователя -->
		<div class="popup_change_pass">
		  <div class="popup-wrapper">
			<h2 class="title-autorize">Сменить пароль</h2>
			
			<form id="change_pass" action="change_pass.php" method="POST">
			  <p> <span>Новый пароль:</span> <input type="password" name="RegP1" id="RegP1"/></p>
			  <p><span>Повторить пароль:</span> <input type="password" name="RegP2" id="RegP2"/></p>

			  <div class="autorize_buttons">
			  <input type="submit" class='btn' id="change_pass"
				name="submit value" value="Сменить пароль">
				<a class='btn'> Отмена </a>
			  </div>   
			</form>
		  </div>
		</div>

		<!-- Форма регистрации пользователя -->
		<div class="popup_field_reg">
		  <div class="popup-wrapper">
			<h2 class="title-autorize">Оставить заявку</h2>
			
			<form id="register" action="request.php" method="POST">
			  <p> <span>ФИО:</span> <input type="text" name="RegFIO" id="RegFIO" /></p>
			  <p><span>Логин:</span> <input type="text" name="RegLog" id="RegLog" /></p>
			  <p> <span>Пароль:</span> <input type="password" name="RegPass" id="RegPass" /></p>
			  <p><span>Номер:</span> <input type="text" name="RegPh" id="RegPh" /></p>
			  <p><span>Адрес:</span> <input type="text" name="RegAdr" id="RegAdr" /></p>

			  <div class="register_buttons">
				<input type="submit" class="btn" id="btn_reg"
				name="submit value" value="Оставить заявку ">
				<a class='btn js_btn_cancel_reg' > Отмена </a>
			  </div>   
			</form>
		  </div>
	 </div>
</body>
</html>