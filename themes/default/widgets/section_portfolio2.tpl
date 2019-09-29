<style>

	.slidy_body { height: calc(100vh - 120px); position:relative;  border:1px solid black; }

	.flyer      { height: calc(100vh - 120px); display:flex; align-items: center; justify-content: space-evenly; }
	.flyer_text { width:45%; max-width:500px; margin-left:10vw;margin-right:6vw; }


	.flyer_image { flex: 2 1 auto; text-align:center; padding-right: 10vw; -khtml-user-select: none; -o-user-select: none; -moz-user-select: none; -webkit-user-select: none; user-select: none; }


	.img-skewed-left { perspective-origin: left center; }
	.img-skewed { perspective: 1500px; transform-style: preserve-3d; }
	.img-skewed-left .img-skewed-item { transform: rotateY(-35deg) rotateX(15deg); -webkit-backface-visibility: hidden; backface-visibility: hidden; }
	.img-skewed-right { perspective-origin: right center; }
	.img-skewed-right .img-skewed-item { transform: rotateY(35deg) rotateX(15deg); -webkit-backface-visibility: hidden; backface-visibility: hidden; }
	.screenshot { border-radius: .625rem; box-shadow: 25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2); }
	.screenshot2 {  border:10px solid white; transform:rotate3d(1, 1, 1, -5deg); border-radius: .625rem; box-shadow:25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }

	.img-fluid { width: 100%; height: auto; }

	.subtitleSmallCaps {
		margin-bottom: 19px;
		font-weight: 800;
		font-size: 12px;
		color: #A7B1C0;
		text-transform: uppercase;
	}

</style>


{*<div id="app">*}
{*	<agile class="main" ref="main" :options="options1" :as-nav-for="asNavFor1">*}
{*		<div class="slide" v-for="(slide, index) in slides" :key="index" :class="`slide--${index}`"><img :src="slide"/></div>*}
{*	</agile>*}
{*	<agile class="thumbnails" ref="thumbnails" :options="options2" :as-nav-for="asNavFor2">*}
{*		<div class="slide slide--thumbniail" v-for="(slide, index) in slides" :key="index" :class="`slide--${index}`" @click="$refs.thumbnails.goTo(index)"><img :src="slide"/></div>*}
{*		<template slot="prevButton"><i class="fas fa-chevron-left"></i></template>*}
{*		<template slot="nextButton"><i class="fas fa-chevron-right"></i></template>*}
{*	</agile>*}
{*</div>*}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@glidejs/glide/dist/css/glide.core.min.css">
{*<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@glidejs/glide/dist/css/glide.theme.min.css">*}
<style>

	.slidy { height:100vh; padding:0; margin: 50px 0; }
	.glide__track { overflow: visible; }
	.glide__slides { overflow: visible; margin: 0;}

	.glide.portfolio { height:100vh; }

	.glide__bullet--portfolio { background: transparent; border:0; margin:0 1%}
	.glide__bullets { justify-content: center; display:flex; position: absolute; bottom: 15px; margin: 0 auto; left: 0; right: 0; }
	.glide__bullet--portfolio { -webkit-box-flex: 0; -ms-flex: 0 0 177px; flex: 0 0 177px; max-width: 177px; width: 177px; height: 68px; position: relative; display: -webkit-box; display: -ms-flexbox; display: flex; -webkit-box-pack: center; -ms-flex-pack: center; justify-content: center; -webkit-box-align: center; -ms-flex-align: center; align-items: center; border-radius: 2px; background-color: #F0F3F7; text-align: center; cursor: pointer; -webkit-transition: background .4s, -webkit-box-shadow .4s; transition: background .4s, -webkit-box-shadow .4s; -o-transition: background .4s, box-shadow .4s; transition: background .4s, box-shadow .4s; transition: background .4s, box-shadow .4s, -webkit-box-shadow .4s; }
	.glide__bullet--portfolio img { opacity: .5; -webkit-transition: opacity .4s; -o-transition: opacity .4s; transition: opacity .4s; }
	.sliderNav .visibleOnHover { position: absolute; top: 50%; left: 50%; -webkit-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); transform: translate(-50%, -50%); opacity: 0; pointer-events: none; -webkit-transition: opacity .4s; -o-transition: opacity .4s; transition: opacity .4s; }

	.sliderNav .glide__bullet--active,
	.sliderNav .glide__bullet--portfolio:hover { background-color: #0067FF; -webkit-box-shadow: 0px 2px 24px 0px rgba(0,0,0, .25); box-shadow: 0px 2px 24px 0px rgba(0,0,0, .25); }
	.sliderNav .glide__bullet--active:before { content: ''; position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-bottom: -1px; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent transparent #0067FF; transparent; -webkit-transform: translateX(-50%); -ms-transform: translateX(-50%); transform: translateX(-50%); }
	.sliderNav .glide__bullet--active .hiddenOnHover,
	.sliderNav .glide__bullet--portfolio:hover .hiddenOnHover { opacity: 0; pointer-events: none; }
	.sliderNav .glide__bullet--active .visibleOnHover,
	.sliderNav .glide__bullet--portfolio:hover .visibleOnHover { opacity: 1; pointer-events: auto; }

	[data-aos=img-skewed-item-left], [data-aos=img-skewed-item-right] {
		opacity: 0;
		transition-property: opacity, transform;
		will-change: opacity, transform, -webkit-transform;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden
	}

	.glide__slide--active [data-aos=img-skewed-item-left].aos-animate {
		transform: rotateY(-35deg) rotateX(15deg) translate3d(0,0,0);
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

<section class="section slidy slider-portfolio">
<div class="glide portfolio">
	<div class="glide__track" data-glide-el="track">
		<ul class="glide__slides">
			{foreach $folio as $item}
				<li class="glide__slide">
					<div class="flyer">
						<div class="flyer_text">
							<h6 class="slider_subtitle">Case Study</h6><!-- /.slider_subtitle -->
							<h3 class="slider_title">{$item['title']}</h3><!-- /.slider_title -->
							<p>{$item['body']}</p>
							<a class="btn btn-primary btn-outline" href="{page_url id=$item['link']}">Explore</a>
						</div>
						<div class="flyer_image img-skewed img-skewed-left">
							<img class="screenshot2 img-fluid" data-aos="img-skewed-item-left" data-aos-delay="5" data-aos-duration="500" src="{asset path=$item['screenshot']}" alt="{$item['title']} Screenshot">
						</div>
					</div>
				</li>
            {/foreach}
		</ul>
	</div>
	<div class="glide__bullets sliderNav slide_foot" data-glide-el="controls[nav]">
        {foreach $folio as $item}
			<button class="glide__bullet glide__bullet--portfolio" data-glide-dir="={$item@index}">
				<img src="{asset path=$item.logo_dark}" alt="" class="hiddenOnHover" width="101" height="32">
				<img src="{asset path=$item.logo_light}" alt="" class="visibleOnHover" width="101" height="32">
			</button>
        {/foreach}
	</div>
</div>
</section>
{js}
<script>
	var glide = new Glide('.portfolio', {
		type: 'carousel',
		perView: 1,
		activeNav: 'current',
		gap: 0,
		// peek: { before: 0, after: 50 }
	});
	glide.mount();
</script>
{/js}