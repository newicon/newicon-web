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
	.screenshot2 {  border:10px solid white; transform:rotate3d(1, 1, 1, -5deg); border-radius: .625rem; box-shadow:15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }


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

	.glide__bullet--portfolio {  border:0; margin:0 1%; -webkit-box-flex: 0; -ms-flex: 0 0 177px; flex: 0 0 177px; max-width: 177px; width: 177px; height: 68px; position: relative; display: -webkit-box; display: -ms-flexbox; display: flex; -webkit-box-pack: center; -ms-flex-pack: center; justify-content: center; -webkit-box-align: center; -ms-flex-align: center; align-items: center; border-radius: 2px; background-color: #F0F3F7; text-align: center; cursor: pointer; -webkit-transition: background .4s, -webkit-box-shadow .4s; transition: background .4s, -webkit-box-shadow .4s; -o-transition: background .4s, box-shadow .4s; transition: background .4s, box-shadow .4s; transition: background .4s, box-shadow .4s, -webkit-box-shadow .4s; border-width:0; }
	.glide__bullet--portfolio:after { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent transparent #0067FF; transparent; -webkit-transform: translate(-50%); -ms-transform: translate(-50%); transform: translate(-50%);  transition: border 0.3s ease; z-index:2; border-width:0; }
	.glide__bullet--portfolio:hover:after { border-width: 0 10px 10px 10px; }
	.glide__bullet--portfolio img { opacity: .5; -webkit-transition: opacity .4s; -o-transition: opacity .4s; transition: opacity .4s; }
	.sliderNav .visibleOnHover { position: absolute; top: 50%; left: 50%; -webkit-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); transform: translate(-50%, -50%); opacity: 0; pointer-events: none; -webkit-transition: opacity .4s; -o-transition: opacity .4s; transition: opacity .4s; }



	.sliderNav .glide__bullet--active,
	.sliderNav .glide__bullet--portfolio:hover { background-color: #0067FF; -webkit-box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); box-shadow: 0 2px 24px 0 rgba(0,0,0, .25); }
	.sliderNav .glide__bullet--active:after { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent transparent #0067FF; transparent; -webkit-transform: translateX(-50%); -ms-transform: translateX(-50%); transform: translateX(-50%); }

	.sliderNav .glide__bullet--active .hiddenOnHover,
	.sliderNav .glide__bullet--portfolio:hover .hiddenOnHover { opacity: 0; pointer-events: none; }
	.sliderNav .glide__bullet--active .visibleOnHover,
	.sliderNav .glide__bullet--portfolio:hover .visibleOnHover { opacity: 1; pointer-events: auto; }

	[data-aos=img-skewed-item-left], [data-aos=img-skewed-item-right] {
		opacity: 0;
		transition-property: opacity, transform, shadow;
		will-change: opacity, transform, -webkit-transform, shadow;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	}
	.glide__slide--active [data-aos=img-skewed-item-left].aos-animate {
		transform: rotate(-3deg);
		box-shadow:35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);
	}
	.glide__slide--active [data-aos=img-skewed-item-left].aos-animate, .glide__slide--active [data-aos=img-skewed-item-right].aos-animate {
		opacity: 1;
	}

</style>
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
<section class="section py-24  slidy slider-portfolio" style="background:linear-gradient(180deg, rgba(243,245,249,1) 0%, rgba(255,255,255,1) 100%)">
	<header class="section_head">
		<div class="shell">
			<h2 class="section_title">Our Work</h2>
			<h4 class="section_subtitle">Projects we're proud of</h4>
		</div>
	</header>
	<div class=" glide portfolio h-screen js-portfolio flex flex-col" style="min-height:700px;">
		<div class="glide__track flex-grow flex" data-glide-el="track">
			<ul class="glide__slides self-center">
				{foreach $folio as $item}
					<li class="glide__slide">
						<div class="flex sm:flex-col md:flex-row">
							<div class="my-auto flex-shrink md:w-1/3 mx-20 ">
								<h6 class="slider_subtitle">Case Study</h6>
								<h3 class="slider_title">{$item['title']}</h3>
								<p>{$item['body']}</p>
								<a class="btn btn-primary btn-outline" href="{page_url id=$item['link']}">Explore</a>
							</div>
							<div class="flex-grow mr-10 img-skewed img-skewed-left">
								<img class="screenshot2 img-fluid" data-aos="img-skewed-item-left" data-aos-delay="5" data-aos-duration="500" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
							</div>
						</div>
					</li>
	            {/foreach}
			</ul>
		</div>
		<div class="glide__bullets flex justify-center sliderNav slide_foot self-end" data-glide-el="controls[nav]">
	        {foreach $folio as $item}
				<button class="glide__bullet glide__bullet--portfolio" data-glide-dir="={$item@index}">
					<img src="{asset path=$item.logo_dark}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path=$item.logo_light}" alt="" class="visibleOnHover" width="101" height="32">
				</button>
	        {/foreach}
		</div>
	</div>
</section>
{jsFile src="https://cdn.jsdelivr.net/npm/@glidejs/glide"}
{js}
<script>
	var glide = new Glide('.js-portfolio', {
		type: 'carousel',
		perView: 1,
		activeNav: 'current',
		gap: 0,
		// peek: { before: 0, after: 50 }
	});
	glide.mount();
</script>
{/js}
