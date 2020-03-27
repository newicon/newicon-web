{$id = id()}
{$folio = [
'bbsp' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/folio/bbsp-no-border.svg',
'screenshot' => 'images/photos/iphone-user-screenshot.jpg',
'logo_light' => 'images/temp/slider-nav-image-2-white.png',
'logo_dark' => 'images/temp/slider-nav-image-2.png'
],
'renex' => [
'title' => 'Renewable Exchange',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/folio/renex.svg',
'screenshot' => 'images/photos/iphone-user-screenshot.jpg',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'renex2' => [
'title' => 'TEDxBristol',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/folio/tedx-no-border.svg',
'screenshot' => 'images/photos/iphone-user-screenshot.jpg',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'bbsp1' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/folio/bbsp-no-border.svg',
'screenshot' => 'images/photos/iphone-user-screenshot.jpg',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
]
]}


{css}
	<style>
		.img-fluid { width: 100%; height: auto; }
		.portfolio-text2 { opacity: 0; transition: opacity 0.2s ease-in 0.2s }
		.is-selected .portfolio-text2 { opacity: 1 }
		.carousel-cell { width: 68%; margin:0 2%; min-height:100vh; }
		.carousel-cell:not(.is-selected) img { transform: scale(.9);}
		.carousel-cell img { will-change:transform; transition: transform .5s cubic-bezier(.19,1,.22,1); transform: scale(1); border-radius: 8px; box-shadow: 15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 50px 0px rgba(0, 0, 0, 0.2); }
		.screenshot-shadow { box-shadow: 0 0 2px rgba(6,67,117,.3), 0 10px 58px rgba(6,67,117,.2) }
	</style>
{/css}

<section class="section my-24 slider-portfolio">
    {header_center title="Our Work" sub="Some projects we're proud of :-)"}
	<div data-flickity='{ "wrapAround": true,  "contain": true, "selectedAttraction": 0.1, "friction": 0.8, "prevNextButtons": false }'>
        {foreach $folio as $item}
			<div class="carousel-cell py-20" data-index="{$item@index}">
				<img class="screenshot-shadow img-fluid ease-out mb-2" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
				<div class="portfolio-text2 mt-16 px-4 flex-shrink md:w-2/3 mx-auto text-center">
					<h6 class="text-xs uppercase text-gray-500">Case Study</h6>
					<h3>{$item['title']}</h3>
					<p>{$item['body']}</p>
					<a class="mt-10 btn btn-outline-primary px-16 btn-fx btn-lg" href="{page_url id=$item['link']}">Explore</a>
				</div>
			</div>
        {/foreach}
	</div>
    {css}{literal}.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-button{position:absolute;background:hsla(0,0%,100%,.75);border:none;color:#333}.flickity-button:hover{background:#fff;cursor:pointer}.flickity-button:focus{outline:0;box-shadow:0 0 0 5px #19f}.flickity-button:active{opacity:.6}.flickity-button:disabled{opacity:.3;cursor:auto;pointer-events:none}.flickity-button-icon{fill:currentColor}.flickity-prev-next-button{top:50%;width:44px;height:44px;border-radius:50%;transform:translateY(-50%)}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button .flickity-button-icon{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}{/literal}{/css}
    {jsFile src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js" attributes=[ 'defer'=>'']}
</section>