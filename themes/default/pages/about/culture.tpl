{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}



    {layout_section pt="pt-0" pb="pb-0" class="md:h-screen md:flex md:items-center "}
    {layout_container}
	    <div class="flex flex-col md:flex-row md:-mt-20">
	        {include file="../_cmps/hero/text.tpl"
		        class="md:mr-10 lg:mr-20 md:w-1/2"
		        title="Culture"
		        sub="People focused. Future thinking. Inventive."
		        body="Our culture and brand go hand in hand. After all, a business is what its people make it. And our people are pretty great, even if we say so ourselves."
	        }
		    <div class="flex-shrink self-end">
			    <img class="md:-mt-20 w-full" src="{asset path='images/illustrations/Culture Illustration.svg'}" alt="Newicon culture - juggling, guitar playing maniacs!" width="581" height="532">
		    </div>
	    </div>
    {/layout_container}
    {/layout_section}

    {layout_section pt='pt-0'}
    {layout_container}
	<header class="text-center w-10/12 lg:w-8/12 mx-auto mb-16">
		<h2 class="text-4xl mx-auto w-full text-blue-900">Our Culture</h2>
		<p class="text-3xl leading-10 text-blue-900">
			Our mission is to produce world class digital platforms and technologies that enable people to achieve great things.
		</p>
	</header>
    {/layout_container}
    {/layout_section}

    {include file='../_cmps/section/feature/grid-primary.tpl'
    title="Why we do it"
    body="We want to work with likeminded people and organisations who challenge, invent, and create. We have built our business on these three pillars that support everything we do."
    features=[
    ['icon' => 'images/icons/mid/future.svg','title' => 'Future','sub' => '','body' => 'We don’t want to walk blindly into the future, we want to forge ahead and shape it. And we believe that people-centric technology is the key to achieving that.'],
    ['icon' => 'images/icons/mid/people.svg','title' => 'People','sub' => '','body' => 'Technology exists to serve people, and people need to be considered from the very creation of an idea, right through to a product being brought to market.'],
    ['icon' => '/images/icons/mid/invent.svg','title' => 'Invention','sub' => '','body' => 'Necessity is the mother of all invention. But that’s far from the whole family tree. Curiosity. Creativity. Courage. They’re all part of the invention gene pool.']
    ]
    }


	<div class="bg-gray-900">
		<div class="pt-12 sm:pt-16 lg:pt-24">
			<div class="max-w-screen-xl mx-auto text-center px-4 sm:px-6 lg:px-8">
				<div class="max-w-3xl mx-auto lg:max-w-none">
					<h2 class="text-lg leading-6 font-semibold text-gray-300 uppercase tracking-wider">
						Pricing
					</h2>
					<p class="mt-2 text-3xl leading-9 font-extrabold text-white sm:text-4xl sm:leading-10 lg:text-5xl lg:leading-none">
						The right price for you, whoever you are
					</p>
					<p class="mt-2 text-xl leading-7 text-gray-300">
						Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum sequi unde repudiandae natus.
					</p>
				</div>
			</div>
		</div>
		<div class="mt-8 pb-12 bg-gray-50 sm:mt-12 sm:pb-16 lg:mt-16 lg:pb-24">
			<div class="relative">
				<div class="absolute inset-0 h-3/4 bg-gray-900"></div>
				<div class="relative z-10 max-w-screen-xl mx-auto px-4 sm:px-6 lg:px-8">
					<div class="max-w-md mx-auto lg:max-w-5xl lg:grid lg:grid-cols-2 lg:gap-5">
						<div class="rounded-lg shadow-lg overflow-hidden">
							<div class="px-6 py-8 bg-white sm:p-10 sm:pb-6">
								<div>
                <span class="inline-flex px-4 py-1 rounded-full text-sm leading-5 font-semibold tracking-wide uppercase bg-indigo-100 text-indigo-600">
                  Standard
                </span>
								</div>
								<div class="mt-4 flex items-baseline text-6xl leading-none font-extrabold">
									$49
									<span class="ml-1 text-2xl leading-8 font-medium text-gray-500">
                  /mo
                </span>
								</div>
								<p class="mt-5 text-lg leading-7 text-gray-500">
									Lorem ipsum dolor sit amet consectetur, adipisicing elit.
								</p>
							</div>
							<div class="px-6 pt-6 pb-8 bg-gray-50 sm:p-10 sm:pt-6">
								<ul>
									<li class="flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Pariatur quod similique
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Sapiente libero doloribus modi nostrum
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Vel ipsa esse repudiandae excepturi
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Itaque cupiditate adipisci quibusdam
										</p>
									</li>
								</ul>
								<div class="mt-6 rounded-md shadow">
									<a href="#" class="flex items-center justify-center px-5 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-white bg-gray-900 hover:bg-gray-800 focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
										Get started
									</a>
								</div>
							</div>
						</div>
						<div class="mt-4 rounded-lg shadow-lg overflow-hidden lg:mt-0">
							<div class="px-6 py-8 bg-white sm:p-10 sm:pb-6">
								<div>
                <span class="inline-flex px-4 py-1 rounded-full text-sm leading-5 font-semibold tracking-wide uppercase bg-indigo-100 text-indigo-600">
                  Enterprise
                </span>
								</div>
								<div class="mt-4 flex items-baseline text-6xl leading-none font-extrabold">
									$79
									<span class="ml-1 text-2xl leading-8 font-medium text-gray-500">
                  /mo
                </span>
								</div>
								<p class="mt-5 text-lg leading-7 text-gray-500">
									Lorem ipsum dolor sit amet consectetur, adipisicing elit.
								</p>
							</div>
							<div class="px-6 pt-6 pb-8 bg-gray-50 sm:p-10 sm:pt-6">
								<ul>
									<li class="flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Pariatur quod similique
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Sapiente libero doloribus modi nostrum
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Vel ipsa esse repudiandae excepturi
										</p>
									</li>
									<li class="mt-4 flex items-start">
										<div class="flex-shrink-0">
											<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
												<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
											</svg>
										</div>
										<p class="ml-3 text-base leading-6 text-gray-700">
											Itaque cupiditate adipisci quibusdam
										</p>
									</li>
								</ul>
								<div class="mt-6 rounded-md shadow">
									<a href="#" class="flex items-center justify-center px-5 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-white bg-gray-900 hover:bg-gray-800 focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
										Get started
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mt-4 relative max-w-screen-xl mx-auto px-4 sm:px-6 lg:px-8 lg:mt-5">
				<div class="max-w-md mx-auto lg:max-w-5xl">
					<div class="rounded-lg bg-gray-100 px-6 py-8 sm:p-10 lg:flex lg:items-center">
						<div class="flex-1">
							<div>
              <span class="inline-flex px-4 py-1 rounded-full text-sm leading-5 font-semibold tracking-wide uppercase bg-white text-gray-800">
                Discounted
              </span>
							</div>
							<div class="mt-4 text-lg leading-7 text-gray-500">
								Get full access to all of standard license features for solo projects that make less than $20k gross revenue for
								<strong class="font-semibold text-gray-900">
									$29
								</strong>
								.
							</div>
						</div>
						<div class="mt-6 rounded-md shadow lg:mt-0 lg:ml-10 lg:flex-shrink-0">
							<a href="#" class="flex items-center justify-center px-5 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-gray-900 bg-white hover:text-gray-700 focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
								Buy Discounted License
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="bg-gray-900">
		<div class="pt-12 px-4 sm:px-6 lg:px-8 lg:pt-20">
			<div class="text-center">
				<h2 class="text-lg leading-6 font-semibold text-gray-300 uppercase tracking-wider">
					Pricing
				</h2>
				<p class="mt- text-3xl leading-9 font-extrabold text-white sm:text-4xl sm:leading-10 lg:text-5xl lg:leading-none">
					The right price for you, whoever you are
				</p>
				<p class="mt-3 max-w-4xl mx-auto text-xl leading-7 text-gray-300 sm:mt-5 sm:text-2xl sm:leading-8">
					Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit numquam eligendi quos odit doloribus molestiae voluptatum.
				</p>
			</div>
		</div>

		<div class="mt-16 bg-white pb-12 lg:mt-20 lg:pb-20">
			<div class="relative z-0">
				<div class="absolute inset-0 h-5/6 bg-gray-900 lg:h-2/3"></div>
				<div class="max-w-screen-xl mx-auto px-4 sm:px-6 lg:px-8">
					<div class="relative lg:grid lg:grid-cols-7">
						<div class="mx-auto max-w-md lg:mx-0 lg:max-w-none lg:col-start-1 lg:col-end-3 lg:row-start-2 lg:row-end-3">
							<div class="h-full flex flex-col rounded-lg shadow-lg overflow-hidden lg:rounded-none lg:rounded-l-lg">
								<div class="flex-1 flex flex-col">
									<div class="bg-white px-6 py-10">
										<div>
											<h2 class="text-center text-2xl leading-8 font-medium text-gray-900">
												Hobby
											</h2>
											<div class="mt-4 flex items-center justify-center">
                      <span class="px-3 flex items-start text-6xl leading-none tracking-tight text-gray-900">
                        <span class="mt-2 mr-2 text-4xl font-medium">
                          $
                        </span>
                        <span class="font-extrabold">
                          79
                        </span>
                      </span>
												<span class="text-xl leading-7 font-medium text-gray-400">
                        /month
                      </span>
											</div>
										</div>
									</div>
									<div class="flex-1 flex flex-col justify-between border-t-2 border-gray-100 p-6 bg-gray-50 sm:p-10 lg:p-6 xl:p-10">
										<ul>
											<li class="flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Pariatur quod similique
												</p>
											</li>
											<li class="mt-4 flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Sapiente libero doloribus
												</p>
											</li>
											<li class="mt-4 flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Vel ipsa esse repudiandae
												</p>
											</li>
										</ul>
										<div class="mt-8">
											<div class="rounded-lg shadow-md">
												<a href="#" data-gumroad-single-product="true" class="block w-full text-center rounded-lg border border-transparent bg-white px-6 py-3 text-base leading-6 font-medium text-indigo-600 hover:text-indigo-500 focus:outline-none focus:shadow-outline transition ease-in-out duration-150">
													Start your trial
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="mt-10 max-w-lg mx-auto lg:mt-0 lg:max-w-none lg:mx-0 lg:col-start-3 lg:col-end-6 lg:row-start-1 lg:row-end-4">
							<div class="relative z-10 rounded-lg shadow-xl">
								<div class="pointer-events-none absolute inset-0 rounded-lg border-2 border-indigo-600"></div>
								<div class="absolute inset-x-0 top-0 transform translate-y-px">
									<div class="flex justify-center transform -translate-y-1/2">
                  <span class="inline-flex rounded-full bg-indigo-600 px-4 py-1 text-sm leading-5 font-semibold tracking-wider uppercase text-white">
                    Most popular
                  </span>
									</div>
								</div>
								<div class="bg-white rounded-t-lg px-6 pt-12 pb-10">
									<div>
										<h2 class="text-center text-3xl leading-9 font-semibold text-gray-900 sm:-mx-6">
											Growth
										</h2>
										<div class="mt-4 flex items-center justify-center">
                    <span class="px-3 flex items-start text-6xl leading-none tracking-tight text-gray-900 sm:text-6xl">
                      <span class="mt-2 mr-2 text-4xl font-medium">
                        $
                      </span>
                      <span class="font-extrabold">
                        149
                      </span>
                    </span>
											<span class="text-2xl leading-8 font-medium text-gray-400">
                      /month
                    </span>
										</div>
									</div>
								</div>
								<div class="border-t-2 border-gray-100 rounded-b-lg pt-10 pb-8 px-6 bg-gray-50 sm:px-10 sm:py-10">
									<ul>
										<li class="flex items-start">
											<div class="flex-shrink-0">
												<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
													<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
												</svg>
											</div>
											<p class="ml-3 text-base leading-6 font-medium text-gray-500">
												Quia rem est sed impedit magnam
											</p>
										</li>
										<li class="mt-4 flex items-start">
											<div class="flex-shrink-0">
												<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
													<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
												</svg>
											</div>
											<p class="ml-3 text-base leading-6 font-medium text-gray-500">
												Dolorem vero ratione voluptates
											</p>
										</li>
										<li class="mt-4 flex items-start">
											<div class="flex-shrink-0">
												<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
													<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
												</svg>
											</div>
											<p class="ml-3 text-base leading-6 font-medium text-gray-500">
												Qui sed ab doloribus voluptatem dolore
											</p>
										</li>
										<li class="mt-4 flex items-start">
											<div class="flex-shrink-0">
												<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
													<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
												</svg>
											</div>
											<p class="ml-3 text-base leading-6 font-medium text-gray-500">
												Laborum commodi molestiae id et fugiat
											</p>
										</li>
										<li class="mt-4 flex items-start">
											<div class="flex-shrink-0">
												<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
													<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
												</svg>
											</div>
											<p class="ml-3 text-base leading-6 font-medium text-gray-500">
												Nam ut ipsa nesciunt culpa modi dolor
											</p>
										</li>
									</ul>
									<div class="mt-10">
										<div class="rounded-lg shadow-md">
											<a href="#" data-gumroad-single-product="true" class="block w-full text-center rounded-lg border border-transparent bg-indigo-600 px-6 py-4 text-xl leading-6 font-medium text-white hover:bg-indigo-500 focus:outline-none focus:border-indigo-700 focus:shadow-outline-indigo transition ease-in-out duration-150">
												Start your trial
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="mt-10 mx-auto max-w-md lg:m-0 lg:max-w-none lg:col-start-6 lg:col-end-8 lg:row-start-2 lg:row-end-3">
							<div class="h-full flex flex-col rounded-lg shadow-lg overflow-hidden lg:rounded-none lg:rounded-r-lg">
								<div class="flex-1 flex flex-col">
									<div class="bg-white px-6 py-10">
										<div>
											<h2 class="text-center text-2xl leading-8 font-medium text-gray-900">
												Scale
											</h2>
											<div class="mt-4 flex items-center justify-center">
                      <span class="px-3 flex items-start text-6xl leading-none tracking-tight text-gray-900">
                        <span class="mt-2 mr-2 text-4xl font-medium">
                          $
                        </span>
                        <span class="font-extrabold">
                          349
                        </span>
                      </span>
												<span class="text-xl leading-7 font-medium text-gray-400">
                        /month
                      </span>
											</div>
										</div>
									</div>
									<div class="flex-1 flex flex-col justify-between border-t-2 border-gray-100 p-6 bg-gray-50 sm:p-10 lg:p-6 xl:p-10">
										<ul>
											<li class="flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Pariatur quod similique
												</p>
											</li>
											<li class="mt-4 flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Sapiente libero doloribus
												</p>
											</li>
											<li class="mt-4 flex items-start">
												<div class="flex-shrink-0">
													<svg class="h-6 w-6 text-green-500" stroke="currentColor" fill="none" viewBox="0 0 24 24">
														<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
													</svg>
												</div>
												<p class="ml-3 text-base leading-6 font-medium text-gray-500">
													Vel ipsa esse repudiandae
												</p>
											</li>
										</ul>
										<div class="mt-8">
											<div class="rounded-lg shadow-md">
												<a href="#" data-gumroad-single-product="true" class="block w-full text-center rounded-lg border border-transparent bg-white px-6 py-3 text-base leading-6 font-medium text-indigo-600 hover:text-indigo-500 focus:outline-none focus:shadow-outline transition ease-in-out duration-150">
													Start your trial
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



    {$image1 = {asset path="images/photos/mark-n-joe.jpg"}}
    {layout_section style="background-image:url('$image1')" class="bg-cover min-h-screen"}
		<div class="flex mt-96 ml-6/12 mr-1/12 bg-white z-10 shadow-2xl max-w-2xl mx-auto rounded-md rounded-lg overflow-hidden bg-white group">
			<div class="px-1/12 py-1/12 md:px-2/12 md:py-20 bg-white self-center">
				<h2 class="text-3xl sm:text-4xl md:text-5xl text-blue-950 pr-10">Culture stuff</h2>
				<h6 class="pt-0 text-blue-500 uppercase text-xs font-bold md:pl-15 md:text-sm md:font-extrabold">label</h6>
				<p class="md:pl-15 text-gray-700 text-justify">Stuff about stuff here</p>
			</div>
		</div>
    {/layout_section}


{/block}
