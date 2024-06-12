<nav class="nav">
				<div class="logo-block">
			 	 <a class="logo" href="#">
				 	<img class="logo-img" src="img/logo.jpg" alt="Logo">
			     </a>
			    <a class="logo-text" href="index.php">Паркинг-Онлайн</a>
				</div>

				<div class="menu-block">
						<ul class="menu-list">
						<?php
						  if (isset($_SESSION['name_access_right']) == 'User'){?>
						  	<li class="menu-item">
								<a class="menu-link js-btn-change_pass" href="#">Сменить пароль</a>
							</li>
							<li class="menu-item">
								<a class="menu-link" href="camera.php">Информация c камеры</a>
							</li>
							<li class="menu-item">
								<a class="menu-link" href="check_driveway.php">Журнал проезда</a>
							</li>
							<li class="menu-item">
								<a class="menu-link" href="exit.php">Выход</a>
							</li>
						 <?php 
						 }
						  else {
							echo 
								'<li class="menu-item">
									<a class="menu-link js-btn-auto" href="#">Войти</a>
								</li>

								<li class="menu-item">
									<a class="menu-link js-btn-reg" href="#">Оставить заявку</a>
								</li>';
							}
						?>
					</ul>
				</div>
</nav>