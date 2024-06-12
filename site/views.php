<?php
	require_once 'functions/db_connect.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Представления</title>
	<link rel="stylesheet" href="css/lab.css">
</head>
<body>
    <section class="view1">
		<div class="container">
			<p class="autorize-add">Отображение представлений:</p>
			<p class="autorize-add">Информация о заездах и выездах машин за определённое время:</p>

			<form class="gatename_form" action="views.php" method="post">
				<input type="text" id="gatename" name="gatename">
					
				<input type="submit" 
					name="submit value" value="Фильтр по проезду">
			</form>

			<form class="date_form" action="views.php" method="post">
				C: <input type="text" id="date_start" name="date_start">
				До: <input type="text" id="date_end" name="date_end">
				<input type="submit" 
					name="submit value" value="Фильтр по дате">
			</form>

			<?php
				$filter = '';
				$vr = '';
				 if(isset($_POST["gatename"]))
				 {
					$vr = "'%" . $_POST["gatename"] . "%'";
					$filter = ' WHERE gate_name LIKE ' . $vr;
				 }

				 if(isset($_POST["date_start"]) and isset($_POST["date_end"]))
				 {
					$filter = ' WHERE date_driveway BETWEEN ' ."'". $_POST['date_start'] . "'". ' and ' . "'" . $_POST['date_end'] . "'";
				 }

				$query1 = "SELECT * FROM view_driveway_car" . $filter;
				$result1 = db_query($query1, $link);

				echo "<table>";

				while($row1 = mysqli_fetch_array($result1, MYSQLI_BOTH)){  
				echo "<tr><td>" . htmlspecialchars($row1['date_driveway']) . 
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
	
	<hr> <br>

	<section class="view2">
		<div class="container">
			<?php
			if (isset($_SESSION['number_entrance']))
				if ($_SESSION['number_entrance'] == 3)
			{
				echo '<p class="autorize-add">Информация о собственниках:</p>

				<form class="owner_form" action="views.php" method="post">
					<input type="text" id="ownername" name="ownername">
						
					<input type="submit" 
						name="submit value" value="Фильтр по логину">
				</form>';
	
				$filter_ow = '';
				$vr_ow = '';
				 if(isset($_POST["ownername"]))
				 {
					$vr_ow = "'%" . $_POST["ownername"] . "%'";
					$filter_ow = ' WHERE user_login LIKE ' . $vr_ow;
				 }

				$query2 = "SELECT * FROM view_owners" . $filter_ow;
				$result2 = db_query($query2, $link);

				echo "<table>";

				while($row2 = mysqli_fetch_array($result2, MYSQLI_BOTH)){  
				echo "<tr><td>" . htmlspecialchars($row2['firstname']) . 
				"</td><td>" . htmlspecialchars($row2['middlename']) . 
				"</td><td>" . htmlspecialchars($row2['lastname']) . 
				"</td><td>" . htmlspecialchars($row2['phone']) . 
				"</td><td>" . htmlspecialchars($row2['user_login']) . 
				"</td><td>" . htmlspecialchars($row2['flat']) . 
				"</td><td>" . htmlspecialchars($row2['id_owner']) . 
				"</td></tr>"; 
				}

				echo "</table>";

				// Освобождаем память от результата
				mysqli_free_result($result2); 
			}
			?>
		</div>
	</section>

	<hr> <br>

	<section class="view3">
		<div class="container">
			<?php
			if (isset($_SESSION['name_access_right']) == 'User')
			{
				echo '<p class="autorize-add">Информация о данных пользователей:</p>

				<form class="user_form" action="views.php" method="post">
					<input type="text" id="idaccess" name="idaccess">
						
					<input type="submit" 
						name="submit value" value="Фильтр по правам доступа">
				</form>';
	
				$filter_us = '';
				$vr_us = '';
				 if(isset($_POST["accessright"]))
				 {
					$vr_us = "'%" . $_POST["accessright"] . "%'";
					$filter_us = ' WHERE name_access_right LIKE ' . $vr_us;
				 }

				$query3 = "SELECT * FROM view_users" . $filter_us;
				$result3 = db_query($query3, $link);

				echo "<table>";

				while($row3 = mysqli_fetch_array($result3, MYSQLI_BOTH)){  
					echo "<tr><td>" . htmlspecialchars($row3['user_login']) . 
					"</td><td>" . htmlspecialchars($row3['user_pass']) . 
					"</td><td>" . htmlspecialchars($row3['name_access_right']) . 
					"</td></tr>"; 
				}

				echo "</table>";

				// Освобождаем память от результата
				mysqli_free_result($result3); 
			}
			?>
		</div>
	</section>

	<hr> <br>

	<section class="view4">
		<div class="container">
			<p class="autorize-add">Список машин собственников:</p>

			<form class="using_car_form" action="views.php" method="post">
				<input type="text" id="usingcar" name="usingcar">
					
				<input type="submit" 
					name="submit value" value="Фильтр по бренду авто">
			</form>

			<?php
				$filter_car = '';
				$vr_car = '';
				 if(isset($_POST["usingcar"]))
				 {
					$vr_car = "'". $_POST["usingcar"] . "'";
					$filter_car = ' WHERE name_brand LIKE ' .$vr_car;
				 }

				$query4 = "SELECT * FROM view_using_car" . $filter_car;
				$result4 = db_query($query4, $link);

				echo "<table>";

				while($row4 = mysqli_fetch_array($result4, MYSQLI_BOTH)){  
				echo "<tr><td>" . htmlspecialchars($row4['name_brand']) . 
				"</td><td>" . htmlspecialchars($row4['name_model']) . 
				"</td><td>" . htmlspecialchars($row4['name_color']) . 
				"</td></tr>"; 
				}

				echo "</table>";

				// Освобождаем память от результата
				mysqli_free_result($result4); 
			?>
		</div>
	</section>
</body>
</html>