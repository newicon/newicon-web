{* Is this necessary in smarty? 🤮 *}
{if (!isset($inverse))} {$inverse=false} {/if}
{if (!isset($white))} {$white=[]} {/if}
<header class="{$class|default:''}" style="{$style|default}">

	{* menu items indexed by their nice_id *}
	{$menu = [
		'services' => [
			'title' => 'services',
			'children' => [
				'architecture' => [
					'title'=>"Architecture &amp; UX Design",
					'icon' => 'ico-architecture',
					'sub' => 'Rapid prototyping, design, and user experience services.',
					'link' => 'architecture'
				],
				'software' => [
					'title' => 'Software Development',
					'sub' => 'Software for desktop, mobile and everything in between.',
					'icon'=> 'ico-software-dev',
					'link' => 'software'
				],
				'web-development' => [
					'title' => 'Web Development',
					'sub' => 'Websites, e-commerce and CMSs to boost your business.',
					'icon' => 'ico-web-dev',
					'link' => 'web-development'
				],
				'digital-marketing' => [
					'title' => 'Digital Marketing',
					'sub' => 'Grow your business with SEO, PPC and Social media.',
					'icon' => 'ico-digital-marketing',
					'link' => 'digital-marketing'
				]
			]
		],
		'work' => [
			'title' => 'work',
			'link' => 'work',
			'icon' => 'ico-work',
			'sub' => 'See some things we have done'
		],
		'about' => [
			'title' => 'about',
			'children' => [
				'about' => ['link'=>"about", 'title'=>"About us", 'sub'=>"Our mission, vision and mantra.", 'icon'=>'ico-about-us'],
				'brand-values' => ['link'=>"brand-values", 'title'=>"Brand Values", 'sub'=>"Values that dirve our business", 'icon'=>'ico-dna'],
				'culture' => ['link' => 'culture', 'title' => 'Culture', 'sub' => 'Learn about the way we do things around here.', 'icon' => 'ico-culture'],
				'team' => ['link'=>"team", 'title'=>"The Team", 'sub'=>"Meet the people that make it all happen.", 'icon'=>'ico-team'],
				'join' => ['link'=>"join", 'title'=>"Join the team", 'sub'=>"Open job opportunities in Newicon", 'icon'=>'ico-join'],
				'why-join' => ['link'=>"why-join", 'title'=>"Why join us?", 'sub'=>"Why choose Newicon to grow your career", 'icon'=>'ico-pizza'],
				'blog' => ['link' => 'blog', 'title' => 'Blog', 'sub'=>'News, thoughts and feelings', 'icon'=>'ico-blog'],
				'history' => ['link' => 'history', 'title' => 'History', 'sub' => 'See where we started and how we\'ve grown.', 'icon'=>'ico-history']
			]
		],
		'approach' => [
			'title' => 'approach',
			'children' => [
				'approach' => ['link'=>"approach", 'title'=>"Our Approach", 'sub'=>"How we build innovative digital products and services.", 'icon'=>'ico-approach'],
				'architecture-process' => ['link'=>"architecture-process", 'title'=>"Architecture process",'sub'=>"Our unique process for visual and technical design.", 'icon'=>'ico-process'],
				'technologies' => ['link'=>"technologies", 'title'=>"Technologies", 'sub'=>"Our philosophies and most used technologies.", 'icon'=>'ico-technologies'],
                'neon' => ['link'=>"neon", 'title'=>"Neon Framework", 'sub'=>"Our innovative framework, helping to create the future.", 'icon'=>'ico-neon']
			]
		],
		'contact' => [
			'title' => 'contact',
			'link' => 'contact',
			'icon' => 'ico-contact',
			'sub' => 'Lets start a conversation'
		]
	]}
	{css}
		.pointer-top:after {
			position: absolute;
			display: block;
			border-width: 10px;
			left: 50%;
			border-style: solid;
			content: " ";
			border-color: transparent transparent #ffffff transparent;
			top: -19px;
			margin-left: -10px;
		}

		/* Sticky headers on mobile scrolling menu */
		.sticky { position: -webkit-sticky; position: -moz-sticky; position: -o-sticky; position: -ms-sticky; position: sticky; top: 0; left: 0; right: 0; display: block; z-index: 1; }

		.ni-nav-dd_about ul {
			/* @apply('grid-template-columns'); */
			grid-template-columns: repeat(2,minmax(0,1fr));
			width: 30rem;
		}

