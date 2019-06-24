$(document).ready(function() {

	/**
	 * Primary Site breakpoints
	 * If these are changed, they must also be updated in bootstrap/less/variables.less
	 */
	window.bp = {
		screen_xxs: 0,
		screen_xs: 480,
		screen_sm: 600,
		screen_md: 770,
		screen_lg: 980,
		screen_xl: 1200
	};

	window.is_bp_xxsmall = false;
	window.is_bp_xsmall = false;
	window.is_bp_small = false;
	window.is_bp_medium = false;
	window.is_bp_large = false;
	window.is_bp_xlarge = false;
	window.screenSize = false;

	/**
	 * JS media queries, image src replacements and breakpoint flags - uses enquire.js
	 */

	// 1200px and over
	enquire.register("screen and (min-width: " + window.bp.screen_xl + "px)", {
		match: function() {
			window.is_bp_xlarge = true;
			window.screenSize = 'xl';
		},
		unmatch: function() {
			window.is_bp_xlarge = false;
		}
	}, true) // Lagacy fall back - always match if this media query fails
	// Between 980px and 1200px
	enquire.register("screen and (min-width: " + window.bp.screen_lg + "px) and (max-width: " + (window.bp.screen_xl - 1) + "px)", {
		match: function() {
			window.is_bp_large = true;
			window.screenSize = 'lg';
		},
		unmatch: function() {
			window.is_bp_large = false;
		}
	})
	// Between 770px and 979px
	enquire.register("screen and (min-width: " + window.bp.screen_md + "px) and (max-width: " + (window.bp.screen_lg - 1) + "px)", {
		match: function() {
			window.is_bp_medium = true;
			window.screenSize = 'md';
		},
		unmatch: function() {
			window.is_bp_medium = false;
		}
	})
	// Between 600px and 769px
	enquire.register("screen and (min-width: " + window.bp.screen_sm + "px) and (max-width: " + (window.bp.screen_md - 1) + "px)", {
		match: function() {
			window.screen_sm = true;
			window.screenSize = 'sm';
		},
		unmatch: function() {
			window.screen_sm = false;
		}
	})
	// Between 480px and 599px
	enquire.register("screen and (min-width: " + window.bp.screen_xs + "px) and (max-width: " + (window.bp.screen_sm - 1) + "px)", {
		match: function() {
			window.is_bp_xsmall = true;
			window.screenSize = 'xs';
		},
		unmatch: function() {
			window.is_bp_xsmall = false;
		}
	})
	// Up to 479px
	enquire.register("screen and (max-width: " + (window.bp.screen_xs - 1) + "px)", {
		match: function() {
			window.is_bp_xxsmall = true;
			window.screenSize = 'xxs';
		},
		unmatch: function() {
			window.is_bp_xxsmall = false;
		}
	});
});