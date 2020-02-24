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
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'renex2' => [
'title' => 'TEDxBristol',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/folio/tedx-no-border.svg',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'bbsp1' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/folio/bbsp-no-border.svg',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
]
]}
{* inline the core glide styles to avoid further network request *}
{css id=glide}
	<style>
	.glide{ position:relative;width:100%;box-sizing:border-box }.glide *{ box-sizing:inherit }.glide__track{ overflow:hidden }.glide__slides{ position:relative;width:100%;list-style:none;backface-visibility:hidden;transform-style:preserve-3d;touch-action:pan-Y;overflow:hidden;padding:0;white-space:nowrap;display:flex;flex-wrap:nowrap;will-change:transform }.glide__slides--dragging{ user-select:none }.glide__slide{ width:100%;height:100%;flex-shrink:0;white-space:normal;user-select:none;-webkit-touch-callout:none;-webkit-tap-highlight-color:transparent }.glide__slide a{ user-select:none;-webkit-user-drag:none;-moz-user-select:none;-ms-user-select:none }.glide__arrows{ -webkit-touch-callout:none;user-select:none }.glide__bullets{ -webkit-touch-callout:none;user-select:none }.glide--rtl{ direction:rtl }

	.screenshot { border-radius: .625rem; box-shadow: 25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2); }


	.img-fluid { width: 100%; height: auto; }

	.glide__track { overflow: visible; }
	.glide__slides { overflow: visible; margin: 0;}
	.glide { overflow:hidden; }
	/*.glide.portfolio { height:100vh; }*/



	.portfolio-btn { border:0; width: 177px; height: 68px; position: relative; border-radius: 2px; background-color: var(--blue-500); text-align: center; cursor: pointer; transition: background .1s, box-shadow .1s ease-out; outline:none; }
	.portfolio-btn:after { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-color: transparent transparent #0067FF; transparent; transform: translate(-50%);  transition: border 0.3s ease; z-index:2; border-width:0; }

	.portfolio-btn img { transition: opacity .4s ease-out; position: absolute; top: 50%; transform: translate(-50%, -50%); left: 50%; }

	.portfolio-btn .portfolio-btn__dark  { opacity: 0.5; }
	.portfolio-btn:hover .portfolio-btn__dark { opacity: 1; }

	.portfolio-btn .portfolio-btn__light  { opacity: 0; }

	.portfolio-btn--active .portfolio-btn__light { opacity: 1; }
	.portfolio-btn--active .portfolio-btn__dark { opacity: 0; }
	.portfolio-btn--active { background-color: #0067FF; -webkit-box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); }
	.portfolio-btn--active:after { border-width: 0 10px 10px 10px; }

	.screenshot2 {  border:10px solid white; transform:rotate3d(1, 1, 1, -5deg); border-radius: .625rem; box-shadow:15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }
	.screenshot2 {
		transition: all 1s ease;
		opacity: 0;
		transform: rotate(-3deg);
		box-shadow:35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);
		transition-property: opacity, transform, shadow;
	}

	.img-skewed-left { perspective-origin: left center; }
	.img-skewed { }
	.img-skewed-left .img-skewed-item { transform: transform:rotate3d(1, 1, 1, 10deg); -webkit-backface-visibility: hidden; backface-visibility: hidden; }

	.img-skewed-item-left, .img-skewed-item-right {
		opacity: 0;
		transition-property: opacity, transform;
		will-change: opacity, transform, -webkit-transform;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden
	}

	.is-selected .img-skewed-item-left {
		perspective: 1500px;
		transform-style: preserve-3d;
		/*transform: rotateY(-35deg) rotateX(15deg) translate3d(0,0,0);*/
	}

	.is-selected .screenshot2 { opacity: 1; }

	button.portfolio-btn{ outline: 0; }
	</style>
{/css}



<section class="section py-24  slider-portfolio" style="background:linear-gradient(180deg, rgba(243,245,249,1) 0%, rgba(255,255,255,1) 100%)">
	<header class="text-center">
		<h2 class="text-4xl font-bold">Our Work</h2>
		<h4 class="ni-italic">Projects we're proud of :-)</h4>
	</header>

    {css}{literal}.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-button{position:absolute;background:hsla(0,0%,100%,.75);border:none;color:#333}.flickity-button:hover{background:#fff;cursor:pointer}.flickity-button:focus{outline:0;box-shadow:0 0 0 5px #19f}.flickity-button:active{opacity:.6}.flickity-button:disabled{opacity:.3;cursor:auto;pointer-events:none}.flickity-button-icon{fill:currentColor}.flickity-prev-next-button{top:50%;width:44px;height:44px;border-radius:50%;transform:translateY(-50%)}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button .flickity-button-icon{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}{/literal}{/css}
    {jsFile src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js" attributes=['async', 'defer']}

	<div class="carousel" data-flickity='{ "wrapAround": true,  "contain": true, "selectedAttraction": 0.1, "friction": 0.8, "prevNextButtons": false, "pageDots": false }'>
        {foreach $folio as $item}
			<div class="flex flex-col md:flex-row w-screen py-20">
				<div class="my-auto flex-shrink md:w-1/3 mx-20 ">
					<b class="text-xs uppercase text-gray-500 font-bold block mb-4">Case Study</b>
					<h3 class="text-3xl text-blue-900">{$item['title']}</h3>
					<p class="text-lg text-gray-700">{$item['body']}</p>
					<a class="btn btn-primary btn-outline" href="{page_url id=$item['link']}">Explore</a>
				</div>
				<div class="flex-grow mr-10 img-skewed img-skewed-left">
					<img class="screenshot2 shadow-2xl img-skewed-item-left img-fluid" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
				</div>
			</div>
        {/foreach}
	</div>

	<div class="glide__bullets flex justify-center sliderNav slide_foot self-end" data-glide-el="controls[nav]">
        {foreach $folio as $item}
			<button class="outline-none glide__bullet portfolio-btn mx-2" onclick="this.classList.add('portfolio-btn--active')" data-glide-dir="={$item@index}">
				<img src="{asset path=$item.logo_dark}" alt="" class="portfolio-btn__dark" width="101" height="32">
				<img src="{asset path=$item.logo_light}" alt="" class="portfolio-btn__light" width="101" height="32">
			</button>
        {/foreach}
	</div>



{*	<div class=" glide portfolio h-screen js-portfolio flex flex-col" style="min-height:700px;">*}
{*		<div class="glide__track flex-grow flex" data-glide-el="track">*}
{*			<ul class="glide__slides self-center">*}
{*				{foreach $folio as $item}*}
{*					<li class="glide__slide" data-index="{$item@index}">*}
{*						<div class="flex sm:flex-col md:flex-row">*}
{*							<div class="my-auto flex-shrink md:w-1/3 mx-20 ">*}
{*								<h6 class="text-xs uppercase text-gray-500 font-bold">Case Study</h6>*}
{*								<h3>{$item['title']}</h3>*}
{*								<p>{$item['body']}</p>*}
{*								<a class="btn btn-primary btn-outline" href="{page_url id=$item['link']}">Explore</a>*}
{*							</div>*}
{*							<div class="flex-grow mr-10 img-skewed img-skewed-left">*}
{*								<img class="screenshot2 img-fluid" data-aos="img-skewed-item-left" data-aos-delay="5" data-aos-duration="500" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">*}
{*							</div>*}
{*						</div>*}
{*					</li>*}
{*	            {/foreach}*}
{*			</ul>*}
{*		</div>*}
{*		*}
{*	</div>*}
</section>