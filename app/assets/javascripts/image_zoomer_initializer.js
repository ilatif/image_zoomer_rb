$(function() {
	if (typeof __ImageZoomer == "undefined") {
		__ImageZoomer = {options: {}};
	}
	$(".image_zoomer").image_zoomer(__ImageZoomer.options);
});