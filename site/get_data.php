<?php
	require_once 'functions/db_connect.php';

							if(isset($_SESSION["fio"]))
							{
							$query_show="SELECT
							  SUM(parking_plan.car_place_used) AS all_used,
							  SUM(parking_plan.max_cars_parking) AS all_places
							  FROM parking_plan WHERE id_entrance = ".$_SESSION['number_entrance'];
							$result = db_query($query_show, $link);
							// Выводим результаты в html
							while ($row=mysqli_fetch_array($result, MYSQLI_BOTH)){
								$mp = $row['all_places'];
								$free_places = $mp - $row['all_used'];
								echo ("<span class='free_place'> Свободных парковочных мест: <span>$free_places</span></span>");
								echo ("<span class='max_place'>Максимальное количество мест: <span>$row[all_places]</span></span>");
							}
							// Освобождаем память от результата
							mysqli_free_result($result);
							}

							else {
								$query_show="SELECT
							  SUM(parking_plan.car_place_used) AS all_used,
							  SUM(parking_plan.max_cars_parking) AS all_places
							  FROM parking_plan
							";
							$result = db_query($query_show, $link);
							// Выводим результаты в html
							while ($row=mysqli_fetch_array($result, MYSQLI_BOTH)){
								$mp = $row['all_places'];
								$free_places = $mp - $row['all_used'];
								echo ("<span class='free_place'> Свободных парковочных мест: <span>$free_places</span></span>");
								echo ("<span class='max_place'>Максимальное количество мест: <span>$row[all_places]</span></span>");
							}
							// Освобождаем память от результата
							mysqli_free_result($result);
							}
						?>