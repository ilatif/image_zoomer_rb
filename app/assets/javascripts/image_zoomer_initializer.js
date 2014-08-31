$(function() {
	if (typeof __ImageZoomer == "undefined") {
		__ImageZoomer = {options: {}};
	}
	$(".image_zoomer").each(function() {
		$(this).image_zoomer(__ImageZoomer.options);
	});
});