
var newiconFlexslider = {
	
	initFlexSliders: function() {
		
		if (typeof newiconCarouselConfigs !== 'undefined') {
			for (var i = 0; i < newiconCarouselConfigs.length; i++) {

				if (newiconCarouselConfigs[i]['type'] == 'flexslider') {

					if (newiconCarouselConfigs[i]['initOn'] == 'load') {
						$('#' + newiconCarouselConfigs[i]['id'] +
						' .flexslider').flexslider(
						newiconCarouselConfigs[i]['configuration']
						);
					}

					$('.carousel_slide img').css('visibility','visible');
				}

			}
		}
	},

	initModalFlexSliders: function() {
		if (typeof newiconCarouselConfigs !== 'undefined') {
			for (var i = 0; i < newiconCarouselConfigs.length; i++) {

				if (newiconCarouselConfigs[i]['type'] == 'flexslider') {
					if (newiconCarouselConfigs[i]['initOn'] == 'modal') {
						newiconCarouselConfigs[i]['configuration']['animation'] = 'slide';
						var self = this;
						newiconCarouselConfigs[i]['configuration']['start'] = function() { self.handleSmallImages(); };
						$('#' + newiconCarouselConfigs[i]['id'] +
							' .flexslider').flexslider(
							newiconCarouselConfigs[i]['configuration']
						);
						
					}
					$('.carousel_slide img').css('visibility','visible');
				}

			}
		}
	},

	/* Apply a modifier to center images which are small */
	handleSmallImages: function() {
		
		var tallest = 0;
		var slideBodies = $('.modal .slide_body');
		slideBodies.each(function() {

			var slide = $(this);

			if (slide.height() > tallest)
				tallest = slide.height();

		});

		slideBodies.each(function() {
			
			var slide = $(this);

			if (slide.height() < tallest) {
				slide.addClass('m_slide_bodyCenter');
				slide.css({'top': tallest/2+'px'});
			}
		});
	
		
	}


}

$(window).on('load', function() {
	
	newiconFlexslider.initFlexSliders();

	$('.modal').on('shown.bs.modal', function(e) {
		newiconFlexslider.initModalFlexSliders();
		$(window).resize();
	});
	
});