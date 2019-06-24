// Create global Newicon responsive utilites theme obj
window.NEWICON_RU = {

	special_easing: {
		speed: 1000,
		animation: 'linear'
	},
	// =====================================================================
	// Primary Break Points
	// ** If these are changed, they must also be updated in bootstrap/less/variables.less
	// =====================================================================
	bp: {
		screen_xs: 480,
		screen_sm: 600,
		screen_md: 770,
		screen_lg: 980,
		screen_xl: 1200
	},
	// =====================================================================
	// Responsive images
	// ** Update all image src with data-source-* attribute
	// =====================================================================
	update_images: function(screen_size) {
		$('img[data-source-screen-' + screen_size + ']').each(function() {
			var data_source = $(this).data('source-screen-' + screen_size);
			var source = $(this).prop('src');
			if (source != data_source) {
				$(this).prop('src', data_source);
			}
		});
	},

	// =====================================================================
	// SVG image fallback for legacy browsers
	// ** Replace all svg image file extensions with .png fallbacks if svg isn't supported
	// =====================================================================
	svg_replacement: function() {
		if (!Modernizr.svg) {
			var imgs = document.getElementsByTagName('img');
			var svgExtension = /.*\.svg$/
			var l = imgs.length;
			for (var i = 0; i < l; i++) {
				if (imgs[i].src.match(svgExtension)) {
					imgs[i].src = imgs[i].src.slice(0, -3) + 'png';
					console.log(imgs[i].src);
				}
			}
		}
	},
	// =====================================================================
	// Old Windows Phone 8 version viewport fix
	// =====================================================================
	ie_mobile_viewport_fix: function() {
		if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
			var msViewportStyle = document.createElement('style')
			msViewportStyle.appendChild(
				document.createTextNode(
					'@-ms-viewport{width:auto!important}'
				)
			)
			document.querySelector('head').appendChild(msViewportStyle)
		}
	},
	/* ==================================================== *
	 *  Element collection - equal height alignment function
	 *  @param element_group - a group of dom objects to be iterated over and aligned
	 *  @param offset - (int) offset number to be added to the height
	 *  @param after_alignment - callback function
	 *  ==================================================== */
	set_element_group_height: function(elementGroup, offset, afterAlignment) {
		var offset = typeof offset !== 'undefined' ? offset : 0;
		var tallestHeight = 0;
		var elHeight = 0;
		$.each(elementGroup, function() {
			// Since this function is called every time the page is resized, we need to reset the height
			// so each container can return to its natural size before being measured.
			$(this).css('height', 'auto');
			elHeight = $(this).outerHeight() + offset;
			if (elHeight > tallestHeight) {
				tallestHeight = elHeight;
			}
		});
		// Set the height of all elementGroup elements to the tallest height
		elementGroup.css('height', Math.ceil(tallestHeight));
		// Callback
		if (afterAlignment && typeof(afterAlignment) === "function") {
			afterAlignment();
		}
	}
};