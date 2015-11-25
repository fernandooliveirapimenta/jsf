$(document).ready(function() {

	bindBtn();

});

function bindBtn() {
	$(".btn").on('click', function(e) {
		$(".txtlinha").val($(this).attr('x'));
		$(".txtcoluna").val($(this).attr('y'));

		funjogada($(".txtlinha").val(), $(".txtcoluna").val())
	});
}