{*		.ni-nav-menu:focus-within .ni-nav-dd {*}
{*			opacity:100;*}
{*			--transform-scale-x: 1;*}
{*			--transform-scale-y: 1;*}
{*		}*}

		.group:focus-within .group-focus-within\:opacity-100 {
			opacity:100;
		}
		.group:focus-within .group-focus-within\:scale-100 {
			--transform-scale-x: 1;
			--transform-scale-y: 1;
		}
	{/css}

    {function nav_menu_item title='' sub='' link='' icon=''}
        {*
		* @var string title
		* @var sring sub
		* @var string link - page nice id
		* @var string icon - icon class name
		*}
        {$onUrl = on_url({page_url nice=$link})}
        {$titleColor = ''}
        {$activeTitleClass = ($inverse) ? 'text-blue-400' : 'text-blue-600'}
        {$inactiveTitleClass = ($inverse) ? 'text-blue-100' : 'text-blue-950'}
        {$subColor = ($inverse) ? 'text-gray-300' : 'text-gray-700'}
		<li class="{$class|default:''} {($inverse)?'border-gray-800':'border-gray-100'}">
			<a class="group block no-underline flex items-center {($onUrl) ? $activeTitleClass : $inactiveTitleClass}" href="{page_url nice=$link}">
				<i class="block flex-none w-18 {$icon} mr-6"></i>
				<div class="flex-grow">
					<h5 class="m-0 text-md font-semibold leading-6">{$title}</h5>
                    {if isset($sub)}<p class="m-0 text-sm {$subColor} leading-5">{$sub}</p>{/if}
				</div>
			</a>
		</li>
    {/function}


	<nav class="hidden md:block" >
		<ul class="md:flex justify-around m-0">
			<li class="relative {(in_array('newicon', $white)||$inverse) ? 'text-white' : ''}">
				<a tabindex="0" class="px-5 h-16 w-28 inline-flex items-center justify-center" aria-label="Newicon home page" href="{page_url nice="home"}">
					<svg width="100%" height="100%" viewBox="0 0 1004 190" xmlns="http://www.w3.org/2000/svg"><g fill="currentColor" fill-rule="nonzero"><path d="M121.4 55.7c8.4 9.8 12.6 24.5 12.6 44.2v87.8H97.4V102c0-11.1-2-19.2-6.3-24.3-4.2-5-10.8-7.6-19.7-7.6-10.6 0-19 3.4-25.3 10a37 37 0 00-9.5 26.6v81H0v-143h35.7V66a49.4 49.4 0 0119.6-18.4A59 59 0 0183 41c17.1 0 30 4.9 38.3 14.6zM289.3 122.7h-97.4c1.2 13.3 5.2 23.1 12 29.6 6.8 6.4 16.6 9.6 29.3 9.6a69 69 0 0043.2-15.2L287 172a77 77 0 01-25 13.1c-9.8 3.3-20 5-30.3 5-23.4 0-41.9-6.6-55.4-19.9-13.6-13.3-20.3-31.4-20.3-54.4 0-14.6 2.9-27.6 8.7-39a63.8 63.8 0 0124.8-26.2 69.9 69.9 0 0136-9.4c19.8 0 35.3 6.3 46.7 19 11.4 12.7 17.2 30.1 17.2 52.4l-.1 10.2zm-86.4-46.5c-6 6.3-9.7 15.2-11 27H258c-.4-12-3.3-21-8.8-27.1a29 29 0 00-22.8-9.3 31 31 0 00-23.5 9.4zM496.5 44.6H529l-49.1 143h-31.9l-35.1-92-34.2 92h-31.6l-46.9-143H333l31.8 99.5 36.5-99.4h26.4l36.5 100zM556.5.1h12.1v12.1h-12V.2zm0 187V44.6h12.2v142.5h-12.3zM632.5 180a60.2 60.2 0 01-22.7-25.7 87.5 87.5 0 01-8-38.4c0-14.6 2.7-27.5 8-38.7A60.7 60.7 0 01667 42a73 73 0 0127.2 5.1c8 3 15.2 7.8 21 13.9l-5.8 10.5a86 86 0 00-21-13.6 53.2 53.2 0 00-21-4.2c-16.3 0-29 5.5-38.4 16.7-9.4 11-14 26.4-14 45.9 0 19.1 4.6 34 13.9 44.7 9.3 10.8 22 16.1 38.1 16.1 7.3 0 14.5-1.4 21.2-4a80.7 80.7 0 0021.2-13.5l5.9 10.2a57.8 57.8 0 01-21.7 14.2 73.8 73.8 0 01-26.9 5.1c-13 0-24.4-3-34.2-9.1zM762.4 180a59 59 0 01-22.3-25.7 91 91 0 01-7.9-39c0-14.5 2.7-27.4 8-38.5A60.1 60.1 0 01762.4 51c9.5-6 20.5-9 33-9 12.4 0 23.5 3 33 9 9.6 6 17 14.6 22.3 25.7a89 89 0 018 38.7 90 90 0 01-8 38.9 60 60 0 01-22.2 25.7c-9.6 6-20.6 9-33 9-12.5 0-23.6-3-33.1-9zm70-18.9c8.7-10.6 13-25.8 13-45.7 0-19.4-4.4-34.4-13.3-45.2A44.8 44.8 0 00795.4 54a44.9 44.9 0 00-36.7 16.2c-8.9 10.8-13.3 26-13.3 45.2 0 20 4.3 35.2 13 45.8a44.7 44.7 0 0036.7 16c16.2 0 28.7-5.4 37.3-16zM1004 95.8V187h-12.3V97c0-15-3-26-9-33-6-6.8-15.8-10.3-29.3-10.3-15 0-27 4.6-36.1 13.9a50.7 50.7 0 00-13.6 37v82.5h-12.3V45.5h12v25.4c4-9 10.8-16.6 19.4-21.5 8.7-5 18.6-7.4 29.7-7.4 34.3 0 51.5 18 51.5 53.8z"/></g></svg>
				</a>
			</li>
            {$aClass = 'pt-5 px-5 pb-8 px-0 inline-flex items-center justify-center no-underline font-normal'}
            {$liClass = 'relative group'}
			{foreach $menu as $key => $link}
				<li class="{$liClass} ni-nav-menu" >
					{if isset($link.children)}
						{$active = ({on_page id=array_keys($link.children)}) ? 'text-blue-500 font-semibold ': ''}
					{else}
						{$active = on_url({page_url nice=$link.link|default:''})}
					{/if}
					<a tabindex="0" class="{$aClass} {$active} group-hover:text-blue-500 {(isset($link.children)) ? 'cursor-default' : ''} lowercase {(in_array($key, $white)||$inverse) ? 'text-white' : ''}" href="{page_url nice=$link.link|default:'#'}" >{$link.title}</a>
					{if isset($link.children)}
						<div class="ni-nav-dd_{$key} group-focus-within:opacity-100 group-focus-within:scale-100
						 transform ease-in-out -translate-x-1/2 left-1/2 pointer-top absolute z-50 shadow-3xl bg-white md:p-8 lg:p-9 rounded-md origin-top transition-opacity-transform duration-300 pointer-events-none group-hover:pointer-events-auto opacity-0 group-hover:opacity-100 transform scale-90 group-hover:scale-100">
							<ul class="block m-0 md:w-80 lg:w-96 grid md:gap-6 lg:gap-9">
							{foreach $link.children as $child}
								{nav_menu_item class="" inverse=false link=$child.link title=$child.title sub=$child.sub|default:'' icon=$child.icon}
							{/foreach}
							</ul>
						</div>
					{/if}
				</li>
			{/foreach}
		</ul>
	</nav>

	<!-- Mobile menu -->
	{$logoWhite = (in_array('newicon', $white)||$inverse)}
	<nav x-data="{ open: false, logoWhite:{($logoWhite)?'true':'false'}  }" :class="{ open:open }" class="md:hidden flex justify-between inset-x-0 top-0 z-40 h-14 relative">
		<a :class="(open || !logoWhite)?'text-black':'text-white'" class="px-5 w-28 inline-flex items-center justify-center relative z-50"  aria-label="Newicon home page" href="{page_url nice="home"}">
			<svg width="100%" height="100%" viewBox="0 0 1004 190" xmlns="http://www.w3.org/2000/svg"><g fill="currentColor" fill-rule="nonzero"><path d="M121.4 55.7c8.4 9.8 12.6 24.5 12.6 44.2v87.8H97.4V102c0-11.1-2-19.2-6.3-24.3-4.2-5-10.8-7.6-19.7-7.6-10.6 0-19 3.4-25.3 10a37 37 0 00-9.5 26.6v81H0v-143h35.7V66a49.4 49.4 0 0119.6-18.4A59 59 0 0183 41c17.1 0 30 4.9 38.3 14.6zM289.3 122.7h-97.4c1.2 13.3 5.2 23.1 12 29.6 6.8 6.4 16.6 9.6 29.3 9.6a69 69 0 0043.2-15.2L287 172a77 77 0 01-25 13.1c-9.8 3.3-20 5-30.3 5-23.4 0-41.9-6.6-55.4-19.9-13.6-13.3-20.3-31.4-20.3-54.4 0-14.6 2.9-27.6 8.7-39a63.8 63.8 0 0124.8-26.2 69.9 69.9 0 0136-9.4c19.8 0 35.3 6.3 46.7 19 11.4 12.7 17.2 30.1 17.2 52.4l-.1 10.2zm-86.4-46.5c-6 6.3-9.7 15.2-11 27H258c-.4-12-3.3-21-8.8-27.1a29 29 0 00-22.8-9.3 31 31 0 00-23.5 9.4zM496.5 44.6H529l-49.1 143h-31.9l-35.1-92-34.2 92h-31.6l-46.9-143H333l31.8 99.5 36.5-99.4h26.4l36.5 100zM556.5.1h12.1v12.1h-12V.2zm0 187V44.6h12.2v142.5h-12.3zM632.5 180a60.2 60.2 0 01-22.7-25.7 87.5 87.5 0 01-8-38.4c0-14.6 2.7-27.5 8-38.7A60.7 60.7 0 01667 42a73 73 0 0127.2 5.1c8 3 15.2 7.8 21 13.9l-5.8 10.5a86 86 0 00-21-13.6 53.2 53.2 0 00-21-4.2c-16.3 0-29 5.5-38.4 16.7-9.4 11-14 26.4-14 45.9 0 19.1 4.6 34 13.9 44.7 9.3 10.8 22 16.1 38.1 16.1 7.3 0 14.5-1.4 21.2-4a80.7 80.7 0 0021.2-13.5l5.9 10.2a57.8 57.8 0 01-21.7 14.2 73.8 73.8 0 01-26.9 5.1c-13 0-24.4-3-34.2-9.1zM762.4 180a59 59 0 01-22.3-25.7 91 91 0 01-7.9-39c0-14.5 2.7-27.4 8-38.5A60.1 60.1 0 01762.4 51c9.5-6 20.5-9 33-9 12.4 0 23.5 3 33 9 9.6 6 17 14.6 22.3 25.7a89 89 0 018 38.7 90 90 0 01-8 38.9 60 60 0 01-22.2 25.7c-9.6 6-20.6 9-33 9-12.5 0-23.6-3-33.1-9zm70-18.9c8.7-10.6 13-25.8 13-45.7 0-19.4-4.4-34.4-13.3-45.2A44.8 44.8 0 00795.4 54a44.9 44.9 0 00-36.7 16.2c-8.9 10.8-13.3 26-13.3 45.2 0 20 4.3 35.2 13 45.8a44.7 44.7 0 0036.7 16c16.2 0 28.7-5.4 37.3-16zM1004 95.8V187h-12.3V97c0-15-3-26-9-33-6-6.8-15.8-10.3-29.3-10.3-15 0-27 4.6-36.1 13.9a50.7 50.7 0 00-13.6 37v82.5h-12.3V45.5h12v25.4c4-9 10.8-16.6 19.4-21.5 8.7-5 18.6-7.4 29.7-7.4 34.3 0 51.5 18 51.5 53.8z"/></g></svg>
		</a>
		<div class="inline-flex items-center justify-center px-5 relative z-50">
			<a class="block md:hidden burger" href="#"  @click.prevent="open = !open; open ? document.documentElement.classList.add('no-scroll') : document.documentElement.classList.remove('no-scroll'); ">
				<span class="{(in_array($key, $white)||$inverse) ? 'bg-white' : 'bg-black'}"></span>
				<span class="{(in_array($key, $white)||$inverse) ? 'bg-white' : 'bg-black'}"></span>
			</a>
		</div>


		{function nav_menu menu=[]}
			<div x-show="open" class="fixed inset-x-0">
				<div x-show="open" style="transition-delay: 1ms;" x-transition:enter="transition ease-out duration-300" x-transition:enter-start="opacity-0 transform scale-90" x-transition:enter-end="opacity-100 transform scale-100" x-transition:leave="transition ease-in duration-300" x-transition:leave-start="opacity-100 transform scale-100" x-transition:leave-end="opacity-0 transform scale-90" x-cloak
					class="absolute h-screen {($inverse) ?  'bg-blue-950' : 'bg-white'} inset-0 origin-top-right fixed" >
					<div class="absolute inset-0 top-0 overflow-y-scroll mt-14">
						<div class="grid grid-cols-1 gap-0 pb-32">
						{foreach $menu as $key => $link}
							<div class="sticky {($inverse) ? 'bg-blue-950' : 'bg-white'} py-1 border-b border-t {($inverse)?'border-gray-800':'border-gray-100'}">
								<h3 class="text-sm px-5 font-semibold leading-6 text-gray-400 m-0 ">{$link.title}</h3>
							</div>
							<ul class="grid grid-cols-1 gap-0 m-0 px-0">
								{if isset($link.children)}
									{foreach $link.children as $child}
										{nav_menu_item inverse=$inverse class={(!$child@last)?'py-3 border-b px-5':'py-3 px-5' } link=$child.link title=$child.title sub=$child.sub|default:'' icon=$child.icon}
									{/foreach}
								{else}
									{nav_menu_item inverse=$inverse class="py-3 px-5" link=$link.link title=$link.title sub=$link.sub|default:'' icon=$link.icon}
								{/if}
							</ul>
						{/foreach}
						</div>
					</div>
				</div>
			</div>
		{/function}

		{* always show light menu on mobile *}
		{nav_menu menu=$menu inverse=false}
	</nav>


</header>
{jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v1.11.1/dist/alpine.js" attributes=['async', 'defer']}
{*{navigation_original}*}
{*
In order to get nice smooth animations that don't do strange things we have to use vue / alpine to enter before enter start etc 
we want drop down elements to be display:none when it is not in a hovered state.
This stops them interacting with the page.
However display:none prevents our transitions from working
*}