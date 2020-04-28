{$folio = [
'bbsp' => [
'title' => 'Bristol and Bath Science Park',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/bbsp/slider-screenshot.png',
'company' => 'Bristol and Bath Science Park',
'logo_light' => 'images/temp/slider-nav-image-2-white.png',
'logo_dark' => 'images/temp/slider-nav-image-2.png'
],
'renex' => [
'title' => 'Renewable Exchange',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/work/renex/renex.png',
'company' => 'Renewable Exchange',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'tedx' => [
'title' => 'TEDxBristol',
'body' => 'Renewable engery is awesome :thumsup:',
'link' => '#',
'screenshot' => 'images/photos/rich-and-george-ipad.jpg',
'company' => 'TEDxBristol',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
],
'palladium' => [
'title' => 'Palladium project',
'body' => 'We designed and built a bespoke mobile appliction that improved both efﬁciency and reliability of the weekly recycle bin collection.',
'link' => 'case-study-bbsp',
'screenshot' => 'images/work/palladium/dashboard.png',
'company' => 'Bristol and bath science park',
'logo_light' => 'images/temp/slider-nav-image-3-white.png',
'logo_dark' => 'images/temp/slider-nav-image-3.png'
]
]}
{$id = id()}
{* inline the core glide styles to avoid further network request *}
{css id=glide}
	<style>
		.portfolio-btn { text-align: center; cursor: pointer; outline:none; }
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

		.screenshot { transition: transform 0.4s ease-out .01s, opacity 0.3s ease-out; opacity: 0.5;transform: scale(0.9) rotate(-6deg); }
		.screenshot { opacity: 1; transform:scale(0.9) rotate(-3deg); }
		/*box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);*/
		.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(0deg); border:5px solid white;  }
		#{$id} .flickity-page-dots { display:block; }
		@media (min-width: 1024px) {
			#{$id} .flickity-page-dots { display:none; }
			.screenshot { opacity: 0.1; transform:scale(0.9) rotate(-10deg); }
			.is-selected .screenshot { opacity: 1; transform:scale(1) rotate(-3deg);  }
		}
		/*box-shadow: 35px 70px 125px -25px rgba(80,102,144,.1), 16px 40px 75px -40px rgba(0,0,0,.2), 0px 0px 99px 0px rgba(0, 0, 0, 0.2);*/
		.portfolio-gradient { background:linear-gradient(180deg, rgba(243,245,249,1) 0%, rgba(255,255,255,1) 100%) }
	</style>
{/css}

<section id="{$id}" class="py-24 portfolio-gradient ">

    {include file="../../headers/center.tpl" title="Our Work" sub="Projects we're proud of :-)"}

	<div ref="flick" class="" data-flick-slides class="-mt-10">
        {foreach $folio as $item}
			<div class="porto w-full px-6% sm:px-1/12 flex flex-col lg:flex-row xl:max-w-screen-2xl pt-15 lg:pt-20 lg:pb-24 pb-5">
				<div class="w-full lg:w-4/12 mt-10 lg:pr-20 lg:mt-auto lg:mb-auto portfolio-text text-center lg:text-left my-auto flex-shrink order-1 lg:order-0">
					<b class="text-xs uppercase text-gray-500 font-bold block mb-4">Case Study</b>
					<h3 class="text-3xl text-blue-950">{$item['title']}</h3>
					<p class="text-lg text-gray-700 mb-5">{$item['body']}</p>
					<a class="mt-5 px-16 btn btn-outline-primary btn-fx btn-xl" href="{page_url id=$item['link']}">Explore</a>
				</div>
				<div class="flex-grow order-0 lg:order-1 self-center lg:-mr-40">
					{*
					 * There is currently two ways of generating the correct image here - note in order to lazy load images
					 * the src and srcset tags must be defined with 'data-flickity-lazyload-' prefix.
					 * Two options:
					 * 1) break down the image tag into seperate responsibilities
					 * 2) include srcset-name & src-name params to the image_srcset function
					 * option 1, I think, creates more testable and easier to reason about code
					 * furthermore the current sizes implemntation inside the image_srcset does not seem to generate
					 * responsive loaded images. sizes is a complex property specifc to the use case and may be better
					 * to force the developer to define.
					 * - another improvement would be to NOT have to prefix paths with {asset} (in progress)
					 * perhaps a new plugin to manage this - {image_url src="fireflyId|path"}
					 *}
					<img data-flickity-lazyload-src="{image_src src=$item['screenshot'] w=200 q=90}"
					     data-flickity-lazyload-srcset="{image_srcset src=$item['screenshot']}"
					     sizes="(min-width:1048) 1048, 100vw" class="screenshot lg:rotate-3 img-fluid shadow-2xl rounded-md"
					     alt="{$item['title']} Screenshot">
				</div>
			</div>
        {/foreach}
	</div>

	<div class="flex justify-center sliderNav slide_foot self-end hidden lg:block text-center" data-flick-nav>
        {foreach $folio as $item}
			<button role="button" aria-label="Select the {$item.company} Case Study"
					class="outline-none w-40 h-16 relative rounded-sm portfolio-btn mx-2 border-0 "
					:class="{ 'bg-blue-500 is-selected': index=={$item@index}}" @click="select({$item@index})" >
				<img src="{asset path=$item.logo_dark}" alt="{$item.company}" class="portfolio-btn__dark" width="101" height="32">
				<img src="{asset path=$item.logo_light}" alt="{$item.company}" class="portfolio-btn__light" width="101" height="32">
			</button>
        {/foreach}
	</div>

</section>
{cssFile src="https://unpkg.com/flickity@2/dist/flickity.min.css"}
{jsFile src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"}
{jsFile src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.11/vue.min.js"}
{js pos=end}
	<script>
		new Vue({
			el: '#{$id}',
			data: function() {
				return {
					// the current slide index
					index: 0,
				}
			},
			mounted: function() {
				this.flick = new Flickity(this.$refs.flick, {
					adaptiveHieght: false,
					wrapAround: true, contain: true, prevNextButtons: false, pageDots: true, imagesLoaded: true,
					friction:.5, selectedAttraction:.08, lazyLoad: true
				});
				var vm = this;
				this.flick.on('select', function (e) {
					vm.index = vm.flick.selectedIndex;
				});
			},
			methods: {
				select: function(index) {
					this.index = index;
					this.flick.selectCell(index);
				}
			}
		}).$mount();
	</script>
{/js}