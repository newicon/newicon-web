{extends "layouts/layout.tpl"}

{post assign=post url=$page.url}
{$page.title = $post.title}
{block "head"}
	<meta name="SUASSGE" value="yum">
{/block}
{meta canonical="butts"}

{block "header"}
	<div class="bg-gray-50 pb-40 ">
        {navigation}

		<div class="max-w-3xl mx-auto wysiwyg text-xl font-normal leading-8 px-6 py-1 ">
			<h1 class="text-5xl text-black font-extrabold">{$post.title}</h1>
			<p class="text-2xl mt-7 leading-9 text-gray-700">{$post.summary}</p>

            {capture assign=sub}
				<time datetime='2020-03-16'>Mar 16</time><span class='mx-1'>&middot;</span><span>{$post.content|timeToRead} min read <span class='font-light text-sm'>({$post.content|wordCount} words)</span></span>
            {/capture}
			{include file="../_cmps/avatar/avatar.tpl" class="mt-10"
				name=$post.author.display_name
				role=$post.author.role
				avatar=$post.author.avatar
				sub=$sub
			}
		</div>
	</div>
{/block}
{block "content"}

    <div class="px-6 max-w-3xl xl:max-w-none xl:w-2/3 mx-auto  mb-20">
	    {image src=$post.image_main class="w-full -mt-28 rounded-lg" width="200"}
    </div>
    <div class="max-w-3xl px-10 md:px-10  mx-auto wysiwyg text-xl font-normal leading-8 pb-20 ">
        {$post.content}

		<hr>
        {include file="../_cmps/avatar/avatar.tpl" class="mt-10"
	        name="I'm {$post.author.display_name}"
	        role="{$post.author.role} at Newicon"
	        avatar=$post.author.avatar
	        sub=""
        }
    </div>

	{layout_section class="m-6 bg-gray-50"}
		<div class="max-w-3xl px-6 md:px-10 md:pr-20  mx-auto text-xl font-normal leading-8">
			<h4 class=" text-3xl mb-0  text-gray-800">Join the newsletter</h4>
			<p class="mt-2 mb-4 text-gray-600 text-base leading-6 mb-0">
				<span class="ni-italic text-gray-900">Subscribe to get our best content.</span>
				<span class="ml-4 ni-italic text-gray-500">No spam, ever. Unsubscribe at any time.</span>
			</p>
			<form class="mt-2 flex flex-wrap md:flex-no-wrap">
				<div class="w-full flex-grow min-w-0">
					<input aria-label="You first name" type="text" required="" class="form-input py-3 relative block w-full h-full rounded-none rounded-t-md md:rounded-l-md md:rounded-r-none focus:z-10" placeholder="Your first name">
				</div>
				<div class="w-full flex-grow  -mt-px md:mt-0 md:-ml-px min-w-0">
					<input aria-label="Email address" type="email" required="" class="form-input py-3 relative block w-full h-full rounded-none focus:z-10 " placeholder="Enter your email">
				</div>
				<div class="w-full flex-shrink md:w-56 -mt-px md:mt-0 md:-ml-px min-w-0">
					<button class="btn w-full btn-primary rounded-none py-2 rounded-b-md md:rounded-l-none md:rounded-r-md focus:shadow-outline transition duration-150 ease-in-out h-full focus:z-10  relative" >
						Join
					</button>
				</div>
			</form>
		</div>
	{/layout_section}

{/block}

{css}

	.wysiwyg h1, .wysiwyg h2, .wysiwyg h3, .wysiwyg h4, .wysiwyg h5 { margin-top: 4rem }
	.wysiwyg a { color: var(--primary) }
	hr { margin-top: 3rem; margin-bottom:3rem }
	.wysiwyg ul { margin-left: -0.6rem;  margin-bottom: 1.25rem; }
	.wysiwyg li { list-style-type: disc; padding-left: 0.6rem; }
	@media (max-width:850px) {
		.wysiwyg > ul, .wysiwyg > ol { margin-left: 0rem; }
		.wysiwyg li { padding-left: 0rem; }
	}
{/css}