if (typeof window.neon === 'undefined') {
	window.neon={};
}
if (typeof window.neon.components === 'undefined') {
	window.neon.components={};
}
neon.components.overlay = {
	/**
	 * Toggle the overlay
	 * @param string - the overlay data id
	 */
	toggleOverlay: function(overlayId) {
		if ($('[data-overlay-id="' + overlayId + '"]').hasClass('m_active')) {
			neon.components.overlay.closeOverlay(overlayId);
		} else {
			neon.components.overlay.openOverlay(overlayId);
		}
	},
	/**
	 * Open the overlay
	 * @param string - the overlay data id
	 */
	openOverlay: function(overlayId) {
		var trigger = $('[data-overlay-trigger-id="' + overlayId + '"]');
		var overlay = $('[data-overlay-id="' + overlayId + '"]');
		overlay.addClass('m_active')
		trigger.addClass('m_active');
		$('body').addClass('noScroll');
	},
	/**
	 * Close the overlay
	 * @param string - the overlay data id
	 */
	closeOverlay: function(overlayId) {
		var trigger = $('[data-overlay-trigger-id="' + overlayId + '"]');
		var overlay = $('[data-overlay-id="' + overlayId + '"]');
		overlay.removeClass('m_active');
		trigger.removeClass('m_active');
		$('body').removeClass('noScroll');
	}
}

jQuery(function($) {
	// Show / hide the overlay
	$('.overlay_trigger').on('click touchstart', function(e) {
		e.preventDefault(); // prevent more than one event firing on touch devices (click touchstart)
		var trigger = $(this);
		var overlayId = trigger.data('overlay-trigger-id');
		if (trigger.hasClass('overlay_open'))
			neon.components.overlay.openOverlay(overlayId);
		if (trigger.hasClass('overlay_close'))
			neon.components.overlay.closeOverlay(overlayId);
		if (trigger.hasClass('overlay_toggle'))
			neon.components.overlay.toggleOverlay(overlayId);
	})
});