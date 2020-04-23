{layout_section}
{include file="../../headers/center.tpl"
title="Testimonals"
sub="Listen to what our customers say about us"
}
{$tests = [
'bbsp' => [
'name' => 'Tom Beasley',
'job_title' => 'Head of',
'company' => 'Bristol & Bath Science Park',
'image' => 'images/testimonials/bbsp-tom-beasley.png',
'youtube' => 'https://www.youtube.com/watch?v=SrAzkFIYjFA?autoplay=1&rel=0',
'quote' => 'From the outset, Newicon really understood what we were trying to achieve.'
],
'aspect' => [
'name' => 'Evelyn Timpson',
'job_title' => 'Managing Director',
'company' => 'Aspect Film and Video',
'image' => 'images/testimonials/aspect-evelyn-timpson.jpg',
'quote' => 'Very commercially aware and versatile web agency - and a great team to boot!'
],
'centreline' => [
'name' => 'Phil Brockwell',
'job_title' => 'Commercial Director',
'company' => 'Centreline Aviation',
'image' => 'images/testimonials/phil-brockwell.jpg',
'quote' => 'Newicon give us more than creative input, they also add state of the art technology to steer our business in directions we had not even considered.'
],
'permagard' => [
'name' => 'Steve Wookey',
'job_title' => 'Director',
'company' => 'Permagard Products Ltd',
'image' => 'images/testimonials/steve-wookey.jpg',
'quote' => 'Newicon are a great company to work with, they are passionate and always provide a second to none service.',
'detail' => 'From the design stages through to the technical implementation they understand our requirements as a company. We would highly recommend Newicon to anyone who is looking for a friendly, efficient and professional web and software design company.'
],
'airbus' => [
'name' => 'Terence Frost',
'job_title' => 'Design Analysis Group Leader',
'company' => 'Airbus',
'image' => 'images/testimonials/terence-frost-airbus.jpg',
'quote' => 'Newicon is an exemplar of innovation and freethinking.',
'detail' => 'Newicon\'s ideas have pioneered web development within my department. Their solutions are innovative and effective producing results above original expectations.'
]
]}

	<div class="mb-20" data-flickity='{ "adaptiveHeight": false, "cellAlign": "left", "wrapAround": true,  "contain": true, "selectedAttraction": 0.1, "friction": 0.8, "prevNextButtons": false, "pageDots": true, "lazyLoad": 1}'>
		{foreach $tests as $test}
			<div class="w-11/12 " style="padding-left:4%">
				<div class="flex-col my-10 mb-16 flex md:flex-row shadow-2xl  rounded-lg" itemscope itemtype="http://schema.org/Review">
					{if (isset($test.youtube))}
						<a href="{$test.youtube}"
						   title="{$test.name}, {$test.company} testimonial video"
						   aria-label="{$test.name}, {$test.company} testimonial video"
						   target="youtube"
						   class="block pb-1/3 overflow-hidden relative group video h-64 rounded-t-lg md:rounded-l-lg md:rounded-r-none md:w-1/2 md:h-auto object-cover bg-cover bg-center cursor-pointer"
						>
							<img
								data-flickity-lazyload-src="{image_src src=$test.image w=200 q=90}"
								data-flickity-lazyload-srcset="{image_srcset src=$test.image}"
								sizes="(min-width:1048) 1048, 50vw"
								class="carousel-cell-image absolute object-cover w-full h-full"
								alt="picture of {$test.name}, {$test.company}"
								title="{$test.name}, {$test.company}"
							/>
							<div class="transition transform opacity-75 hover:opacity-100 hover:scale-110 ease-out duration-200 absolute inset-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white w-24 h-24 pt-8 pl-9 rounded-full shadow-lg group-hover:shadow-xl">
								<svg width="35" height="35" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
								</svg>
							</div>
						</a>
					{else}
						<div class="block pb-1/3 overflow-hidden relative group video h-64 rounded-t-lg md:rounded-l-lg md:rounded-r-none md:w-1/2 md:h-auto object-cover bg-cover bg-center">
							<img
								data-flickity-lazyload-src="{image_src src=$test.image w=200 q=90}"
								data-flickity-lazyload-srcset="{image_srcset src=$test.image}"
								sizes="(min-width:720) 720, 50vw"
								class="carousel-cell-image absolute object-cover w-full h-full" alt="picture of {$test.name}, {$test.company}"
								title="{$test.name}, {$test.company}"
							/>
						</div>
					{/if}

					<div class="flex-shrink mx-auto flex-shrink mx-auto pr-10 pl-16 pb-20 pt-28 md:w-1/2">
						<blockquote itemprop="comment" class="testimonial ">
							<p class="ni-italic text-2xl md:text-3xl lg:text-4xl text-blue-950 mb-5">{$test.quote}</p>
							{if isset($test.detail)}
								<p class="text-gray-700 font-normal text-lg" itemprop="reviewBody">{$test.detail}</p>
							{/if}
							<footer itemprop="author">
								<b class="font-bold text-blue-950" itemprop="name">{$test.name}</b><br/>
								{if isset($test.job_title)}
									<b class="text-gray-700 font-normal" itemprop="jobTitle">{$test.job_title}</b>
								{/if}
								{if isset($test.company)}
									- <b class="text-gray-700 font-normal" itemprop="jobTitle">{$test.company}</b>
								{/if}
							</footer>
						</blockquote>
					</div>
				</div>
			</div>
        {/foreach}
	</div>
{jsFile src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"}
{cssFile src="https://unpkg.com/flickity@2/dist/flickity.min.css"}
{css}
	/* fade in image when loaded */
	.carousel-cell-image { transition: opacity 0.4s; opacity: 0; }
	.carousel-cell-image.flickity-lazyloaded,.carousel-cell-image.flickity-lazyerror { opacity: 1; }

	.testimonial { position: relative; }
	.testimonial:before { content: ''; position: absolute; bottom: 100%; left: -33px; width: 77px; height: 51px; margin-bottom: 25px; background-image: url({assets path="/images/temp/quotes-top.png"}); background-size: 77px 51px; }
	.testimonial:after { content: ''; position: absolute; top: 100%; right: -8px; width: 77px; height: 51px; margin-top: 24px; background-image: url({assets path="/images/temp/quotes-bottom.png"}); background-size: 77px 51px; }
    {*	.testimonials .flickity-viewport { transition: height 0.2s; }*}
{/css}
{/layout_section}
