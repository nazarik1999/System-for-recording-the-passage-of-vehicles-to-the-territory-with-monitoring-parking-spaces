//новости
$(document).ready(function(){
	$(".js-link-new").click(function(){
	var el = this;
	var id = '#' + this.getAttribute("attr");
	$(id).addClass("decollapse");
    $(this).removeClass("js-link-new");
});

$(".js-link-hidden").click(function(){
    var el = this;
	var id = '#' + this.getAttribute("attr");
	$(id).removeClass("decollapse");
    $(this).addClass("js-link-new");
    $(this).removeClass("js-remove-text");
});	
});


const textArea = document.querySelector('#mytextarea');

document.querySelector('.js-save-news').addEventListener('click', () => {
    // console.log(textArea.innerHTML);
    // console.log(textArea.value);
    let d = tinymce.get('mytextarea').getContent();
    console.log(d);
	var newsData = d;
	var newsTitle = $("#news-title").val();
    
    alert('Новость сохранена');
	alert(newsData);
	alert(newsTitle);
		// формирование AJAX запроса
		$.ajax({
			url: 'add-news.php',
			type: 'POST',
			data: { "newsData":newsData, "newsTitle":newsTitle },
		});
    console.log(d1);
});