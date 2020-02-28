{*
---
{
"name": "Testimonials widget",
"category": "Page",
"props": {
	"testimonials": {
		"type": Object,
	}
}
---
*}

{* inline the core glide styles to avoid further network request *}
{css id=glide}
	.glide{ position:relative;width:100%;box-sizing:border-box }.glide *{ box-sizing:inherit }.glide__track{ overflow:hidden }.glide__slides{ position:relative;width:100%;list-style:none;backface-visibility:hidden;transform-style:preserve-3d;touch-action:pan-Y;overflow:hidden;padding:0;white-space:nowrap;display:flex;flex-wrap:nowrap;will-change:transform }.glide__slides--dragging{ user-select:none }.glide__slide{ width:100%;height:100%;flex-shrink:0;white-space:normal;user-select:none;-webkit-touch-callout:none;-webkit-tap-highlight-color:transparent }.glide__slide a{ user-select:none;-webkit-user-drag:none;-moz-user-select:none;-ms-user-select:none }.glide__arrows{ -webkit-touch-callout:none;user-select:none }.glide__bullets{ -webkit-touch-callout:none;user-select:none }.glide--rtl{ direction:rtl }
{/css}
<section class="section section-testimonials">
	<header class="section_head">
		<div class="shell">
			<h2 class="section_title">Testimonals</h2>
			<h4 class="section_subtitle">Listen to what our customers say about us</h4>
		</div>
	</header>

	{$id = uuid64()}
	{$tests = [
		'bbsp' => [
			'quote_name' => 'Tom Beasley'
		],
		'other' => [
            'quote_name' => 'Steve O\'Brien'
		],
		'ttt' => [
			'quote_name' => 'Bob'
		]
	]}

	<div class="section_body">
		<div class="glide" id="testimonials">
			<div class="glide__track pb-10" data-glide-el="track">
				<ul class="glide__slides">
                    {foreach $tests as $test}
					<li class="glide__slide">
						<div class="flex-col flex md:flex-row shadow-lg rounded-lg">
							<div class="video h-64 rounded-t-lg md:rounded-l-lg md:rounded-r-none md:w-1/2 md:h-auto object-cover bg-cover bg-center" style="background-image: url('{asset path='images/temp/testimonial-image-1.jpg'}');" >
								<a href="https://www.youtube.com/watch?v=SrAzkFIYjFA?autoplay=1&rel=0" class="video_btn link-popup">
									<svg width="23" height="25" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
									</svg>
								</a>
							</div>
							<div class="flex-shrink mx-auto testimonial">
								<div class="testimonial_entry">
									<blockquote>
										From the outset, Newicon really understood what we were trying to achieve.
									</blockquote>
									<div class="testimonial_entryInner">
										<cite>{$test.quote_name}</cite>
										<p>Head of Bristol &amp; Bath Science Park</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					{/foreach}
				</ul>
			</div>
			<div class="glide__bullets flex justify-center" data-glide-el="controls[nav]">
                {foreach $tests as $item}
					<button class="glide__bullet h-3 w-3 m-1 outline-none focus:shadow-outline hover:bg-black rounded-full border border-gray-900 " data-glide-dir="={$item@index}"></button>
                {/foreach}
			</div>
		</div>
	</div>
</section>




{jsFile src="https://cdn.jsdelivr.net/npm/@glidejs/glide"}
{js}
	<script>
		(function() {
			var glidey = new Glide('#testimonials', {
				type: 'carousel',
				perView: 1,
				activeNav: 'current',
				gap: 30,
				peek: { before: 30, after: 50 },
				breakpoints: {
					600: {
						gap: 40,
						peek: { before: 50, after: 50 },
					}
				}
			});
			glidey.mount();
		})();
	</script>
{/js}
