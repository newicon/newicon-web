{* add additional scripts here *}
<script src="{asset path='/vendor/jquery-3.1.1.min.js'}"></script>
{*<script src="{asset path='/vendor/OwlCarousel2-2.3.4/dist/owl.carousel.min.js'}"></script>*}
<script src="{asset path='/js/bundle.mix.js'}"></script>

<!-- Calendly link widget begin -->
<link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
<script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript"></script>
<!-- Calendly link widget end -->
{* Keep this to include any body scripts and keep at the end *}
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script  src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
	AOS.init({
		easing: 'ease-out-quad',
		once: true,
		startEvent: 'load'
	});
</script>
{neon_body_end}