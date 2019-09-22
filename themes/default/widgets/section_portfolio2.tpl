<style>
	.slidy { height:100vh; border:1px solid red; padding:0; }
	.slidy_body { height: calc(100vh - 120px); position:relative;  border:1px solid black; }
	.flyer      { height: calc(100vh - 120px); display:flex; align-items: center; justify-content: space-evenly; }
	.flyer_text { width:45%; max-width:500px; margin-left:7vw;margin-right:6vw; }

	.screenshot2 { border:10px solid white; transform:rotate3d(1, 1, 1, -5deg); border-radius: .625rem; box-shadow:25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2); }


	.img-skewed-left {
		perspective-origin: left center;
	}
	.img-skewed {
		perspective: 1500px;
		transform-style: preserve-3d;
	}
	.img-skewed-left .img-skewed-item {
		transform: rotateY(-35deg) rotateX(15deg);
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	}
	.img-skewed-right {
		perspective-origin: right center;
	}
	.img-skewed-right .img-skewed-item {
		transform: rotateY(35deg) rotateX(15deg);
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	}
	.screenshot {
		border-radius: .625rem;
		box-shadow: 25px 60px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2);
	}
	.img-fluid {
		max-width: 100%;
		height: auto;
	}

	.subtitleSmallCaps {
		margin-bottom: 19px;
		font-weight: 800;
		font-size: 12px;
		color: #A7B1C0;
		text-transform: uppercase;
	}

</style>
<section class="section slidy slider-portfolio">
	<div class="slidy_body">

		<div class=" flyer">
			<div class="flyer_text">
				<h6 class="slider_subtitle">Case Study</h6><!-- /.slider_subtitle -->
				<h3 class="slider_title">Lovell Stone</h3><!-- /.slider_title -->
				<p>We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.</p>
				<button class="btn btn-primary btn-outline">Explore</button>
			</div>
			<div class="">
				<img class="screenshot2 img-fluid img-skewed-item" src="{asset path='images/work/thumbs/bbsp.svg'}" alt="" width="1052" height="1145">
			</div>

		</div>

	</div>
	<div class="slide_foot">
		<div class="sliderNav"> <!-- slide_foot -->
			<ul>
				<li class="current">
					<img src="{asset path='images/temp/slider-nav-image-1.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-1-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
				<li>
					<img src="{asset path='images/temp/slider-nav-image-2.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-2-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
				<li>
					<img src="{asset path='images/temp/slider-nav-image-3.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-3-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
				<li>
					<img src="{asset path='images/temp/slider-nav-image-4.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-4-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
				<li>
					<img src="{asset path='images/temp/slider-nav-image-5.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-5-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
				<li>
					<img src="{asset path='images/temp/slider-nav-image-6.png'}" alt="" class="hiddenOnHover" width="101" height="32">
					<img src="{asset path='images/temp/slider-nav-image-6-white.png'}" alt="" class="visibleOnHover" width="101" height="32">
				</li>
			</ul>
		</div><!-- /.sliderNav -->
	</div>
</section><!-- /.section -->




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