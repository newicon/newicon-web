{$folio = [
'bbsp' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/folio/bbsp-no-border.svg',
'company' => 'Bristol and Bath Science Park',
'logo_light' => 'images/temp/slider-nav-image-2-white.png',
'logo_dark' => 'images/temp/slider-nav-image-2.png'
],
'renex' => [
'title' => 'Renewable Exchange',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/folio/renex.svg',
'company' => 'Renewable Exchange',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'renex2' => [
'title' => 'TEDxBristol',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/folio/tedx-no-border.svg',
'company' => 'TEDxBristol',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'bbsp1' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/folio/bbsp-no-border.svg',
'company' => 'Bristol and bath science park',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
]
]}
{$id = id()}
{* inline the core glide styles to avoid further network request *}
{css id=glide}
	<style>
	.portfolio-btn { border:0; width: 177px; height: 68px; position: relative; border-radius: 2px; background-color: var(--blue-500); text-align: center; cursor: pointer; transition: background .1s, box-shadow .1s ease-out; outline:none; }
	.portfolio-btn:after { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-color: transparent transparent #0067FF; transparent; transform: translate(-50%);  transition: border 0.3s ease; z-index:2; border-width:0; }
	.portfolio-btn img { transition: opacity .4s ease-out; position: absolute; top: 50%; transform: translate(-50%, -50%); left: 50%; }
	.portfolio-btn .portfolio-btn__dark  { opacity: 0.5; }
	.portfolio-btn:hover .portfolio-btn__dark { opacity: 1; }
	.portfolio-btn .portfolio-btn__light  { opacity: 0; }
	button.portfolio-btn{ outline: 0; }
	.portfolio-btn.is-selected { background-color: #0067FF; -webkit-box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); }
	.portfolio-btn.is-selected:after { border-width: 0 10px 10px 10px; }
	.is-selected .portfolio-btn__light { opacity: 1; }
	.is-selected .portfolio-btn__dark { opacity: 0; }

	.portfolio-text { opacity: 0; transition: opacity 0.4s ease-in }
	.is-selected .portfolio-text { opacity: 1 }

	.screenshot { transition: all 0.4s ease-out;opacity: 0.5;transform: scale(0.9) rotate(-6deg);transition-property: opacity, transform, shadow; }
	.screenshot { opacity: 1; transform:scale(0.9) rotate(-3deg); box-shadow:none; }
	.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(0deg); box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }
	#{$id} .flickity-page-dots { display:block; }
	@media (min-width: 1024px) {
		#{$id} .flickity-page-dots { display:none; }
		.screenshot { opacity: 0; transform:scale(0.9) rotate(-10deg); box-shadow:none; }
		.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(-3deg); box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }
	}
	</style>
{/css}

<section id="{$id}" class="py-24" style="background:linear-gradient(180deg, rgba(243,245,249,1) 0%, rgba(255,255,255,1) 100%)">

	{header_center title="Our Work" sub="Projects we're proud of :-)"}

	<div class="" data-flick-slides class="-mt-10">
        {foreach $folio as $item}
			<div class="px-6% sm:px-1/12 flex flex-col lg:flex-row xl:max-w-screen-2xl w-screen pt-15 lg:pt-20 lg:pb-24 pb-5">
				<div class="mt-10 lg:pr-10 lg:mt-auto lg:mb-auto portfolio-text text-center lg:text-left my-auto flex-shrink lg:w-1/3 order-1 lg:order-0">
					<b class="text-xs uppercase text-gray-500 font-bold block mb-4">Case Study</b>
					<h3 class="text-3xl text-blue-950">{$item['title']}</h3>
					<p class="text-lg text-gray-700">{$item['body']}</p>
					<a class="mt-5 px-16 btn btn-outline-primary btn-fx btn-lg" href="{page_url id=$item['link']}">Explore</a>
				</div>
				<div class="flex-grow img-skewed img-skewed-left order-0 lg:order-1 self-center lg:-mr-40">
					<img class="screenshot rounded-lg border-white border-8 lg:rotate-3 shadow-2xl img-skewed-item-left img-fluid" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
				</div>
			</div>
        {/foreach}
	</div>

	<div class="flex justify-center sliderNav slide_foot self-end hidden lg:block text-center" data-flick-nav>
        {foreach $folio as $item}
			<button role="button" aria-label="Select the {$item.company} Case Study" class=" transition duration-150 outline-none portfolio-btn mx-2 w-24 {if ($item@index == 0)}is-selected{/if}" data-select="{$item@index}" >
				<img src="{asset path=$item.logo_dark}" alt="{$item.company}" class="portfolio-btn__dark" width="101" height="32">
				<img src="{asset path=$item.logo_light}" alt="{$item.company}" class="portfolio-btn__light" width="101" height="32">
			</button>
        {/foreach}
	</div>

    {css}{literal}.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-button{position:absolute;background:hsla(0,0%,100%,.75);border:none;color:#333}.flickity-button:hover{background:#fff;cursor:pointer}.flickity-button:focus{outline:0;box-shadow:0 0 0 5px #19f}.flickity-button:active{opacity:.6}.flickity-button:disabled{opacity:.3;cursor:auto;pointer-events:none}.flickity-button-icon{fill:currentColor}.flickity-prev-next-button{top:50%;width:44px;height:44px;border-radius:50%;transform:translateY(-50%)}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button .flickity-button-icon{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}{/literal}{/css}
    {jsFile src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js" attributes=['defer'=>'']}
	{js pos=ready}
		<script>
			(function() {
				var $navButtons = $('#{$id} [data-select]');
				var $nav = $('#{$id} [data-flick-nav]');
				var flick = new Flickity('#{$id} [data-flick-slides]', {
					"dragThreshold": 10,
					"wrapAround": true,
					"contain": true,
					"selectedAttraction": 0.1,
					"friction": 0.8,
					"prevNextButtons": false,
					"pageDots": true,
				});
				flick.on('select', function () {
					$navButtons.removeClass('is-selected');
					$navButtons.eq(flick.selectedIndex).addClass('is-selected');
				});
				$nav.on('click', 'button', function () {
					flick.selectCell($(this).index());
				})
			})();
		</script>
	{/js}
</section>

