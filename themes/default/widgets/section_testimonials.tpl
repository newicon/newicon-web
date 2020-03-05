<section class="testimonials">
    {include file="section_header_center.tpl"
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
			'quote' => 'Newicon give us more than a creative input, they also add state of the art technology to steer our business in directions we had not even considered.'
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

    {css}{literal}.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-button{position:absolute;background:hsla(0,0%,100%,.75);border:none;color:#333}.flickity-button:hover{background:#fff;cursor:pointer}.flickity-button:focus{outline:0;box-shadow:0 0 0 5px #19f}.flickity-button:active{opacity:.6}.flickity-button:disabled{opacity:.3;cursor:auto;pointer-events:none}.flickity-button-icon{fill:currentColor}.flickity-prev-next-button{top:50%;width:44px;height:44px;border-radius:50%;transform:translateY(-50%)}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button .flickity-button-icon{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}{/literal}{/css}
    {jsFile src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js" attributes=['defer'=>'']}
	{css}
		.testimonial { position: relative; }
		.testimonial:before { content: ''; position: absolute; bottom: 100%; left: -33px; width: 77px; height: 51px; margin-bottom: 25px; background-image: url({assets path="/images/temp/quotes-top.png"}); background-size: 77px 51px; }
		.testimonial:after { content: ''; position: absolute; top: 100%; right: -8px; width: 77px; height: 51px; margin-top: 24px; background-image: url({assets path="/images/temp/quotes-bottom.png"}); background-size: 77px 51px; }
		.testimonials .flickity-viewport { transition: height 0.2s; }
	{/css}
	<div class="mb-20" data-flickity='{ "adaptiveHeight": true, "cellAlign": "left", "wrapAround": true,  "contain": true, "selectedAttraction": 0.1, "friction": 0.8, "prevNextButtons": false, "pageDots": true }'>
        {foreach $tests as $test}
		<div class="w-11/12 " style="padding-left:4%">
			<div class="flex-col my-10 flex md:flex-row shadow-lg rounded-lg" itemscope itemtype="http://schema.org/Review">
				{if (isset($test.youtube))}
				<a href="{$test.youtube}"
				   title="{$test.name}, {$test.company} testimonial video"
				   aria-label="{$test.name}, {$test.company} testimonial video"
				   target="youtube"
				   class="block relative group video h-64 rounded-t-lg md:rounded-l-lg md:rounded-r-none md:w-1/2 md:h-auto object-cover bg-cover bg-center cursor-pointer"
				   style="background-image: url('{asset path=$test.image}');"
				>
					<div class="transition transform opacity-75 hover:opacity-100 hover:scale-110 ease-out duration-200 absolute inset-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white w-24 h-24 pt-8 pl-9 rounded-full shadow-lg group-hover:shadow-xl">
						<svg width="35" height="35" viewBox="0 0 23 25" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M1 2V23L20 12.5L1 2Z" fill="#0067FF" stroke="#0067FF" stroke-width="2"></path>
						</svg>
					</div>
				</a>
				{else}
					<div title="{$test.name}, {$test.company}" role="img" class="block relative group video h-64 rounded-t-lg md:rounded-l-lg md:rounded-r-none md:w-1/2 md:h-auto object-cover bg-cover bg-center"
					     style="background-image: url('{asset path=$test.image}');"></div>
				{/if}

				<div class="flex-shrink mx-auto flex-shrink mx-auto pr-10 pl-16 pb-20 pt-28 md:w-1/2">
					<blockquote itemprop="comment" class="testimonial ">
						<p class="ni-italic text-2xl md:text-3xl lg:text-4xl  text-blue-900">{$test.quote}</p>
                        {if isset($test.detail)}
							<p class="text-gray-700 font-normal" itemprop="reviewBody">{$test.detail}</p>
                        {/if}
						<footer itemprop="author">
							<b class="font-bold text-blue-900" itemprop="name">{$test.name}</b><br/>
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

{*	<div x-data="{ open: true }" x-show="open" class="fixed bottom-0 inset-x-0 px-4 pb-6 sm:inset-0 sm:p-0 sm:flex sm:items-center sm:justify-center">*}
{*		<div x-show="open" x-transition:enter="ease-out duration-300" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in duration-200" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" class="fixed inset-0 transition-opacity">*}
{*			<div class="absolute inset-0 bg-gray-500 opacity-75"></div>*}
{*		</div>*}

{*		<div x-show="open" x-transition:enter="ease-out duration-300" x-transition:enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95" x-transition:enter-end="opacity-100 translate-y-0 sm:scale-100" x-transition:leave="ease-in duration-200" x-transition:leave-start="opacity-100 translate-y-0 sm:scale-100" x-transition:leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95" class="bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-xl transform transition-all sm:max-w-sm sm:w-full sm:p-6">*}
{*			<div>*}
{*				<div class="mx-auto flex items-center justify-center h-12 w-12 rounded-full bg-green-100">*}
{*					<svg class="h-6 w-6 text-green-600" stroke="currentColor" fill="none" viewBox="0 0 24 24">*}
{*						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>*}
{*					</svg>*}
{*				</div>*}
{*				<div class="mt-3 text-center sm:mt-5">*}
{*					<h3 class="text-lg leading-6 font-medium text-gray-900">*}
{*						Payment successful*}
{*					</h3>*}
{*					<div class="mt-2">*}
{*						<p class="text-sm leading-5 text-gray-500">*}
{*							Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur amet labore.*}
{*						</p>*}
{*					</div>*}
{*				</div>*}
{*			</div>*}
{*			<div class="mt-5 sm:mt-6">*}
{*      <span class="flex w-full rounded-md shadow-sm">*}
{*        <button @click="open = false;" type="button" class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-indigo-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-indigo-500 focus:outline-none focus:border-indigo-700 focus:shadow-outline-indigo transition ease-in-out duration-150 sm:text-sm sm:leading-5">*}
{*          Go back to dashboard*}
{*        </button>*}
{*      </span>*}
{*			</div>*}
{*		</div>*}
{*	</div>*}
</section>
