{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

    {function avatar}
		<div class="flex items-center {$class|default:''}">
			<div class="flex-shrink-0">
				<a href="#"><img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" /></a>
			</div>
			<div class="ml-3">
				<p class="text-sm leading-5 font-medium text-gray-900 mb-0">
					<a href="#">Paul York</a>
				</p>
                {if !empty($sub)}
					<div class="flex text-sm leading-5 text-gray-500">
                        {$sub}
					</div>
                {/if}
			</div>
		</div>
    {/function}

    {function card_blog_shadow}
		<div class="flex flex-col rounded-lg bg-white overflow-hidden transition duration-200 transform hover:-translate-y-2 hover:shadow-2xl shadow-lg {$class|default:''}" {attrs attrs=$attrs|default:[]}>
			<a href="/post" class="flex-shrink-0 relative block bg-gray-500 pb-3/4">
				<img class="w-full h-full absolute object-top object-cover" src="{$post.image|default:''}" alt="" />
			</a>
			<div class="flex-1 bg-white p-6 flex flex-col justify-between">
				<div class="flex-1">
					<p class="text-sm leading-5 mb-0 font-medium text-indigo-600">
						<a href="#" class="hover:underline"> Case Study</a>
					</p>
					<a href="#" class="block hover:text-blue-700">
						<h3 class="mt-2 mb-0 text-xl leading-7 font-semibold ">
							Improve your customer experience
						</h3>
						<p class="mt-3 text-base mb-0 leading-6 text-gray-500">
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
    {/function}



    {$blogs = [
    [
        'title' =>  'Boost your conversion rate',
        'category' => ['title' => 'Article', 'bgColor' => 'bg-indigo-100', 'textColor' => 'text-indigo-800' ],
	    'image' => 'https://images.unsplash.com/photo-1586973698216-0c4c285d7afd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2771&q=80'
    ],
    [
        'title' =>  'How to use search engine optimization to drive sales',
        'category' => ['title' => 'Video', 'bgColor' => 'bg-pink-100', 'textColor' => 'text-pink-800' ],
	    'image' => 'https://images.unsplash.com/photo-1492724441997-5dc865305da7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'
    ],
    [
	    'title' =>  'Imprive your customer experience',
	    'category' => ['title' => 'Case Study', 'bgColor' => 'bg-green-100', 'textColor' => 'text-green-800' ],
	    'image' => 'https://images.unsplash.com/photo-1529272709-8349601e899c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'
    ],
    [
    'title' =>  'Boost your conversion rate',
    'category' => ['title' => 'Article', 'bgColor' => 'bg-indigo-100', 'textColor' => 'text-indigo-800' ]
    ],
    [
    'title' =>  'How to use search engine optimization to drive sales',
    'category' => ['title' => 'Video', 'bgColor' => 'bg-pink-100', 'textColor' => 'text-pink-800' ]
    ],
    [
    'title' =>  'Imprive your customer experience',
    'category' => ['title' => 'Case Study', 'bgColor' => 'bg-green-100', 'textColor' => 'text-green-800' ]
    ],
    [
    'title' =>  'Boost your conversion rate',
    'category' => ['title' => 'Article', 'bgColor' => 'bg-indigo-100', 'textColor' => 'text-indigo-800' ]
    ],
    [
    'title' =>  'How to use search engine optimization to drive sales',
    'category' => ['title' => 'Video', 'bgColor' => 'bg-pink-100', 'textColor' => 'text-pink-800' ]
    ],
    [
    'title' =>  'Imprive your customer experience',
    'category' => ['title' => 'Case Study', 'bgColor' => 'bg-green-100', 'textColor' => 'text-green-800' ]
    ]
    ]}

    {layout_section pt="pt-10"}
    {layout_container}
		{include file="../_cmps/hero/text.tpl"
			title="Blog"
			sub="Read our ramblings"
			body="Completing so many design, development and app projects gives us a unique insight you won't find anywhere else"
		}

	    <div>
            {$tags = [
            ['title'=>'Latest', 'color'=>'blue'],
            ['title'=>'Dev', 'color'=>'blue'],
            ['title'=>'Design', 'color'=>'orange'],
            ['title'=>'Marketing', 'color'=>'green'],
            ['title'=>'Architecture', 'color'=>'pink'],
            ['title'=>'Business', 'color'=>'yellow'],
            ['title'=>'News','color' => 'blue']
            ]}
		    <div class="sm:hidden">
			    <select class="form-select block w-full">
                    {foreach $tags as $tag}
	                    <option>{$tag.title}</option>
                    {/foreach}
			    </select>
		    </div>
		    <div class="hidden sm:block">
			    <nav class="flex flex-wrap -ml-4">
				    <a href="#" class="mt-4 ml-4 px-4 py-3 font-medium text-base leading-5 rounded-md text-indigo-700 bg-indigo-100 focus:outline-none focus:text-indigo-800 focus:bg-indigo-200 hover:text-blue-500 ">
					    Latest
				    </a>
                    {foreach $tags as $tag}
				    <a href="#" class="mt-4 ml-4 px-4 py-3 font-medium text-base leading-5 rounded-md   text-gray-500    bg-gray-50 focus:outline-none focus:text-indigo-600 focus:bg-indigo-50 hover:text-gray-700">
					    {$tag.title}
				    </a>
				    {/foreach}
			    </nav>
		    </div>
	    </div>

	    <div class="mt-10 transition duration-300 ease-in-out grid-cols-1 lg:grid-cols-2 gap-10 grid   ">
		    <div class="relative hidden lg:block">
			    <img class="absolute w-full h-full object-cover object-top" src="https://images.unsplash.com/photo-1529272709-8349601e899c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80" />
		    </div>
		    <div class="pr-0 lg:pr-10 py-0">
			    <div class="flex justify-between">
                    {avatar sub='<time datetime="2020-03-16">Mar 16, 2020</time><span class="mx-1">&middot;</span><span>6 min read</span>'}
				    <a href="#" class="inline-block"><span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium  bg-blue-50 leading-5 text-blue-500">News</span></a>
			    </div>
			    <a href="#post " class="hover:text-blue-700"><h2 class="mt-4">Supporting Bristol Residents Through The Lockdown</h2></a>
			    <div class="relative pb-1/2 lg:hidden mb-4">
				    <img class="absolute w-full h-full object-cover object-top" src="https://images.unsplash.com/photo-1529272709-8349601e899c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80" />
			    </div>
			    <p class="text-xl font-normal leading-8 pb-6">Design is the rendering of intent - it requires thinking about the future state of a service or product and putting forth activities to make that outcome real. And it’s fraught with failure.  As most designers know, the more creative and forward-thinking the vision, the greater the chances of failing along the way. Thus, the really great designers not only accept, but celebrate failure as an essential part of the design process.</p>
			    <a href="#post" class="btn btn-outline border-blue-900 text-blue-900 btn-fx btn-xl w-full">Read more <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" class="ml-2 w-4 h-4"><path d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg> </a>
		    </div>
	    </div>

	    <div class="relative max-w-lg mx-auto lg:max-w-full">
		    <div class="mt-12 grid gap-10 lg:gap-6 lg:row-gap-6 xl:gap-10 xl:row-gap-10  border-t-2 border-gray-100 pt-12 lg:grid-cols-3">
                {card_blog_shadow post=$blogs[0] }
                {card_blog_shadow post=$blogs[1] }
                {card_blog_shadow post=$blogs[2] }
		    </div>
	    </div>



    {function card_blog_simple}
	    <div class="flex flex-col bg-white overflow-hidden {$class|default:''}" {attrs attrs=$attrs|default:[]}>
		    <div class="flex-1 p-0 flex flex-col justify-between">
			    <a href="/post" class="flex-shrink-0 relative block pb-3/4">
				    <img class="w-full h-full absolute object-top object-cover" src="{$post.image|default:''}" alt="" />
			    </a>
			    <div class="absolute top-2 right-3 text-xs mb-0 leading-5 font-medium text-indigo-600">
				    <a href="#" class="hover:underline"> Case Study</a>
			    </div>
			    <div class="flex-1">
				    <a href="#" class="block">
					    <h3 class="mt-2 mb-0 text-xl leading-7 font-semibold ">
						    Improve your customer experience
					    </h3>
				    </a>
			    </div>
			    <a href="#/profile" class="mt-2 flex items-center block">
				    <div>
					    <p class="text-sm leading-5 font-medium text-gray-900 mb-0">Daniela Metz</p>
					    <div class="flex text-sm leading-5 text-gray-500">
						    <time datetime="2020-03-16">Mar 16, 2020</time><span class="mx-1">&middot;</span><span>6 min read</span>
					    </div>
				    </div>

			    </a>

		    </div>
	    </div>
    {/function}

			    <div class="mt-12 grid gap-16 border-t-2 border-gray-100 pt-12 lg:grid-cols-3 lg:col-gap-5 lg:row-gap-12">
				    <div>
					    <div>
						    <a href="#" class="inline-block">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-indigo-100 text-indigo-800">
              Article
            </span>
						    </a>
					    </div>
					    <a href="#" class="block">
						    <h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900">
							    Boost your conversion rate
						    </h3>
						    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
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
							    <p class="text-sm leading-5 font-medium text-gray-900 mb-0 ">
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
					    <div>
						    <a href="#" class="inline-block">
            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-pink-100 text-pink-800">
              Video
            </span>
						    </a>
					    </div>
					    <a href="#" class="block">
						    <h3 class="mt-4 text-xl leading-7 font-semibold text-gray-900">
							    How to use search engine optimization to drive sales
						    </h3>
						    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
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
							    <p class="text-sm leading-5 mb-0 font-medium text-gray-900 mb-0 ">
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
						    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
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
							    <p class="text-sm leading-5 font-medium text-gray-900 mb-0 ">
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
						    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
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
							    <p class="text-sm leading-5 font-medium text-gray-900 mb-0 ">
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
						    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
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
							    <p class="text-sm leading-5 font-medium text-gray-900 mb-0 ">
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

	    <div class="mt-12 grid gap-16 lg:col-gap-6 lg:row-gap-12 border-t-2 border-gray-100 pt-12 lg:grid-cols-12">
            {card_blog_simple class="col-span-3" post=$blogs[2] }
            {card_blog_simple class="col-span-3" post=$blogs[2] }
            {card_blog_simple class="col-span-3" post=$blogs[2] }
            {card_blog_simple class="col-span-3" post=$blogs[2] }
            {card_blog_simple class="col-span-3" post=$blogs[2] }
            {card_blog_simple class="col-span-3" post=$blogs[2] }
	    </div>


    {/layout_container}
    {/layout_section}

{/block}