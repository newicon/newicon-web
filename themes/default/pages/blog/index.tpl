{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}

	{* get our posts and category data *}
	{* posts have their author *}
    {posts assignPosts=posts assignCategory=category assignCateories=categories}

    {function callout_post}
		<div class="mt-10 transition duration-300 ease-in-out grid-cols-1 lg:grid-cols-2 gap-10 grid   ">
			<div class="relative hidden lg:block">
                {image src="{$post.image_main}"  class="absolute w-full h-full object-cover object-top" }
			</div>
			<div class="pr-0 lg:pr-10 py-0">
				<div class="flex justify-between">
                    {if !empty($post.author)}
                        {include file="../_cmps/avatar/avatar-small.tpl"
                        name=$post.author.display_name
                        avatar=$post.author.avatar
                        sub="<time datetime='2020-03-16'>Mar 16, 2020</time><span class='mx-1'>&middot;</span><span>{$post.content|timeToRead} min read</span>"}
                    {/if}
					{if ($post.category)}
						<a href="{url($post.category.slug)}" class="inline-block"><span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium  bg-blue-50 leading-5 text-blue-500">{$post.category.title}</span></a>
					{/if}
				</div>
				<a href="{url($post.slug)}" class="hover:text-blue-700"><h2 class="mt-8">{$post.title}</h2></a>
				<div class="relative pb-1/2 lg:hidden mb-4">
                    {image src="{$post.image_main}"  class="absolute w-full h-full object-cover object-top" }
				</div>
				<div class="text-xl font-normal leading-8 pb-6">
                    {$post.content|truncateHtml:500}
				</div>
				<a href="{url($post.slug)}" class="btn btn-outline border-blue-900 text-blue-900 btn-fx btn-xl w-full">Read more <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" class="ml-2 w-4 h-4"><path d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg> </a>
			</div>
		</div>
    {/function}

    {function card_blog_shadow}
		<div class="flex flex-col rounded-lg bg-white overflow-hidden transition duration-200 transform hover:-translate-y-2 hover:shadow-2xl shadow-lg {$class|default:''}" {attrs attrs=$attrs|default:[]}>
			<a href="{url($post.slug)}" class="flex-shrink-0 relative block bg-gray-500 pb-3/4">
                {image src="{$post.image_main}"  class="absolute w-full h-full object-cover object-top" }
			</a>
			<div class="flex-1 bg-white p-6 flex flex-col justify-between">
				<div class="flex-1">
					<p class="text-sm leading-5 mb-0 font-medium text-indigo-600">
						<a href="{url($post.category.slug)}" class="hover:underline">{$post.category.title}</a>
					</p>
					<a href="{url($post.slug)}" class="block hover:text-blue-700">
						<h3 class="mt-2 mb-0 text-xl leading-7 font-semibold ">
							{$post.title}
						</h3>
						<p class="mt-3 text-base mb-0 leading-6 text-gray-500">
							{if empty($post.summary)}
							    {$post.content|truncateHtml:200}
							{else}
                                {$post.summary}
							{/if}
						</p>
					</a>
				</div>
                {if !empty($post.author)}
                    {include file="../_cmps/avatar/avatar-small.tpl"
                    class="mt-6"
                    name=$post.author.display_name
                    avatar=$post.author.avatar
                    sub="<time datetime='2020-03-16'>Mar 16, 2020</time><span class='mx-1'>&middot;</span><span>{$post.content|timeToRead} min read</span>"}
                {/if}
			</div>
		</div>
    {/function}


    {layout_section pt="pt-10"}
    {layout_container}
		{include file="../_cmps/hero/text.tpl"
			title="Blog"
			sub="Read our ramblings"
			body="Completing so many design, development and app projects gives us a unique insight you won't find anywhere else"
		}
	    <div>
		    <div class="sm:hidden">
			    <select class="form-select block w-full" onchange="location = this.options[this.selectedIndex].value;">
                    {foreach $categories as $cat}
	                    <option {if (url($page.url) == url($cat.slug))}selected="selected"{/if} value="{url($cat.slug)}" >{$cat.title}</option>
                    {/foreach}
			    </select>
		    </div>
		    <div class="hidden sm:block">
			    <nav class="flex flex-wrap -ml-4">
				    {$inactiveClass = 'text-gray-500    bg-gray-50    focus:text-indigo-600 focus:bg-indigo-50  hover:text-gray-700'}
				    {$activeClass =   'text-indigo-700  bg-indigo-100 focus:text-indigo-800 focus:bg-indigo-200 hover:text-blue-500'}
                    {foreach $categories as $cat}
                        {$catClass = ($category==$cat._uuid) ? $activeClass : $inactiveClass}
					    <a href="{url($cat.slug)}" data-id="{$cat._uuid}" class="transition ease-in-out duration-300 focus:shadow-outline-blue mt-4 ml-4 px-4 py-3 font-medium text-base leading-5 rounded-md focus:outline-none {$catClass}">
						    {$cat.title}
					    </a>
				    {/foreach}
			    </nav>
		    </div>
	    </div>



    {if ($posts.length)}
		{callout_post post=$posts.rows[0]}

	    <div class="relative max-w-lg mx-auto lg:max-w-full">
        {if ($posts.length <= 2)}
            {* When there is only 1 blog card to show *}
		    <div class="mt-12 grid gap-10 lg:gap-6 lg:row-gap-6 xl:gap-10 xl:row-gap-10  border-t-2 border-gray-100 pt-12 lg:grid-cols-1">
                {foreach $posts.rows as $post}
                    {* skip first post (its been printed above) *}
                    {if $post@first} {continue}{/if}
                    {callout_post post=$post}
                {/foreach}
		    </div>

	    {elseif ($posts.length <= 3)}
            {* When there is only 2 blog cards to show *}
			<div class="mt-12 grid gap-10 lg:gap-6 lg:row-gap-6 xl:gap-10 xl:row-gap-10  border-t-2 border-gray-100 pt-12 lg:grid-cols-2">
			{foreach $posts.rows as $post}
				{* skip first post (its been printed above) *}
			    {if $post@first} {continue}{/if}
			    {card_blog_shadow post=$post}
	        {/foreach}
			</div>
	    {else}
		    <div class="mt-12 grid gap-10 lg:gap-6 lg:row-gap-6 xl:gap-10 xl:row-gap-10  border-t-2 border-gray-100 pt-12 lg:grid-cols-3">
                {foreach $posts.rows as $post}
                    {* skip first post (its been printed above) *}
                    {if $post@first} {continue}{/if}
                    {if ($post@index >= 4)} {break} {/if}
                    {card_blog_shadow post=$post}
                {/foreach}
		    </div>
        {/if}
	    </div>

    {else}
		<div class="rounded-md bg-blue-50 p-4 mt-10">
			<div class="flex">
				<div class="flex-shrink-0">
					<svg class="h-5 w-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
						<path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd"/>
					</svg>
				</div>
				<div class="ml-3 flex-1 md:flex md:justify-between">
					<p class="leading-5 text-blue-700 mb-0">
						We don't seem to have any posts in that topic.
						<b class="text-xl">😅</b>
					</p>
				</div>
			</div>
		</div>
	{/if}


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

