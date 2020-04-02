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
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
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
		.portfolio-text2 { opacity: 0; transform: translateY(10px) }
		.is-selected .portfolio-text2 { transition: transform .5s cubic-bezier(.19,1,.22,1) .35s, opacity .5s cubic-bezier(.19,1,.22,1) .35s; transform: translateY(0px); opacity:1;  }
		.carousel-cell { width: 75%; margin:0 2%; min-height:100vh; }
		.carousel-cell:not(.is-selected) img { transform: scale(.9); }
		.carousel-cell img { will-change:transform; transition: transform .5s cubic-bezier(.19,1,.22,1); transform: scale(1); border-radius: 8px; }
		.screenshot-shadow { box-shadow: 15px 20px 80px -15px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 50px 0px rgba(0, 0, 0, 0.2); }
		/*.screenshot-shadow { box-shadow: 0 0 2px rgba(6,67,117,.3), 0 10px 58px rgba(6,67,117,.2) }*/
	</style>
{/css}

<section class="section my-24 slider-portfolio relative">
    {header_center title="Our Work" sub="Some projects we're proud of :-)"}
	<div data-flickity='{ "wrapAround": true,  "contain": true, "prevNextButtons": false, "imagesLoaded": true, "dragThreshold": 2, "friction":0.5, "selectedAttraction":0.08 }'>
        {foreach $folio as $item}
			<div class="carousel-cell py-20" data-index="{$item@index}">
				{image_srcset firefly_id="{asset path=$item['screenshot']}" sizes="75vw" alt="{$item['title']} Screenshot" class="screenshot-shadow img-fluid ease-out mb-2"}
				<div class="portfolio-text2 mt-16 px-4 flex-shrink md:w-2/3 mx-auto text-center">
					<h6 class="text-xs uppercase text-gray-500">Case Study</h6>
					<h3>{$item['title']}</h3>
					<p>{$item['body']}</p>
					<a class="mt-10 btn btn-outline-primary px-16 btn-fx btn-lg" href="{page_url id=$item['link']}">Explore</a>
				</div>
			</div>
        {/foreach}
	</div>
    {jsFile src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"}
</section>