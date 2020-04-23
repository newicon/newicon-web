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
    <div class="max-w-3xl px-6 mx-auto wysiwyg text-xl font-normal leading-8 pb-20 ">
        {$post.content}
    </div>

{/block}

{css}
	.wysiwyg ul { margin-left: 1.25rem; padding-left: 1.25rem; margin-bottom: 1.25rem; }
	.wysiwyg li { list-style-type: disc; }
	.wysiwyg h1, .wysiwyg h2, .wysiwyg h3, .wysiwyg h4, .wysiwyg h5 { margin-top: 4rem }
	.wysiwyg a { color: var(--primary) }
{/css}