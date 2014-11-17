function columns_height() {

	var window_width = $(window).width();

	var tablet_landscape = '960';
	var tablet_protrait = '760';
	var phone_landscape = '480';
	var phone_protrait = '320';

	var col_1 = $('.column_1').height();
	var col_2 = $('.column_2').height();		
	var col_3 = $('.column_3').height();	
	
	var highestCol = Math.max(col_1, col_2, col_3);


	if(window_width <= tablet_protrait) {
		$('.column_1, .column_2, .column_3').css('height','auto');
	}else if(window_width <= tablet_landscape && window_width > tablet_protrait) {
		$('.column_1, .column_2').height(highestCol+'px');
		$('.column_3').css('height','auto');
	}else{
		$('.column_1, .column_2, .column_3').height(highestCol+'px');
	}	
};


$(document).ready(function(){
	
	columns_height();
	$(window).resize(function(){
		columns_height();
	});
	
});