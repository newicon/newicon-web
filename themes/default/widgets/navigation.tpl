{* Is this necessary in smarty? 🤮 *}
{if (!isset($inverse))} {$inverse=false} {/if}
{if (!isset($white))} {$white=[]} {/if}
<header x-data="{ isOpen: false }" style="{$style|default}">

	{$menu = [
		'services' => [
			'title' => 'Services',
			'children' => [

			]
		]
	]}


		<nav class="hidden md:block" >
			<ul class="md:flex justify-around">
				{$aClass = 'px-0 h-16 inline-flex items-center justify-center no-underline font-normal'}
				<li class="{(in_array('newicon', $white)||$inverse) ? 'text-white' : ''}">
					<a class="h-16 w-20 inline-flex items-center justify-center" aria-label="Newicon home page" href="{page_url nice="home"}">
						<svg width="100%" height="100%" viewBox="0 0 1004 190" xmlns="http://www.w3.org/2000/svg"><g fill="currentColor" fill-rule="nonzero"><path d="M121.4 55.7c8.4 9.8 12.6 24.5 12.6 44.2v87.8H97.4V102c0-11.1-2-19.2-6.3-24.3-4.2-5-10.8-7.6-19.7-7.6-10.6 0-19 3.4-25.3 10a37 37 0 00-9.5 26.6v81H0v-143h35.7V66a49.4 49.4 0 0119.6-18.4A59 59 0 0183 41c17.1 0 30 4.9 38.3 14.6zM289.3 122.7h-97.4c1.2 13.3 5.2 23.1 12 29.6 6.8 6.4 16.6 9.6 29.3 9.6a69 69 0 0043.2-15.2L287 172a77 77 0 01-25 13.1c-9.8 3.3-20 5-30.3 5-23.4 0-41.9-6.6-55.4-19.9-13.6-13.3-20.3-31.4-20.3-54.4 0-14.6 2.9-27.6 8.7-39a63.8 63.8 0 0124.8-26.2 69.9 69.9 0 0136-9.4c19.8 0 35.3 6.3 46.7 19 11.4 12.7 17.2 30.1 17.2 52.4l-.1 10.2zm-86.4-46.5c-6 6.3-9.7 15.2-11 27H258c-.4-12-3.3-21-8.8-27.1a29 29 0 00-22.8-9.3 31 31 0 00-23.5 9.4zM496.5 44.6H529l-49.1 143h-31.9l-35.1-92-34.2 92h-31.6l-46.9-143H333l31.8 99.5 36.5-99.4h26.4l36.5 100zM556.5.1h12.1v12.1h-12V.2zm0 187V44.6h12.2v142.5h-12.3zM632.5 180a60.2 60.2 0 01-22.7-25.7 87.5 87.5 0 01-8-38.4c0-14.6 2.7-27.5 8-38.7A60.7 60.7 0 01667 42a73 73 0 0127.2 5.1c8 3 15.2 7.8 21 13.9l-5.8 10.5a86 86 0 00-21-13.6 53.2 53.2 0 00-21-4.2c-16.3 0-29 5.5-38.4 16.7-9.4 11-14 26.4-14 45.9 0 19.1 4.6 34 13.9 44.7 9.3 10.8 22 16.1 38.1 16.1 7.3 0 14.5-1.4 21.2-4a80.7 80.7 0 0021.2-13.5l5.9 10.2a57.8 57.8 0 01-21.7 14.2 73.8 73.8 0 01-26.9 5.1c-13 0-24.4-3-34.2-9.1zM762.4 180a59 59 0 01-22.3-25.7 91 91 0 01-7.9-39c0-14.5 2.7-27.4 8-38.5A60.1 60.1 0 01762.4 51c9.5-6 20.5-9 33-9 12.4 0 23.5 3 33 9 9.6 6 17 14.6 22.3 25.7a89 89 0 018 38.7 90 90 0 01-8 38.9 60 60 0 01-22.2 25.7c-9.6 6-20.6 9-33 9-12.5 0-23.6-3-33.1-9zm70-18.9c8.7-10.6 13-25.8 13-45.7 0-19.4-4.4-34.4-13.3-45.2A44.8 44.8 0 00795.4 54a44.9 44.9 0 00-36.7 16.2c-8.9 10.8-13.3 26-13.3 45.2 0 20 4.3 35.2 13 45.8a44.7 44.7 0 0036.7 16c16.2 0 28.7-5.4 37.3-16zM1004 95.8V187h-12.3V97c0-15-3-26-9-33-6-6.8-15.8-10.3-29.3-10.3-15 0-27 4.6-36.1 13.9a50.7 50.7 0 00-13.6 37v82.5h-12.3V45.5h12v25.4c4-9 10.8-16.6 19.4-21.5 8.7-5 18.6-7.4 29.7-7.4 34.3 0 51.5 18 51.5 53.8z"/></g></svg>
					</a>
				</li>
				<li>
	{*                {({on_page id=['architecture', 'software', 'web-development', 'digital-marketing']}) ? 'isActive': ''}*}
	{*                {(in_array('services', $white)||$inverse) ? 'text-white' : ''}*}
					<a class="{$aClass}" href="#" >services</a>
					<div class="dropdown">
						<div class="dropdown_group">
							<ul>
	                            {include file="nav_menu_item.tpl" link="architecture" title="Architecture &amp; UX Design" note="Rapid prototyping, design, and user experience services." icon='ico-architecture'}
	                            {include file="nav_menu_item.tpl" link="software" title="Software Development" note="Software for desktop, mobile and everything in between." icon='ico-software-dev'}
	                            {include file="nav_menu_item.tpl" link="web-development" title="Web Development" note="Websites, e-commerce and CMSs to boost your business." icon='ico-web-dev'}
	                            {include file="nav_menu_item.tpl" link="digital-marketing" title="Digital Marketing" note="Grow your business with SEO, PPC and Social media." icon='ico-digital-marketing'}
							</ul>
						</div>
					</div>
				</li>
				<li>
					<a class="{$aClass}" href="#">work</a>
				</li>
				<li>
					<a class="{$aClass}" href="#">about</a>
				</li>
				<li>
					<a class="{$aClass}" href="#">approach</a>
				</li>
				<li>
					<a class="{$aClass}" href="#">contact</a>
				</li>
			</ul>
		</nav>

		<!-- Mobile menu -->
		<nav class="fixed md:hidden inset-x-0 top-0 z-40">
			<a class="block md:hidden navTrigger absolute left-5 top-5" href="#" @click.prevent="isOpen = !isOpen; ">
                {*				isOpen ? document.documentElement.classList.add('noScroll') : document.documentElement.classList.remove('noScroll');*}
				<span></span>
				<span></span>
			</a>

			<svg class="w-20 h-4 top-4 absolute" style="left:50%; transform: translateX(-50%);" width="100%" height="100%" viewBox="0 0 1004 190" xmlns="http://www.w3.org/2000/svg"><g fill="currentColor" fill-rule="nonzero"><path d="M121.4 55.7c8.4 9.8 12.6 24.5 12.6 44.2v87.8H97.4V102c0-11.1-2-19.2-6.3-24.3-4.2-5-10.8-7.6-19.7-7.6-10.6 0-19 3.4-25.3 10a37 37 0 00-9.5 26.6v81H0v-143h35.7V66a49.4 49.4 0 0119.6-18.4A59 59 0 0183 41c17.1 0 30 4.9 38.3 14.6zM289.3 122.7h-97.4c1.2 13.3 5.2 23.1 12 29.6 6.8 6.4 16.6 9.6 29.3 9.6a69 69 0 0043.2-15.2L287 172a77 77 0 01-25 13.1c-9.8 3.3-20 5-30.3 5-23.4 0-41.9-6.6-55.4-19.9-13.6-13.3-20.3-31.4-20.3-54.4 0-14.6 2.9-27.6 8.7-39a63.8 63.8 0 0124.8-26.2 69.9 69.9 0 0136-9.4c19.8 0 35.3 6.3 46.7 19 11.4 12.7 17.2 30.1 17.2 52.4l-.1 10.2zm-86.4-46.5c-6 6.3-9.7 15.2-11 27H258c-.4-12-3.3-21-8.8-27.1a29 29 0 00-22.8-9.3 31 31 0 00-23.5 9.4zM496.5 44.6H529l-49.1 143h-31.9l-35.1-92-34.2 92h-31.6l-46.9-143H333l31.8 99.5 36.5-99.4h26.4l36.5 100zM556.5.1h12.1v12.1h-12V.2zm0 187V44.6h12.2v142.5h-12.3zM632.5 180a60.2 60.2 0 01-22.7-25.7 87.5 87.5 0 01-8-38.4c0-14.6 2.7-27.5 8-38.7A60.7 60.7 0 01667 42a73 73 0 0127.2 5.1c8 3 15.2 7.8 21 13.9l-5.8 10.5a86 86 0 00-21-13.6 53.2 53.2 0 00-21-4.2c-16.3 0-29 5.5-38.4 16.7-9.4 11-14 26.4-14 45.9 0 19.1 4.6 34 13.9 44.7 9.3 10.8 22 16.1 38.1 16.1 7.3 0 14.5-1.4 21.2-4a80.7 80.7 0 0021.2-13.5l5.9 10.2a57.8 57.8 0 01-21.7 14.2 73.8 73.8 0 01-26.9 5.1c-13 0-24.4-3-34.2-9.1zM762.4 180a59 59 0 01-22.3-25.7 91 91 0 01-7.9-39c0-14.5 2.7-27.4 8-38.5A60.1 60.1 0 01762.4 51c9.5-6 20.5-9 33-9 12.4 0 23.5 3 33 9 9.6 6 17 14.6 22.3 25.7a89 89 0 018 38.7 90 90 0 01-8 38.9 60 60 0 01-22.2 25.7c-9.6 6-20.6 9-33 9-12.5 0-23.6-3-33.1-9zm70-18.9c8.7-10.6 13-25.8 13-45.7 0-19.4-4.4-34.4-13.3-45.2A44.8 44.8 0 00795.4 54a44.9 44.9 0 00-36.7 16.2c-8.9 10.8-13.3 26-13.3 45.2 0 20 4.3 35.2 13 45.8a44.7 44.7 0 0036.7 16c16.2 0 28.7-5.4 37.3-16zM1004 95.8V187h-12.3V97c0-15-3-26-9-33-6-6.8-15.8-10.3-29.3-10.3-15 0-27 4.6-36.1 13.9a50.7 50.7 0 00-13.6 37v82.5h-12.3V45.5h12v25.4c4-9 10.8-16.6 19.4-21.5 8.7-5 18.6-7.4 29.7-7.4 34.3 0 51.5 18 51.5 53.8z"/></g></svg>

			<ul :class="isOpen?'block':'hidden'" class="md:hidden">
                {*				isOpen ? document.documentElement.classList.add('noScroll') : document.documentElement.classList.remove('noScroll');*}
				<li></li>
			</ul>
		</nav>


</header>
{jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v1.11.1/dist/alpine.js" attributes=['async', 'defer']}
{*{navigation_original}*}