<div class="relative max-w-lg mx-auto lg:max-w-full">
    <div class="mt-12 grid gap-16 border-t-2 border-gray-100 pt-12 lg:grid-cols-3 lg:col-gap-5 lg:row-gap-12">

    {foreach $posts.rows as $post}
        {* skip first post (its been printed above) *}
        {if ($post@index <= 3)} {continue} {/if}
	    <div>
		    <div>
			    <a href="#" class="inline-block">
		            <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium leading-5 bg-blue-50 text-blue-500">
			            {if (!empty($post.category))}
		                    {$post.category.title}
			            {else}
				            Uncategorised
			            {/if}
		            </span>
			    </a>
		    </div>
		    <a href="#" class="block hover:text-blue-700">
			    <h3 class="mt-4 text-xl leading-7 font-semibold ">
				    {$post.title}
			    </h3>
			    <p class="mt-3 text-base leading-6 text-gray-500 mb-0 ">
                    {if empty($post.summary)}
                        {$post.content|truncateHtml:200}
                    {else}
                        {$post.summary}
                    {/if}
			    </p>
		    </a>
            {if !empty($post.author)}
                {include file="../_cmps/avatar/avatar-small.tpl"
                class="mt-6"
                name=$post.author.display_name
                avatar=$post.author.avatar
                sub="<time datetime='2020-03-16'>Mar 16, 2020</time><span class='mx-1'>&middot;</span><span>{$post.content|timeToRead} min read</span>"}
            {/if}
	    </div>
    {/foreach}
    </div>
</div>
    {/layout_container}
    {/layout_section}


{/block}
