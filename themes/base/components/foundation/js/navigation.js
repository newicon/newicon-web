jQuery(function($) {
	$(document).ready(function() {
		/* ================================================================================== *
		 *  Scroll down to service page section on click
		 *  ================================================================================== */
		$('#page').on('click', '.scroll-link', function(e) {
			e.preventDefault();
			var target = $(this);
			// If the target is the contact forms section, then open the contact form tab
			var location = target.attr('href');
			var offset = 0;
			$('html, body').animate({
				scrollTop: $("div" + location).not(':hidden').offset().top - offset
			}, 750, 'easeInOutCubic', function() {
				$('.subnav .subnav-link').removeClass('active');
			});
			target.addClass('active');
		});

		/* ================================================================================== *
		 *  Toggle sections
		 *  ================================================================================== */
		$('.toggle-sections').on('click', '.section-header', function(e) {
			e.preventDefault();
			var target = $(this);
			var sectionId = '#' + target.data('nav');
			var nav_height_offset = 20;
			if ($(sectionId).hasClass('open')) {
				$(sectionId).slideUp("slow", function() {
					target.removeClass('active');
					$(sectionId).removeClass('open');
				});
			} else {
				target.addClass('m_active');
				$(sectionId).slideDown("slow", function() {
					$(sectionId).addClass('open');
				});
			}
		});
	});
});