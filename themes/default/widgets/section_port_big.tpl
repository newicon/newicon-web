{$id = id()}
{$folio = [
	'bbsp' => [
		'title' => 'Bristol and Bath Science Park',
		'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
		'link' => 'case-study-bbsp',
		'screenshot' => 'images/work/folio/bbsp-no-border.svg',
		'logo_light' => 'images/temp/slider-nav-image-2-white.png',
		'logo_dark' => 'images/temp/slider-nav-image-2.png'
	],
	'renex' => [
		'title' => 'Renewable Exchange',
		'body' => 'Renewable engery is awesome :thumsup:',
		'link' => '#',
		'screenshot' => 'images/work/folio/renex.svg',
		'screenshot' => 'images/work/folio/bbsp-no-border.svg',
		'logo_light' => 'images/temp/slider-nav-image-3-white.png',
		'logo_dark' => 'images/temp/slider-nav-image-3.png'
	],
	'renex2' => [
		'title' => 'TEDxBristol',
		'body' => 'Renewable engery is awesome :thumsup:',
		'link' => '#',
		'screenshot' => 'images/work/folio/tedx-no-border.svg',
		'screenshot' => 'images/work/folio/bbsp-no-border.svg',
		'logo_light' => 'images/temp/slider-nav-image-3-white.png',
		'logo_dark' => 'images/temp/slider-nav-image-3.png'
	],
	'bbsp1' => [
		'title' => 'Bristol and Bath Science Park',
		'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
		'link' => 'case-study-bbsp',
		'screenshot' => 'images/work/folio/bbsp-no-border.svg',
		'screenshot' => 'images/work/folio/bbsp-no-border.svg',
		'logo_light' => 'images/temp/slider-nav-image-3-white.png',
		'logo_dark' => 'images/temp/slider-nav-image-3.png'
	]
]}
{* inline the core glide styles to avoid further network request *}
{css id=glide}
	.glide{ position:relative;width:100%;box-sizing:border-box }.glide *{ box-sizing:inherit }.glide__track{ overflow:hidden }.glide__slides{ position:relative;width:100%;list-style:none;backface-visibility:hidden;transform-style:preserve-3d;touch-action:pan-Y;overflow:hidden;padding:0;white-space:nowrap;display:flex;flex-wrap:nowrap;will-change:transform }.glide__slides--dragging{ user-select:none }.glide__slide{ width:100%;height:100%;flex-shrink:0;white-space:normal;user-select:none;-webkit-touch-callout:none;-webkit-tap-highlight-color:transparent }.glide__slide a{ user-select:none;-webkit-user-drag:none;-moz-user-select:none;-ms-user-select:none }.glide__arrows{ -webkit-touch-callout:none;user-select:none }.glide__bullets{ -webkit-touch-callout:none;user-select:none }.glide--rtl{ direction:rtl }
{/css}
<style>

	.img-skewed-left { perspective-origin: left center; }
	.img-skewed { perspective: 1500px; transform-style: preserve-3d; }
	.img-skewed-left .img-skewed-item { transform: transform:rotate3d(1, 1, 1, 10deg); -webkit-backface-visibility: hidden; backface-visibility: hidden; }
	.img-skewed-right { perspective-origin: right center; }
	.img-skewed-right .img-skewed-item { transform: rotateY(35deg) rotateX(15deg); -webkit-backface-visibility: hidden; backface-visibility: hidden; }
	.screenshot { border-radius: .625rem; box-shadow: 25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2); }
	/*.screenshot2 {  border:10px solid white; transform:rotate3d(1, 1, 1, -5deg); border-radius: .625rem; box-shadow:15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }*/


	.img-fluid { width: 100%; height: auto; }

	.subtitleSmallCaps {
		margin-bottom: 19px;
		font-weight: 800;
		font-size: 12px;
		color: #A7B1C0;
		text-transform: uppercase;
	}

	.glide__track { overflow: visible; }
	.glide__slides { overflow: visible; margin: 0;}
	.glide { overflow:hidden; }
	/*.glide.portfolio { height:100vh; }*/

	/*[data-aos=img-skewed-item-left], [data-aos=img-skewed-item-right] {*/
	/*	opacity: 0;*/
	/*	transition-property: opacity, transform, shadow;*/
	/*	will-change: opacity, transform, -webkit-transform, shadow;*/
	/*	-webkit-backface-visibility: hidden;*/
	/*	backface-visibility: hidden;*/
	/*}*/
	/*.glide__slide--active [data-aos=img-skewed-item-left].aos-animate {*/
	/*	transform: rotate(-3deg);*/
	/*	box-shadow:35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);*/
	/*}*/
	/*.glide__slide--active [data-aos=img-skewed-item-left].aos-animate, .glide__slide--active [data-aos=img-skewed-item-right].aos-animate {*/
	/*	opacity: 1;*/
	/*}*/


	.portfolio_slide:not(.is-active) img { -ms-transform: scale(.9); transform: scale(.9); box-shadow: 0 13px 27px -5px rgba(50,50,93,.25), 0 8px 16px -8px rgba(0,0,0,.3), 0 -6px 16px -6px rgba(0,0,0,.025)}
	.portfolio_slide img { border-radius: 8px; transition: all .5s; -ms-transform-origin: center;transform-origin: center; box-shadow:15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2) }

	.screenshot-shadow { box-shadow: 0 0 2px rgba(6,67,117,.3), 0 10px 58px rgba(6,67,117,.2) }

	.portfolio_slide:not(.glide__slide--active) .portfolio_text { opacity:0; }
	.portfolio_slide .portfolio_text { transition: opacity .4s cubic-bezier(.19,1,.22,1); }
