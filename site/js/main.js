//Окно авторизации (AJax)
$(document).ready(function(){
        $(".js-btn-auto").click(function(){
        $(".popup_field").addClass("show_popup");
        $(".popup_field").show(500);
        $(".popup_field").addClass("opacity_popup");
    });
    
    $(".js_btn_cancel").click(function(){
        $(".popup_field").hide(500);
        $(".popup_field").removeClass("opacity_popup");
        $(".popup_field").removeClass("show_popup");
    });	
});

//Окно регистрации (AJax)
$(document).ready(function(){
        $(".js-btn-reg").click(function(){
        $(".popup_field_reg").addClass("show_popup");
        $(".popup_field_reg").show(500);
        $(".popup_field_reg").addClass("opacity_popup");
});

$(".js_btn_cancel_reg").click(function(){
        $(".popup_field_reg").hide(500);
        $(".popup_field_reg").removeClass("opacity_popup");
        $(".popup_field_reg").removeClass("show_popup");
    });	
});


$(document).on('click', '#btn_in',  function(){
	// получение атрибута id для удаления элемента	
    var RegL = $("#RegL").val();
    var RegP = $("#RegP").val();
    
    // alert('Hello');
		// формирование AJAX запроса
		$.ajax({
			url: 'autorize.php',
			type: 'POST',
			data: { "RegL":RegL, "RegP":RegP },
		});
});

//Окно авторизации (AJax)
$(document).ready(function(){
    $(".js-btn-change_pass").click(function(){
    $(".popup_change_pass").addClass("show_popup");
    $(".popup_change_pass").show(500);
    $(".popup_change_pass").addClass("opacity_popup");
});

$(".js_btn_cancel2").click(function(){
    $(".popup_change_pass").hide(500);
    $(".popup_change_pass").removeClass("opacity_popup");
    $(".popup_change_pass").removeClass("show_popup");
});	
});

//Удаление пользователя
$(document).on('click', '.js-delete-user',  function(){
	// получение атрибута id для удаления элемента	
	var el = this;
	var deleteid = this.getAttribute("id");
	var r=confirm("действительно хотите удалить запись c ID="+deleteid+" ?");
	if (r == true)
	{
		// формирование AJAX запроса
		$.ajax({
			url: 'delete_user.php',
			type: 'POST',
			data: { id:deleteid },
			success: function(response){
                alert(response);
				if(response == 1){
					// Удалить строку из таблицы Table
					$(el).closest('tr').css('background','tomato');
					$(el).closest('tr').fadeOut(800,function(){
						$(this).remove();
					});
					}else{
					alert('Invalid ID.');
				}
			}
		});
	}
});


$(document).on('click', '.js-reset-pass',  function(){
    alert('Hello');
	// получение атрибута id для удаления элемента	
     var check_id = this.getAttribute("id");
		// формирование AJAX запроса
		$.ajax({
			url: 'reset_pass.php',
			type: 'POST',
			data: { "check_id":check_id},
		});
});


$(document).on('click', '.js-add-user',  function(){
	// получение атрибута id 
	var editid = this.getAttribute("id");
	console.log('Редактирование данных');
    alert(editid);
	// формирование AJAX запроса
	$.ajax({
		url: 'functions/getrecords_ajax.php',
		type: 'POST',
		data: { "id":editid },
		success: function(response){
			$("#headmsg").html("Пример редактирования записи о сотруднике  <br> с использованием jQuery AJAX Post method");
			var result = $.parseJSON(response);
			$("#user_login").attr("ids", result.id_user);
            $("#user_login").val(result.user_login);
			$("#user_pass1").val(result.user_pass);
			$("#access_right").val(result.id_access);
			$(".popup-wrapper").addClass("ShowBlocks");
		}
	});
});
