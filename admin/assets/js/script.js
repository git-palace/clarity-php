(function() {
	$("input[type=file]").change(function(e) {
		if (e.target.files && e.target.files[0]) {
			var reader = new FileReader();
			var prevewID = $(this).attr("id") + "-preview";

			reader.onload = function (e) {
				$("#" + prevewID).attr('src', e.target.result);
			}

			reader.readAsDataURL(e.target.files[0]);
		}
	});
})(jQuery);