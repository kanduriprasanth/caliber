$(function(){
	$('.europe_map_1').mobilymap({
		outsideButtons: '.map_buttons a'
	});
	
	$('.europe_map_2').mobilymap({
		position: '10 445',
		popupClass: 'bubble',
		markerClass: 'point',
		popup: false,
		cookies: false,
		caption: false,
		setCenter: false,
		navigation: false,
		outsideButtons: false,
		onMarkerClick: function() {
			var text = $(this).text();
			alert(text);
		}
	}); 
	
});