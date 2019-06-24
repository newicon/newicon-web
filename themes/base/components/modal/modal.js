$(window).on('load', function() {
	/* Namespace the modal backdrop for styling purposes */
	$('[data-modal-modifier]').on('shown.bs.modal', function() {
		$('.modal-backdrop').wrap("<div class='modal-backdrop_active " + $(this).attr('data-modal-modifier') + "'></div>");
	}).on('hidden.bs.modal', function() {
		$('.modal-backdrop_active').remove();
	});
});