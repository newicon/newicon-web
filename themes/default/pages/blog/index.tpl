{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
    {include file="../_cmps/section/hero/text.tpl"
	    title="Blog"
	    sub="Read our blog"
	    body="qwefqwef"
    }


    {$blogs = [
    ['title' =>  'thing'],
    ['title' =>  'thing'],
    ['title' =>  'thing'],
    ['title' =>  'thing']
    ]}

	{layout_container}
	<div class="relative  pb-20 lg:pb-28">
{*		<div class="absolute inset-0">*}
{*			<div class="bg-white h-1/3 sm:h-2/3"></div>*}
{*		</div>*}
		<div class="relative mx-auto">
			<div class=" grid gap-6 row-gap-12 max-w-lg mx-auto lg:grid-cols-3 lg:max-w-none">
				{foreach $blogs as $blog}
					<div class="flex flex-col rounded-lg shadow-xl overflow-hidden transition duration-200 transform hover:-translate-y-2 hover:shadow-2xl ">
						<a href="#" class="flex-shrink-0">
							<img class="h-48 w-full object-cover" src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" alt="" />
						</a>
						<div class="flex-1 bg-white p-6 flex flex-col justify-between">
							<div class="flex-1">
								<p class="text-sm leading-5 font-medium text-indigo-600">
									<a href="#" class="hover:underline"> Case Study</a>
								</p>
								<a href="#" class="block">
									<h3 class="mt-2 text-xl leading-7 font-semibold text-gray-900">
										Improve your customer experience
									</h3>
									<p class="mt-3 text-base leading-6 text-gray-500">
										Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint harum rerum voluptatem quo recusandae magni placeat saepe molestiae, sed excepturi cumque corporis perferendis hic.
									</p>
								</a>
							</div>
							<div class="mt-6 flex items-center">
								<div class="flex-shrink-0">
									<a href="#">
										<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
									</a>
								</div>
								<div class="ml-3">
									<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
										<a href="#" class="hover:underline">
											Daniela Metz
										</a>
									</p>
									<div class="flex text-sm leading-5 text-gray-500">
										<time datetime="2020-03-16">Mar 16, 2020</time>
										<span class="mx-1">&middot;</span>
										<span>6 min read</span>
									</div>
								</div>
							</div>
						</div>
					</div>
	            {/foreach}
			</div>
		</div>
	</div>
    {/layout_container}


    {layout_section}
    {layout_container}
	<div class="bg-white pt-16 pb-20 px-4 sm:px-6 lg:pt-24 lg:pb-28 lg:px-8">
		<div class="relative max-w-lg mx-auto lg:max-w-7xl">
			<div>
				<h2 class="text-3xl leading-9 tracking-tight font-extrabold text-gray-900 sm:text-4xl sm:leading-10">
					Recent publications
				</h2>
				<p class="mt-3 text-xl leading-7 text-gray-500 sm:mt-4">
					Nullam risus blandit ac aliquam justo ipsum. Quam mauris volutpat massa dictumst amet. Sapien tortor lacus arcu.
				</p>
			</div>
			<div class="mt-12 grid gap-16 border-t-2 border-gray-100 pt-12 lg:grid-cols-3 lg:col-gap-10 lg:row-gap-12">
				<div>
					<div class="mb-4">
						<a href="#" class="inline-block">
				            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-indigo-100 text-indigo-800">
				              Article
				            </span>
						</a>
					</div>
					<a href="#" class="block mb-4">
						<img class="h-48 w-full object-cover" src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" alt="" />
					</a>

					<a href="#" class="block">
						<h3 class="mt-4 mb-0 text-xl leading-7 font-semibold text-gray-900">
							Boost your conversion rate
						</h3>
						<p class="mt-3 text-base leading-6 text-gray-500">
							Nullam risus blandit ac aliquam justo ipsum. Quam mauris volutpat massa dictumst amet. Sapien tortor lacus arcu.
						</p>
					</a>
					<div class="mt-6 flex items-center">
						<div class="flex-shrink-0">
							<a href="#">
								<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
							</a>
						</div>
						<div class="ml-3">
							<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
								<a href="#">
									Paul York
								</a>
							</p>
							<div class="flex text-sm leading-5 text-gray-500">
								<time datetime="2020-03-16">
									Mar 16, 2020
								</time>
								<span class="mx-1">
                &middot;
              </span>
								<span>
                6 min read
              </span>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="mb-4">
						<a href="#" class="inline-block">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-pink-100 text-pink-800">Video</span>
						</a>
					</div>
					<a href="#" class="block mb-4">
						<img class="h-48 w-full object-cover" src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" alt="" />
					</a>
					<a href="#" class="block">
						<h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900 hover:text-blue-500 mb-0" >
							How to use search engine optimization to drive sales
						</h3>
						<p class="mt-3 text-base leading-6 text-gray-500 mb-0">
							Nullam risus blandit ac aliquam justo ipsum. Quam mauris volutpat massa dictumst amet. Sapien tortor lacus arcu.
						</p>
					</a>
					<div class="mt-6 flex items-center">
						<div class="flex-shrink-0">
							<a href="#">
								<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1550525811-e5869dd03032?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
							</a>
						</div>
						<div class="ml-3">
							<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
								<a href="#">
									Dessie Ryan
								</a>
							</p>
							<div class="flex text-sm leading-5 text-gray-500">
								<time datetime="2020-03-15">
									Mar 15, 2020
								</time>
								<span class="mx-1">
                &middot;
              </span>
								<span>
                4 min read
              </span>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="mb-4">
						<a href="#" class="inline-block">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-green-100 text-green-800">
              Case Study
            </span>
						</a>
					</div>
					<a href="#" class="block mb-4">
						<img class="h-48 w-full object-cover" src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" alt="" />
					</a>
					<a href="#" class="block">
						<h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900 mb-0">
							Improve your customer experience
						</h3>
						<p class="mt-3 text-base leading-6 text-gray-500 mb-0">
							Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab iure iusto fugiat commodi sequi.
						</p>
					</a>
					<div class="mt-6 flex items-center">
						<div class="flex-shrink-0">
							<a href="#">
								<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
							</a>
						</div>
						<div class="ml-3">
							<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
								<a href="#">
									Easter Collins
								</a>
							</p>
							<div class="flex text-sm leading-5 text-gray-500">
								<time datetime="2020-03-10">
									Mar 10, 2020
								</time>
								<span class="mx-1">
                &middot;
              </span>
								<span>
                11 min read
              </span>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div>
						<a href="#" class="inline-block">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-green-100 text-green-800">
              Case Study
            </span>
						</a>
					</div>
					<a href="#" class="block">
						<h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900">
							Improve your customer experience
						</h3>
						<p class="mt-3 text-base leading-6 text-gray-500">
							Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab iure iusto fugiat commodi sequi.
						</p>
					</a>
					<div class="mt-6 flex items-center">
						<div class="flex-shrink-0">
							<a href="#">
								<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
							</a>
						</div>
						<div class="ml-3">
							<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
								<a href="#">
									Easter Collins
								</a>
							</p>
							<div class="flex text-sm leading-5 text-gray-500">
								<time datetime="2020-03-10">
									Mar 10, 2020
								</time>
								<span class="mx-1">
                &middot;
              </span>
								<span>
                11 min read
              </span>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div>
						<a href="#" class="inline-block mb-4">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-green-100 text-green-800">
              Case Study
            </span>
						</a>
					</div>
					<a href="#" class="block mb-4">
						<img class="h-48 w-full object-cover" src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" alt="" />
					</a>
					<a href="#" class="block">
						<h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900">
							Improve your customer experience
						</h3>
						<p class="mt-3 text-base leading-6 text-gray-500">
							Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab iure iusto fugiat commodi sequi.
						</p>
					</a>
					<div class="mt-6 flex items-center">
						<div class="flex-shrink-0">
							<a href="#">
								<img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" />
							</a>
						</div>
						<div class="ml-3">
							<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
								<a href="#">
									Easter Collins
								</a>
							</p>
							<div class="flex text-sm leading-5 text-gray-500">
								<time datetime="2020-03-10">
									Mar 10, 2020
								</time>
								<span class="mx-1">
                &middot;
              </span>
								<span>
                11 min read
              </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    {/layout_container}
    {/layout_section}
{/block}