</style>

<section class="section py-24  slidy slider-portfolio">
	<header class="section_head">
		<div class="shell">
			<h2 class="section_title">Our Work</h2>
			<h4 class="section_subtitle">Projects we're proud of</h4>
		</div>
	</header>
	<div id="{$id}" class="h-screen flex flex-col" style="min-height:900px;">
		<div class="glide__bullets flex justify-center sliderNav slide_foot self-end my-10" data-glide-el="controls[nav]">
			{foreach $folio as $item}
				<button class="portfolio-btn outline-none mx-2" data-glide-dir="={$item@index}"  >
					<img src="{asset path=$item.logo_dark}" alt="" class="portfolio-btn__dark" width="101" height="32">
					<img src="{asset path=$item.logo_light}" alt="" class="portfolio-btn__light" width="101" height="32">
				</button>
			{/foreach}
		</div>

	</div>


<style>
	.carousel-cell {
		width: 68%;
		margin:0 2%;
		min-height:100vh;
	}
	.carousel-cell:not(.is-selected) img { -ms-transform: scale(.9); transform: scale(.9); box-shadow: 0 13px 27px -5px rgba(50,50,93,.25), 0 8px 16px -8px rgba(0,0,0,.3), 0 -6px 16px -6px rgba(0,0,0,.025)}
	.carousel-cell img { border-radius: 8px; transition: all .5s; -ms-transform-origin: center;transform-origin: center; box-shadow:15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2) }

	.screenshot-shadow { box-shadow: 0 0 2px rgba(6,67,117,.3), 0 10px 58px rgba(6,67,117,.2) }

</style>
{css}{literal}.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-button{position:absolute;background:hsla(0,0%,100%,.75);border:none;color:#333}.flickity-button:hover{background:#fff;cursor:pointer}.flickity-button:focus{outline:0;box-shadow:0 0 0 5px #19f}.flickity-button:active{opacity:.6}.flickity-button:disabled{opacity:.3;cursor:auto;pointer-events:none}.flickity-button-icon{fill:currentColor}.flickity-prev-next-button{top:50%;width:44px;height:44px;border-radius:50%;transform:translateY(-50%)}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button .flickity-button-icon{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}{/literal}{/css}
<link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js" async defer></script>
<div class="carousel" data-flickity='{ "wrapAround": true,  "contain": true, "selectedAttraction": 0.1, "friction": 0.8 }'>
    {foreach $folio as $item}
		<div class="carousel-cell cursor-grab" data-index="{$item@index}">
			<img class="screenshot-shadow img-fluid ease-in mb-2" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
			<div class="mt-16 flex-shrink md:w-1/3 mx-auto text-center">
				<h6 class="text-xs uppercase text-gray-500">Case Study</h6>
				<h3>{$item['title']}</h3>
				<p>{$item['body']}</p>
				<a class="btn btn-primary btn-outline" href="{page_url id=$item['link']}">Explore</a>
			</div>
		</div>
    {/foreach}
</div>
