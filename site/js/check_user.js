function GetStaffData(){
	$.ajax({    //Создание ajax запроса к файлу  getrecords_ajax.php для получения данных с БД
		type: "GET",
		url: "functions/getrecords_ajax.php",             
		dataType: "html",   //Ставим html для того чтобы уточнить что возвращаются данные в HTML ajhvfnt  
		success: function(response){   
			var 
			basecaption="<tr><th>ID </th><th>Логин</th>	<th>Пароль</th> <th>Кнопки</th></tr>" ;
			$("#staff").html(basecaption+response); 
		}

	});
};

$(document).ready(function(){
	// при загрузке отображение таблицы с сотрудниками.
	GetStaffData();
	
	// Показ формы (элемент Div который меняит статсу отображения на оснвое класса)
	$(".Js_ADD_Staff").click(function(){
		$(".popup-wrapper").addClass("ShowBlocks");
		$("#user_login").attr("ids", '0');
		$("#user_pass1").val('');
		$("#user_pass2").val('');
		$("#headmsg").html("Пример добавления записи о сотруднике  <br> с использованием jQuery AJAX Post method");
	});
	
	// Скрытие формы (элемент Div который меняит статсу отображения на оснвое класса)
	$(".Js_ADD_Staff_cancel").click(function(){
		$(".popup-wrapper").removeClass("ShowBlocks");
	});
	
	// Принудительная загрузка данных из БД по "кнопке"	в роли которой выступает элемент "<a>"
	$("#GetStaffData").click(function(){
		GetStaffData();
	});		
});		

$(function(){
	$("#savestaff").on('click', function(){
		// заполнение переменных из формы
		var user_login  = $("#user_login").val();
		var user_pass1       = $("#user_pass1").val();
		var user_pass2   = $("#user_pass2").val();
		// получение атрибуда для определения идет редактирование или добавление
		var ids  = $("#user_login").attr("ids");
		var access_right  = $("#access_right").val();
		alert(ids);
		alert (access_right);
		// Вызов Ajax 
		$.ajax({
			// указание метода передачи через POST
			method: "POST",
			// задание файла
			url:    "functions/add_data_ajax.php",
			// передача структурированных данных
			data: { "ids":ids, "user_login": user_login, "user_pass1": user_pass1, "user_pass2": user_pass2, "access_right": access_right},
			}).done(function( data ) {
			// получение результата работы функции в JSON формате
			alert (data);
			var result = data;
			var str = '';
			var cls = '';
			// выполнение действий на основе разобранной JSON структуры.
			if(result == 1) {
				str = 'Запись успешно сохранена.';
				cls = 'success';
				}else if( result == 2) {
				str = 'Необходимо запонить все поля.';
				cls = 'error';
				}else if( result == 3) {
				str = 'Пароли не совпадают.';
				cls = 'error';
				}else{
				str = 'User data could not be saved. Please try again';
				cls = 'error';
				alert(user_login);
				alert(user_pass1);
				alert(user_pass2);
			}
			$("#message").removeClass("error");
			$("#message").removeClass("success");
			$("#message").fadeIn(1000).html(str).addClass(cls).fadeOut(4000);
			// обновление данных в случае успешного выполнения добавления сотрудника
			if(result == 1) {
				// запрос данных из бд
				GetStaffData();
				// скрытие окна с задержкой в 4 секунды
				setTimeout(function() {
					$(".popup-wrapper").removeClass("ShowBlocks");
				}, 4000);	
			}
		});
	});
});		




