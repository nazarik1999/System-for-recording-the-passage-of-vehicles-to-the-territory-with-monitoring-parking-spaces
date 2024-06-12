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
            setInterval(updateData, 100); // 

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
		  	<div class="camera__inner">
			<div class="car_place_info">
				<h2 class="free_place">На текущий момент:</h2>
				<div id="data-container"></div>
			</div>
				<div class="camera_container">
					<iframe src="http://localhost:8080/my_camera2" frameborder="1" allowfullscreen="" class="camera_video"></iframe>
					<!--<iframe src="https://streamer4.mlsonline.tv:8443/cameras/7podyezd4/embed?token=1e02b5440cc7ae9f7a29b28550381d6c37eb6cab-1713953683" frameborder="1" allowfullscreen="" class="camera_video"></iframe>-->
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
	 </div>
</body>
</html>