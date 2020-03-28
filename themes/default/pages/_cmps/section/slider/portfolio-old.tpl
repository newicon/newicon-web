{$folio = [
'bbsp' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
'company' => 'Bristol and Bath Science Park',
'logo_light' => 'images/temp/slider-nav-image-2-white.png',
'logo_dark' => 'images/temp/slider-nav-image-2.png'
],
'renex' => [
'title' => 'Renewable Exchange',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
'company' => 'Renewable Exchange',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'renex2' => [
'title' => 'TEDxBristol',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
'company' => 'TEDxBristol',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'bbsp1' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
'company' => 'Bristol and bath science park',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
]
]}
{$id = id()}
{* inline the core glide styles to avoid further network request *}
{css id=glide}
	<style>
		#{$id} { height:1500px; }
		.portfolio-btn { border:0; width: 177px; height: 68px; position: relative; border-radius: 2px; background-color: var(--blue-500); text-align: center; cursor: pointer; outline:none; }
		.portfolio-btn:after { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-color: transparent transparent #0067FF; transparent; transform: translate(-50%); z-index:2; border-width:0; }
		.portfolio-btn img { position: absolute; top: 50%; transform: translate(-50%, -50%); left: 50%; }
		.portfolio-btn .portfolio-btn__dark  { opacity: 0.5; }
		.portfolio-btn:hover .portfolio-btn__dark { opacity: 1; }
		.portfolio-btn .portfolio-btn__light  { opacity: 0; }
		button.portfolio-btn{ outline: 0; }
		.portfolio-btn.is-selected { background-color: #0067FF; box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); }
		.portfolio-btn.is-selected:after { border-width: 0 10px 10px 10px; }
		.is-selected .portfolio-btn__light { opacity: 1; }
		.is-selected .portfolio-btn__dark { opacity: 0; }

		.portfolio-text { opacity: 0; transition: opacity 0.4s ease-in .01s }
		.is-selected .portfolio-text { opacity: 1 }

		.screenshot { transition: transform .4s ease-out .1s; opacity: 0.5;transform: scale(0.9) rotate(-6deg); }
		.screenshot { opacity: 1; transform:scale(0.9) rotate(-3deg); box-shadow:none; }
		/*box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);*/
		.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(0deg);  }
		#{$id} .flickity-page-dots { display:block; }
		@media (min-width: 1024px) {
		#{$id} .flickity-page-dots { display:none; }
			.screenshot { opacity: 0; transform:scale(0.9) rotate(-10deg); box-shadow:none; }
			.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(-3deg);  }
		}
		/*box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);*/
		.portfolio-gradient { background:linear-gradient(180deg, rgba(243,245,249,1) 0%, rgba(255,255,255,1) 100%) }
	</style>
{/css}

<section id="{$id}" class="py-24 portfolio-gradient ">

    {header_center title="Our Work" sub="Projects we're proud of :-)"}

	<div class="" data-flick-slides class="-mt-10">
        {foreach $folio as $item}
			<div class="porto w-full px-6% sm:px-1/12 flex flex-col lg:flex-row xl:max-w-screen-2xl pt-15 lg:pt-20 lg:pb-24 pb-5">
				<div class="mt-10 lg:pr-20 lg:mt-auto lg:mb-auto portfolio-text text-center lg:text-left my-auto flex-shrink order-1 lg:order-0">
					<b class="text-xs uppercase text-gray-500 font-bold block mb-4">Case Study</b>
					<h3 class="text-3xl text-blue-950">{$item['title']}</h3>
					<p class="text-lg text-gray-700">{$item['body']}</p>
					<a class="mt-5 px-16 btn btn-outline-primary btn-fx btn-lg" href="{page_url id=$item['link']}">Explore</a>
				</div>
				<div class="flex-grow order-0 lg:order-1 self-center lg:-mr-40">
					{* shadow-2xl rounded-lg border-white border-8  *}
					<img class="screenshot lg:rotate-3 img-fluid" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
				</div>
			</div>
        {/foreach}
	</div>

	<div class="flex justify-center sliderNav slide_foot self-end hidden lg:block text-center" data-flick-nav>
        {foreach $folio as $item}
			<button role="button" aria-label="Select the {$item.company} Case Study" class=" outline-none portfolio-btn mx-2 w-24 {if ($item@index == 0)}is-selected{/if}" data-select="{$item@index}" >
				<img src="{asset path=$item.logo_dark}" alt="{$item.company}" class="portfolio-btn__dark" width="101" height="32">
				<img src="{asset path=$item.logo_light}" alt="{$item.company}" class="portfolio-btn__light" width="101" height="32">
			</button>
        {/foreach}
	</div>

    {cssFile src="https://unpkg.com/flickity@2/dist/flickity.min.css"}
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
					"prevNextButtons": false,
					"pageDots": true,
					imagesLoaded: true,
					accessibility:true,
					friction:.5,
					selectedAttraction:.08,

					//wrapAround:!0,pageDots:!0,prevNextButtons:!1,draggable:!0,selectedAttraction:.08,friction:.5
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