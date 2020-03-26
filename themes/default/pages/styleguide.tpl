{extends "layouts/styleguide.tpl"}
{block "content"}
{js}
	<script>
		(function(u) {
			var s = document.createElement('script'); s.async = true; s.src = u;
			var b = document.getElementsByTagName('script')[0]; b.parentNode.insertBefore(s, b);
		})('//updatemybrowser.org/umb.js');
	</script>
{/js}
<style>
	.caveat { font-family: caveat   color: #0067FF; }
	.trashhand { font-family: TrashHand, Arial ; color: #0067FF; }
	.trashhand { font-family: TrashHand, Arial ; color: #0067FF; font-size:24px; line-height: 32px; }
</style>
{literal}
	<style>
		.card {margin-bottom: 30px;box-shadow: 0 15px 35px rgba(50,50,93,.1), 0 5px 15px rgba(0,0,0,.07);border: 0;}
		.cardBackground[data-animation=zooming] {transition: all .3s cubic-bezier(.2, 1, .22, 1);-webkit-transition: all .3s cubic-bezier(.2, 1, .22, 1);}
		.cardBackground {overflow: hidden;height: 530px;background-position: 50%;background-size: cover;text-align: center;}
		.card { position: relative; display: flex;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: .0625rem solid rgba(0,0,0,.05);border-radius: .5rem;}
		.cardBackground .card_background { background-position: 50%; background-size: cover;text-align: center;margin-bottom: 30px;width: 100%;height: 100%;position: absolute;border-radius: .5rem;backface-visibility: hidden;-webkit-backface-visibility: hidden;transition: all 1s cubic-bezier(.2,1,.22,1);-webkit-transition: all 1s cubic-bezier(.2,1,.22,1);}
		.cardBackground[data-animation=zooming]:hover { transform: scale(1.07);-webkit-transform: scale(1.07);z-index: 2;}
		.cardBackground[data-animation=true]:hover .card_background,
		.cardBackground[data-animation=zooming]:hover .card_background {transform: scale(1.1 );-webkit-transform: scale(1.1);}
		.cardBackground:after {position: absolute;top: 0;bottom: 0;left: 0;height: 100%;z-index: 1;width: 100%;display: block;content: "";background: rgba(0,0,0,.6);}
		.cardBackground[data-animation=zooming] .card_body {padding-bottom: 30px;margin: initial;height: 100%;}
		.cardBackground .card_body {position: relative;z-index: 2;min-height: 330px;padding-top: 60px;padding-bottom: 60px;}
		.card_body {flex: 1 1 auto;padding: 1.5rem;}
		.cardBackground .card_body .content_foot { position: absolute;bottom: 10px;text-align: left;color:white; }
		.card .card_title { margin-bottom: .5rem; }
	</style>
{/literal}

	{* <div id="app"><Hello></Hello></div>*}
	{* Load in the styles *}
	{styles}

	<div class="flex flex-col h-screen">
		<div class="h-20 flex-shrink-0">
			{navigation}
		</div>
		<div class="flex-1 flex overflow-y-auto"> {* flex-1 grid grid-cols-12 grid-flow-col *}
			<div class="bg-blue-800 col-span-1 w-1/12"></div>
			<div class="col-span-2 w-2/12 pl-10 pt-20">
				<ul class="grid grid-cols gap-8">
					<li class="text-sm font-semibold "><a class="no-underline text-gray-700 hover:text-gray-900" href="#typography">Typography</a></li>
					<li class="text-sm font-semibold"><a class="no-underline text-gray-700 hover:text-gray-900" href="#colours">Colours</a></li>
					<li class="text-sm font-semibold"><a class="no-underline text-gray-700 hover:text-gray-900" href="#icons">Icons & Illustrations</a></li>
				</ul>
			</div>
			<div class="w-auto overflow-y-auto flex flex-col">
{*				<div class="border-b border-gray-300 flex-shrink-0">*}
{*					<div class="flex items-end justify-center mb-2 bg-white"><span class="inline-block text-center cursor-pointer select-none mr-8 text-gray-800"><svg width="8.57142857142857" height="24" viewBox="0 0 10 28" xmlns="http://www.w3.org/2000/svg" class="fill-current block mx-auto mb-1"><path d="M1.5 12h7a1.5 1.5 0 0 1 1.5 1.5v13A1.5 1.5 0 0 1 8.5 28h-7A1.5 1.5 0 0 1 0 26.5v-13A1.5 1.5 0 0 1 1.5 12zM1 15v10h8V15H1zm4 12.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2zM4 13v1h2v-1H4z" fill-rule="evenodd"></path></svg> <p class="text-xs">all</p></span> <span class="inline-block text-center cursor-pointer select-none mr-8 text-gray-500"><svg width="11.999999999999998" height="24" viewBox="0 0 14 28" xmlns="http://www.w3.org/2000/svg" class="fill-current block mx-auto mb-1"><path d="M1.5 6h11A1.5 1.5 0 0 1 14 7.5v19a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 0 26.5v-19A1.5 1.5 0 0 1 1.5 6zM1 9v16h12V9H1zm6 18.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2zM7 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z" fill-rule="evenodd"></path></svg> <p class="text-xs">sm</p></span> <span class="inline-block text-center cursor-pointer select-none mr-8 text-gray-500"><svg width="22.28571428571428" height="24" viewBox="0 0 26 28" xmlns="http://www.w3.org/2000/svg" class="fill-current block mx-auto mb-1"><path d="M26 26.5a1.5 1.5 0 0 1-1.5 1.5h-23A1.5 1.5 0 0 1 0 26.5v-14A1.5 1.5 0 0 1 1.5 11h23a1.5 1.5 0 0 1 1.5 1.5v14zm-3 .5V12H3v15h20zm1.5-6.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-23-.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z" fill-rule="evenodd"></path></svg> <p class="text-xs">md</p></span> <span class="inline-block text-center cursor-pointer select-none mr-8 text-gray-500"><svg width="32.57142857142856" height="24" viewBox="0 0 38 28" xmlns="http://www.w3.org/2000/svg" class="fill-current block mx-auto mb-1"><path d="M34 26h4v1c-1.333.667-2.667 1-4 1H4c-1.333 0-2.667-.333-4-1v-1h4V7.5A1.5 1.5 0 0 1 5.5 6h27A1.5 1.5 0 0 1 34 7.5V26zM6 8v18h26V8H6z" fill-rule="evenodd"></path></svg> <p class="text-xs">lg</p></span> <span class="inline-block text-center cursor-pointer select-none text-gray-500"><svg width="30.85714285714285" height="24" viewBox="0 0 36 28" xmlns="http://www.w3.org/2000/svg" class="fill-current block mx-auto mb-1"><path d="M20.857 24l.857 3H24v1H12v-1h2.286l.857-3H1.5A1.5 1.5 0 0 1 0 22.5v-21A1.5 1.5 0 0 1 1.5 0h33A1.5 1.5 0 0 1 36 1.5v21a1.5 1.5 0 0 1-1.5 1.5H20.857zM2 2v18h32V2H2z"></path></svg> <p class="text-xs">xl</p></span></div>*}
{*				</div>*}
				<div class="flex-1 overflow-y-scroll">
                    {include file="./_styleguide/typography.tpl" class="bg-black" hex="000000"}
					<hr />


					<section class="container m-auto max-w-screen-lg px-10">
						<h2 id="colors">Colors</h2>
						<div class="flex">
							<div class="w-20 pt-8">white +</div>
							<div class="">
								<div class="flex mb-6">
                                    {foreach [[50, 95], [100,85], [200,70], [300, 50], [400,25], [500,''], [600,15], [700,30], [800, 45], [900,60], [950,77]] as $number}
										<div class="h-16 w-16 text-center ">
											<b class="block h-8 font-extrabold text-xl">{$number[0]}</b>
											<b class="block h-8">{$number[1]}%</b>
										</div>
                                    {/foreach}
								</div>
                                {foreach ['lightGray', 'gray', 'blue', 'purple', 'pink', 'red', 'orange', 'yellow', 'green', 'teal'] as $color}
                                    {if isset($styles.colors.$color)}
										<div class="flex">
                                            {foreach $styles.colors.$color as $name => $hex}
												<div class="h-16 w-16 bg-{$color}-{$name}"></div>
                                            {/foreach}
										</div>
                                    {/if}
                                {/foreach}
							</div>
							<div class="w-20 pt-8 text-right">+ black</div>
						</div>


						<div class="flex flex-wrap -mx-2 mt-0">
							<div class="px-2 w-full relative">
								<h3 class="markdown no-toc mb-4 mt-8" id="black-white">
									<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#black-white" style="position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
									Black &amp; White
								</h3>
								<div class="grid grid-rows-3 grid-flow-col gap-1">
                                    {include file="./_styleguide/_color.tpl" class="bg-black" hex=$styles.colors.black}
                                    {include file="./_styleguide/_color.tpl" class="bg-white" hex=$styles.colors.white}
                                    {include file="./_styleguide/_color.tpl" class="bg-primary" hex=$styles.colors.primary}
                                    {include file="./_styleguide/_color.tpl" class="bg-transparent" hex=$styles.colors.transparent}
								</div>
							</div>


	                        {foreach ['gray', 'gun-gray', 'blue', 'purple', 'pink', 'red', 'orange', 'yellow', 'green', 'teal'] as $color}
		                        {if isset($styles.colors[$color])}
									<div class="w-1/2 px-2 md:w-full relative mt-4">
										<h3 class="markdown no-toc mb-4 mt-8" id="gray">
											<a class="anchorjs-link text-gray-500 no-underline" aria-label="Anchor" data-anchorjs-icon="#" href="#gray"></a>
		                                    {$color|capitalize}
										</h3>

										<div class="grid grid-rows-3 grid-flow-col gap-2">
		                                    {foreach $styles.colors.$color as $name => $hex}
		                                        {include file="./_styleguide/_color.tpl" class="bg-$color-$name" hex=$hex}
		                                    {/foreach}
										</div>
									</div>
                                {/if}
	                        {/foreach}

						</div>
					</section>
					<section class="container m-auto max-w-screen-lg px-10">
							<hr>
							<h2 id="colors">Text</h2>
							<div class="relative overflow-hidden mb-8"><div class="bg-white rounded-t-lg overflow-hidden border-t border-l border-r border-gray-400 p-4 "><div class="mb-6"><p class="text-sm text-gray-600">.text-xs</p> <p class="text-xs truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-sm</p> <p class="text-sm truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-base</p> <p class="text-base truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-lg</p> <p class="text-lg truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-xl</p> <p class="text-xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-2xl</p> <p class="text-2xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-3xl</p> <p class="text-3xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div class="mb-6"><p class="text-sm text-gray-600">.text-4xl</p> <p class="text-4xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div><p class="text-sm text-gray-600">.text-5xl</p> <p class="text-5xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div> <div><p class="text-sm text-gray-600">.text-6xl</p> <p class="text-6xl truncate text-gray-800">The quick brown fox jumped over the lazy dog.</p></div></div> <div class="rounded-b-lg bg-gray-800"><pre class="scrollbar-none m-0 p-0  language-html"><code class="inline-block p-4 scrolling-touch  language-html"><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-xs ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-sm ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-base ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-lg ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-2xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-3xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-4xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-5xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span>
								<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>p</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation">=</span><span class="token punctuation">"</span>text-6xl ...<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>The quick brown fox ...<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>p</span><span class="token punctuation">&gt;</span></span></code></pre></div></div>

				</section>

					<section class="container m-auto max-w-screen-lg px-10 py-28">
						<h2>Buttons</h2>

						<div class="my-10">
							<button class="btn btn-primary px-6 py-4 btn-fx active:bg-blue-600 focus:outline-none">Primary button</button>
							<button href="#" class="btn btn-outline-primary active:border-blue-600 active:text-blue-600 px-6 py-4 btn-fx focus:outline-none">Primary Outline button</button>
							<button type="button" class="inline-flex items-center px-2.5 py-1.5 border border-transparent text-xs leading-4 font-medium rounded text-white bg-blue-500 hover:bg-blue-400 focus:outline-none focus:border-blue-600 focus:shadow-outline-blue active:bg-blue-600 transition ease-in-out duration-150">
								Button text
							</button>
							<button type="button" class="inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-white bg-blue-500 hover:bg-blue-400 focus:outline-none focus:border-blue-600 focus:shadow-outline-blue active:bg-blue-600 transition ease-in-out duration-150">
								Button text
							</button>
							<button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm leading-5 font-medium rounded-md text-white bg-blue-500 hover:bg-blue-400 focus:outline-none focus:border-blue-600 focus:shadow-outline-blue active:bg-blue-600 transition ease-in-out duration-150">
								Button text
							</button>
							<button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-base leading-6 font-medium rounded-md text-white bg-blue-500 hover:bg-blue-400 focus:outline-none focus:border-blue-600 focus:shadow-outline-blue active:bg-blue-600 transition ease-in-out duration-150">
								Button text
							</button>
							<button type="button" class="inline-flex items-center px-6 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-white bg-blue-500 hover:bg-blue-400 focus:outline-none focus:border-blue-600 focus:shadow-outline-blue active:bg-blue-600 transition ease-in-out duration-150">
								Button text
							</button>
						</div>

						<div class="my-10">
							<button type="button" class="btn btn-primary btn-fx inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-500 focus:outline-none focus:border-indigo-700 focus:shadow-outline-indigo active:bg-indigo-700 transition ease-in-out duration-150">
								<svg class="-ml-0.5 mr-2 h-4 w-4" fill="currentColor" viewBox="0 0 20 20">
									<path fill-rule="evenodd" d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884zM18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z" clip-rule="evenodd"/>
								</svg>
								Button text
							</button>
						</div>


						<div class="grid grid-cols-2">
							<input id="street_address" class="inline-flex form-input block w-full py-2 px-3 border border-gray-300 rounded shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5">
							<button class="btn btn-primary btn-fx active:bg-blue-600 focus:outline-none">Primary button</button>
						</div>

					</section>

                    {$featureCards = [
                    [
                    'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
                    'title' => 'Turn your ideas into a reality',
                    'label' => 'Workshops',
                    'body' => 'Workshops are at the heart of our Architecture & Design process. We get up on a white board with you and think visually about what you\'re trying to achive. We scribble. We explore. We create. From there, we design and build your prototype.'
                    ],
                    [
                    'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
                    'title' => 'Rapid progress & visual results',
                    'label' => 'Prototypes',
                    'body' => 'As digital engineers, we know that prototypes are invaluable to any software or web project. Prototypes are a quick way to get the product in your hands, offering you a true feel for how it\'ll function. Not only does this mean quicker sign-off from important stakeholders, it also means we can iron out any issues before a single line of code is written.'
                    ],
                    [
                    'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
                    'title' => 'A people-centric design process',
                    'label' => 'User experience Design',
                    'body' => 'Great UX design captures the attention, sticks in the memory, and compels users to take action. It results in products that are so intuitive that users don\'t give a second thought to the design. We create digital products that do all that, and more.'
                    ],
                    [
                    'image' => 'https://images.unsplash.com/photo-1583475969042-4cd769e2999b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
                    'title' => 'Beautiful visual design',
                    'label' => 'User Interface Design',
                    'body' => 'We design user interfaces that are as intuitive as they are beautiful. And we think both are equally important. Ease-of-use is integral to a smooth user experience, while carefully-crafted aesthetics make your project stand-out from the crowd and stick in the mind.'
                    ]
                    ]}

                    {layout_section style="background:#F3F5F9;"}
                    {layout_container}
						<h1>simple cards</h1>
                    {foreach $featureCards as $card}
						<div class="my-20">
                            {include file="./_cmps/feature/card/simple.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
						</div>
                    {/foreach}
                    {/layout_container}
                    {/layout_section}

                    {layout_section style="background:#F3F5F9;"}
                    {layout_container}
						<h1>Feature cards - borderless</h1>
						<p>A borderless feature card expands to its container and has no default border - this can be determined by its parent template</p>
                    {/layout_container}
                    {/layout_section}
                    {foreach $featureCards as $card}
                        {include file="./_cmps/feature/card/borderless.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
                    {/foreach}

                    {layout_section style="background:#F3F5F9;"}
                    {layout_container}
						<h1>Feature cards - borderless inside a container</h1>
						<div class=" shadow-2xl rounded-md rounded-lg overflow-hidden bg-white max-w-screen-xl mx-auto">
                            {foreach $featureCards as $card}
                                {include file="./_cmps/feature/card/borderless.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
                            {/foreach}
						</div>
                    {/layout_container}
                    {/layout_section}

                    {layout_section style="background:#F3F5F9;"}
                    {layout_container}
						<h1>Feature Skewed cards</h1>
                    {foreach $featureCards as $card}
                        {include file="./_cmps/feature/card/skewed.tpl" flip={cycle values="left,right"} title=$card.title body=$card.body label=$card.label image=$card.image}
                    {/foreach}
                    {/layout_container}
                    {/layout_section}


                    {$image1 = {asset path="images/photos/mark-n-joe.jpg"}}
                    {$image2 = "http://localhost/newicon-website/public/firefly/file/img?id=N4DDQmcxfGC0XPMs9QmyH0"}
                    {layout_section style="background-image:url('$image1')" class="bg-cover min-h-screen"}
						<div class="flex mt-96 ml-6/12 mr-1/12 bg-white z-10 shadow-2xl max-w-2xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group">
							<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
								<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
								<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
								<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
							</div>
						</div>
                    {/layout_section}
                    {layout_section style="background-image:url('$image2')" class="bg-cover min-h-screen"}
						<div class="flex mt-96 ml-1/12 mr-6/12 bg-white z-10 shadow-2xl max-w-2xl rounded-md rounded-lg overflow-hidden bg-white group">
							<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
								<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">{$card.title}</h2>
								<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">{$card.label}</h6>
								<p class="md:pl-15 text-gray-700 text-justify">{$card.body}</p>
							</div>
						</div>
                    {/layout_section}



				<section class="container m-auto max-w-screen-lg px-10">

					<div class="grid grid-cols-4 gap-5">
						<div class="card cardBackground" data-animation="zooming">
							<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
							<a href="javascript:;" class="card_body">
								<div class="content_foot">
									<h6 class="text-white opacity-8">Spectrum</h6>
									<h5 class="card_title">Data Virtualization</h5>
								</div>
							</a>
						</div>
						<div class="card cardBackground" data-animation="zooming">
							<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
							<a href="javascript:;" class="card_body">
								<div class="content_foot">
									<h6 class="text-white opacity-8">Spectrum</h6>
									<h5 class="card_title">Data Virtualization</h5>
								</div>
							</a>
						</div>
						<div class="card cardBackground" data-animation="zooming">
							<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
							<a href="javascript:;" class="card_body">
								<div class="content_foot">
									<h6 class="text-white opacity-8">Spectrum</h6>
									<h5 class="card_title">Data Virtualization</h5>
								</div>
							</a>
						</div>
						<div class="card cardBackground" data-animation="zooming">
							<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>
							<a href="javascript:;" class="card_body">
								<div class="content_foot">
									<h6 class="text-white opacity-8">Spectrum</h6>
									<h5 class="card_title">Data Virtualization</h5>
								</div>
							</a>
						</div>
					</div>
				</section>


					{$styles.spacing|dp}

				<section>
					Spacing
					<table>
						<thead>
						<tr>
							<th>Name</th>
							<th>Size</th>
							<th>Pixels</th>
							<th class="hidden sm:table-cell"></th>
						</tr>
						</thead>
						<tbody>
						{foreach $styles.spacing as $name => $value}
							<tr>
								<td>{$name}</td>
								<td>{$value}</td>
								<td>0px</td>
								<td class="hidden sm:table-cell">
									<div class="h-4 bg-gray-400 w-{$name}"></div>
								</td>
							</tr>

						{/foreach}

						<tr>
							<td>px</td>
							<td>1px</td>
							<td>1px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-px"></div>
							</td>
						</tr>
						<tr>
							<td>1</td>
							<td>0.25rem</td>
							<td>4px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-1"></div>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>0.5rem</td>
							<td>8px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-2"></div>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>0.75rem</td>
							<td>12px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-3"></div>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>1rem</td>
							<td>16px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-4"></div>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>1.25rem</td>
							<td>20px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-5"></div>
							</td>
						</tr>
						<tr>
							<td>6</td>
							<td>1.5rem</td>
							<td>24px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-6"></div>
							</td>
						</tr>
						<tr>
							<td>8</td>
							<td>2rem</td>
							<td>32px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-8"></div>
							</td>
						</tr>
						<tr>
							<td>10</td>
							<td>2.5rem</td>
							<td>40px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-10"></div>
							</td>
						</tr>
						<tr>
							<td>12</td>
							<td>3rem</td>
							<td>48px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-12"></div>
							</td>
						</tr>
						<tr>
							<td>16</td>
							<td>4rem</td>
							<td>64px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-16"></div>
							</td>
						</tr>
						<tr>
							<td>20</td>
							<td>5rem</td>
							<td>80px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-20"></div>
							</td>
						</tr>
						<tr>
							<td>24</td>
							<td>6rem</td>
							<td>96px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-24"></div>
							</td>
						</tr>
						<tr>
							<td>32</td>
							<td>8rem</td>
							<td>128px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-32"></div>
							</td>
						</tr>
						<tr>
							<td>40</td>
							<td>10rem</td>
							<td>160px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-40"></div>
							</td>
						</tr>
						<tr>
							<td>48</td>
							<td>12rem</td>
							<td>192px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-48"></div>
							</td>
						</tr>
						<tr>
							<td>56</td>
							<td>14rem</td>
							<td>224px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-56"></div>
							</td>
						</tr>
						<tr>
							<td>64</td>
							<td>16rem</td>
							<td>256px</td>
							<td class="hidden sm:table-cell">
								<div class="h-4 bg-gray-400 w-64"></div>
							</td>
						</tr>
						</tbody>
					</table>
				</section>
			</div>
			<div class="col-span-3 bg-gray-500 col-end-12 w-3/12"></div>



            {*        {hero_text*}
            {*			title="Styleguide"*}
            {*			bgTitle="Styleguide"*}
            {*			subtitle="Newicon website styles"*}
            {*			body="A summary of the main building blocks of the newicon site"*}
            {*        }*}

            {*		{static_block key="homepage_callout" wys=true}*}
            {*			<p>We use design and software engineering to transform your future. Newicon. New tomorrow.</p>*}
            {*          {/static_block}*}


            {*	<div>*}
            {*	*}{*		<button type="button" class="btn btn-primary">Primary</button>*}
            {*	*}{*		<button type="button" class="btn btn-secondary">Secondary</button>*}
            {*	*}{*		<button type="button" class="btn btn-success">Success</button>*}
            {*	*}{*		<button type="button" class="btn btn-danger">Danger</button>*}
            {*	*}{*		<button type="button" class="btn btn-warning">Warning</button>*}
            {*	*}{*		<button type="button" class="btn btn-info">Info</button>*}
            {*	*}{*		<button type="button" class="btn btn-light">Light</button>*}
            {*	*}{*		<button type="button" class="btn btn-dark">Dark</button>*}
            {*	*}{*		<button type="button" class="btn btn-link">Link</button>*}
            {*	*}{*		{cmp class="neon\dev\widgets\NeonJsFiddle" activeTab="result"}*}
            {*	*}{*		{/cmp}*}
            {*	*}{*		{oi}*}
            {*	*}{*        {htmlExample}*}
            {*	*}{*			<button type="button" class="btn btn-primary">Primary</button>*}
            {*	*}{*			<button type="button" class="btn btn-secondary">Secondary</button>*}
            {*	*}{*			<button type="button" class="btn btn-success">Success</button>*}
            {*	*}{*			<button type="button" class="btn btn-danger">Danger</button>*}
            {*	*}{*			<button type="button" class="btn btn-warning">Warning</button>*}
            {*	*}{*			<button type="button" class="btn btn-info">Info</button>*}
            {*	*}{*			<button type="button" class="btn btn-light">Light</button>*}
            {*	*}{*			<button type="button" class="btn btn-dark">Dark</button>*}
            {*	*}{*			<button type="button" class="btn btn-link">Link</button>*}
            {*	*}{*        {/htmlExample}*}
            {*	*}{*		<div class="row mbm">*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-primary _shadow">btn btn-primary _shadow mrs</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-primary">btn btn-primary</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-default">btn btn-default</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-default _shadow" >btn btn-default _shadow</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-secondary _shadow" >btn btn-secondary _shadow</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-secondary btn-outline" >Here is a button outline</button>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col">*}
            {*	*}{*				<button class="btn btn-primary btn-outline" >Here is a button outline</button>*}
            {*	*}{*			</div>*}
            {*	*}{*		</div>*}
            {*	*}{*		<div class="row">*}
            {*	*}{*			<div class="col ">*}

            {*	*}{*			</div>*}
            {*	*}{*			<div class="col ">*}
            {*	*}{*				<div class="card cardBackground" data-animation="zooming">*}
            {*	*}{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>*}
            {*	*}{*					<a href="javascript:;" class="card_body">*}
            {*	*}{*						<div class="content_foot">*}
            {*	*}{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
            {*	*}{*							<h5 class="card_title">Data Virtualization</h5>*}
            {*	*}{*						</div>*}
            {*	*}{*					</a>*}
            {*	*}{*				</div>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col ">*}
            {*	*}{*				<div class="card cardBackground" data-animation="zooming">*}
            {*	*}{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
            {*	*}{*					<a href="javascript:;" class="card_body">*}
            {*	*}{*						<div class="content_foot">*}
            {*	*}{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
            {*	*}{*							<h5 class="card_title">Data Virtualization</h5>*}
            {*	*}{*						</div>*}
            {*	*}{*					</a>*}
            {*	*}{*				</div>*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="col ">*}
            {*	*}{*				<div class="card cardBackground" data-animation="zooming">*}
            {*	*}{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
            {*	*}{*					<a class="card_body" href="javascript:;" >*}
            {*	*}{*						<div class="content_foot">*}
            {*	*}{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
            {*	*}{*							<h5 class="card_title">Data Virtualization</h5>*}
            {*	*}{*						</div>*}
            {*	*}{*					</a>*}
            {*	*}{*				</div>*}
            {*	*}{*			</div>*}
            {*	*}{*		</div>*}
            {*	*}{*		<h1 style="font-size:50px; letter-spacing: 1px;color: black;"><span style="font-weight:700">new</span><span style="font-weight:300;padding-left:3px;" class="text-success" data-toggle="typed" data-options='{ "strings": ["thinking", "ideas", "tomorrow", "icon^5000"] }'></span></h1>*}
            {*	*}{*		{cmpy} THINGS {/cmpy}*}
            {*	*}{*	{c cmp="NeonColumns" }*}
            {*	*}{*		{c cmp="NeonColumn"}*}
            {*	*}{*			{c cmp='p'}hello{/c}*}
            {*	*}{*		{/c}*}
            {*	*}{*	{/c}*}
            {*	*}{*		{NeonColumns}*}
            {*	*}{*			{NeonCol}*}
            {*	*}{*	            {NeonColumns}*}
            {*	*}{*		            {NeonCol}*}
            {*	*}{*						<p>Hello!! col 1</p>*}
            {*	*}{*		            {/NeonCol}*}
            {*	*}{*		            {NeonCol}*}
            {*	*}{*						<p>Hello!! col 2</p>*}
            {*	*}{*		            {/NeonCol}*}
            {*	*}{*	            {/NeonColumns}*}
            {*	*}{*				<p>Hello!! col 1</p>*}
            {*	*}{*			{/NeonCol}*}
            {*	*}{*	        {NeonCol}*}
            {*	*}{*				<p>Hello!! col 2</p>*}
            {*	*}{*	        {/NeonCol}*}
            {*	*}{*		{/NeonColumns}*}
            {*	*}{*{NeonColumns}HELLO{NeonColumns}*}
            {*	*}{*        {editor id="dropzone1"}{/editor}*}
            {*	*}{*        {editor id="dropzone2"}*}
            {*	*}{*	        <!-- cmp:NeonColumns -->*}
            {*	*}{*	        <div class="row" style="padding:10px;">*}
            {*	*}{*		        <!-- cmp:NeonColumn -->*}
            {*	*}{*		        <div class="col" style="padding:10px;">*}
            {*	*}{*			        <!-- cmp:NeonThing -->*}
            {*	*}{*			        <div>HERE IS A THING</div>*}
            {*	*}{*			        *}
            {*	*}{*		        </div>*}
            {*	*}{*		        *}
            {*	*}{*		        <!-- cmp:NeonColumn -->*}
            {*	*}{*		        <div class="col" style="padding:10px;">*}
            {*	*}{*			        <!-- cmp:NeonThing -->*}
            {*	*}{*			        <div>HERE IS A THING</div>*}
            {*	*}{*			        *}
            {*	*}{*			        <!-- cmp:NeonThing -->*}
            {*	*}{*			        <div>HERE IS A THING</div>*}
            {*	*}{*			        *}
            {*	*}{*		        </div>*}
            {*	*}{*		        *}
            {*	*}{*	        </div>*}
            {*	*}{*	        *}
            {*	*}{*        {/editor}*}
            {*	*}{*		<div>*}
            {*	*}{*			<h1>Trash hand</h1>*}
            {*	*}{*			<div class="caveat">*}
            {*	*}{*				Working hard since 2008*}
            {*	*}{*			</div>*}
            {*	*}{*			<div class="trashhand">*}
            {*	*}{*				Working hard since 2008*}
            {*	*}{*			</div>*}
            {*	*}{*		</div>*}
            {*	</div>*}

		</div>
	</div>



{/block}

{*{registerAsset path="neon\core\assets\CoreAsset"}*}
{*{js}*}
{*	new Vue({ el: '#app' });*}
{*{/js}*}