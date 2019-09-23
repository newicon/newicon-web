import 'magnific-popup';
// import Vue from 'vue';
// import Hello from './hello.vue';
// import 'owl.carousel';

// Vue.component('hello', Hello);

// import VueAgile from 'vue-agile'
// Vue.use(VueAgile)



;(function(window, document, $) {
	var $win = $(window);
	var $doc = $(document);



	$doc.ready(function() {
		var $sliderTestimonials = $('.sliderTestimonials .slider_slides');
		var $sliderTabs = $('.sliderTabs .slider_slides');
		var $sliderPortfolio = $('.slider-portfolio .slider_slides');
		var $sliderCards = $('.slider-cards .slider_slides');
		var $sliderCardsSecondary = $('.slider-cardsSecondary .slider_slides');
		var $sliderGallery = $('.slider-gallery .slider_slides');
		var $sliderNav = $('.sliderNav');
		var $navSecondary = $('.navSecondary ul');
		var $navTertiary = $('.navTertiary ul');
		var $navQuaternary = $('.navQuaternary ul');
		var $sliderFilters = $('.listFilters');
		var $jsStickyOnScrollParent = $('.js--stickyOnScrollParent');
		var $jsStickyOnScroll = $('.js--stickyOnScroll');
		var $tabSwitchBtn = $('.tabs_switchBtn');
		var parallaxArray = $('.parallax');
		var tabsSwitchClass = '.tabs_switch';
		var tabsMapsClass = '.tabsMaps';
		var tabletWidth = 1024;
		var mobileWidth = 767;
		var timeout;

		$tabSwitchBtn.find('input').on('change', function() {
			var $this = $(this);
			var isCheced = $this.prop('checked');

			$this.closest(tabsSwitchClass).find('[data-tab="tab1"]').toggleClass('current', !(isCheced)).closest(tabsSwitchClass).find('[data-tab="tab2"]').toggleClass('current', isCheced);

			$this.closest(tabsMapsClass).find('#tab1').toggleClass('current', !(isCheced)).closest(tabsMapsClass).find('#tab2').toggleClass('current', isCheced);
		});

		$('.link-popup').magnificPopup({
			type: 'iframe',
			mainClass: 'mfp-fade',
			removalDelay: 160,
			preloader: false,
			fixedContentPos: false
		});

		//Slider Testimonials
		if ($sliderTestimonials.length) {
			// $sliderTestimonials.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	mouseDrag: true,
			// 	touchDrag: true,
			// 	margin: 100,
			// 	nav: true,
			// 	navText: ['<i class="ico-angle-arrow-left"></i>', '<i class="ico-angle-arrow-right"></i>'],
			// 	navContainer: '.sliderTestimonials .slider_nav',
			// 	dotsContainer: '.sliderTestimonials .slider_nav .slider_dots'
			// })
		}

		//Slider Tabs
		if ($sliderTabs.length) {
			// $sliderTabs.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	mouseDrag: false,
			// 	touchDrag: false,
			// 	margin: 100,
			// 	nav: true,
			// 	navText: ['<i class="ico-angle-arrow-left"></i>', '<i class="ico-angle-arrow-right"></i>'],
			// 	navContainer: '.sliderTabs .slider_nav',
			// 	dotsContainer: '.sliderTabs .slider_nav .slider_dots'
			// })
		}

		//Slider Gallery
		if ($sliderGallery.length) {
			// $sliderGallery.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	mouseDrag: false,
			// 	touchDrag: false,
			// 	margin: 100,
			// 	nav: true,
			// 	navText: ['<i class="ico-angle-arrow-left-secondary"></i>', '<i class="ico-angle-arrow-right-secondary"></i>'],
			// 	navContainer: '.slider-gallery .slider_nav',
			// 	dotsContainer: '.slider-gallery .slider_nav .slider_dots'
			// })
		}

		//Slider Portfolio
		if ($sliderPortfolio.length) {

			// $sliderPortfolio.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	loop:true,
			// 	mouseDrag: true,
			// 	touchDrag: true,
			// 	margin: 50,
			// 	dots: false,
			// 	animateOut: 'fadeOut'
			// })
		}

		//Slider Nav
		if ($sliderNav.length) {
			// $sliderNav.find('ul').addClass('owl-carousel').owlCarousel({
			// 	items: 4,
			// 	margin: 1,
			// 	dots: false,
			// 	mouseDrag: false,
			// 	responsive: {
			// 		767: {
			// 			items: 5,
			// 			margin: 2
			// 		},
			// 		1024: {
			// 			items: 6,
			// 			margin: 20
			// 		}
			// 	}
			// })
		}

		//Slider Nav
		if ($navSecondary.length) {
			// $navSecondary.addClass('owl-carousel').owlCarousel({
			// 	items: 2,
			// 	margin: 1,
			// 	dots: false,
			// 	responsive: {
			// 		767: {
			// 			items: 3,
			// 		}
			// 	}
			// })
		}

		//Slider Nav
		if ($navTertiary.length) {
			var elementsNumber = $navTertiary.parent().data('elements');

			// $navTertiary.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	margin: 1,
			// 	dots: false,
			// 	responsive: {
			// 		767: {
			// 			items: elementsNumber,
			// 		}
			// 	}
			// })
		}

		//Slider Nav
		if ($navQuaternary.length) {
			// $navQuaternary.addClass('owl-carousel').owlCarousel({
			// 	autoWidth: true,
			// 	margin: 20,
			// 	dots: false,
			// 	responsive: {
			// 		767: {
			// 			margin: 49
			// 		}
			// 	}
			// })
		}

		//Slider Cards
		if ($sliderCards.length) {
			// $sliderCards.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	mouseDrag: false,
			// 	touchDrag: false,
			// 	margin: 10,
			// 	dots: false,
			// 	nav: true,
			// 	responsive:{
			// 		768:{
			// 			items: 2
			// 		},
			// 		1024:{
			// 			items: 3
			// 		},
			// 		1200:{
			// 			items: 4
			// 		}
			// 	}
			// })
		}

		//Slider Cards
		if ($sliderCardsSecondary.length) {
			// $sliderCardsSecondary.addClass('owl-carousel').owlCarousel({
			// 	items: 1,
			// 	mouseDrag: false,
			// 	touchDrag: false,
			// 	margin: 10,
			// 	dots: false,
			// 	nav: true,
			// 	responsive:{
			// 		768:{
			// 			items: 2
			// 		},
			// 		1024:{
			// 			items: 3
			// 		}
			// 	}
			// })
		}

		//Slider Nav
		if ($sliderFilters.length) {
			// $sliderFilters.addClass('owl-carousel').owlCarousel({
			// 	items: 2,
			// 	margin: 10,
			// 	dots: false,
			// 	autoWidth: true,
			// 	responsive: {
			// 		767: {
			// 			items: 5,
			// 			margin: 2
			// 		},
			// 		1024: {
			// 			items: 6,
			// 			margin: 16
			// 		}
			// 	}
			// })
		}

		$('.nav').on('click', '.has_dropdown', function(event) {
			var $this = $(this);

			if ($win.outerWidth() < tabletWidth) {
				$this.find('.dropdown').slideToggle().closest('li').siblings().find('.dropdown').slideUp();
				event.preventDefault();
			}
		});

		$sliderNav.find('li').on('click', function() {
			var $this = $(this);

			$this.addClass('current').closest('.owl-item').siblings().find('li').removeClass('current');

			$sliderPortfolio.trigger('to.owl.carousel', [$this.closest('.owl-item').index(), 400]);
		});

		$('.navTrigger').on('click', function(event) {
			$(this).toggleClass('navTrigger-active');

			$('.nav').toggleClass('open');

			$('.header-secondary').toggleClass('navOpen');

			event.preventDefault();
		});

		//Hide the inactive sections
		$('.accordion_section').not('.accordion_section-current').find('.accordion_body').hide()

		//Handle the show/hide logic
		$('.accordion').on('click', '.accordion_head', function (event) {
			$(this).next().stop().slideToggle()
			.parent().toggleClass('accordion_section-current');
		});

		// Tabs
		var activeTabClass = 'current';

		$('.tabs_nav a').on('click', function(event) {
			event.preventDefault();

			var $tabLink = $(this);
			var $targetTab = $($tabLink.attr('href'));

			$tabLink.parent().add($targetTab).addClass(activeTabClass).siblings().removeClass(activeTabClass);
		});

	});
})(window, document, window.jQuery);

// new Vue().$mount('#portfolio');

// window.Vue = Vue;
