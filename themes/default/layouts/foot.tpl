{* add additional scripts here *}
<script src="{asset path='/vendor/jquery-3.1.1.min.js'}"></script>
{*<script src="{asset path='/vendor/OwlCarousel2-2.3.4/dist/owl.carousel.min.js'}"></script>*}
<script src="{asset path='/js/bundle.mix.js'}"></script>

<!-- Calendly link widget begin -->
<link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
<script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript"></script>
<!-- Calendly link widget end -->
{* Keep this to include any body scripts and keep at the end *}
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" >
<script  src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.9"></script>
<script src="https://cdn.jsdelivr.net/npm/@glidejs/glide"></script>
<script>
	AOS.init({
		easing: 'ease-out-quad',
		once: true,
		startEvent: 'load'
	});

	(function() {

		//
		// Variables
		//

		var toggle = document.querySelectorAll('[data-toggle="typed"]');


		//
		// Functions
		//

		function init(el) {
			var elementOptions = el.dataset.options;
			elementOptions = elementOptions ? JSON.parse(elementOptions) : { };
			var defaultOptions = {
				typeSpeed: 40,
				backSpeed: 40,
				backDelay: 1000,
				loop: true
			}
			var options = Object.assign(defaultOptions, elementOptions);

			// Init
			new Typed(el, options);
		}


		//
		// Events
		//

		if (typeof Typed !== 'undefined' && toggle) {
			[].forEach.call(toggle, function(el) {
				init(el);
			});
		}

	})();
</script>
{neon_body_end}