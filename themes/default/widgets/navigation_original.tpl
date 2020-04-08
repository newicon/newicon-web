{* Is this necessary in smarty? 🤮 *}
{if (!isset($inverse))} {$inverse=false} {/if}
{if (!isset($white))} {$white=[]} {/if}
<header class="header" style="{$style|default}">
	<div x-data="{ isOpen: false }" :class="isOpen ? 'open' : ''" >
		<div class="header_inner">
			<nav class="nav" >
				<ul>
					<li class="navBrand navBrand hidden lg:block pt-1 {(in_array('newicon', $white)||$inverse) ? 'textLight' : ''}">
						<a aria-label="Newicon home page" href="{page_url nice="home"}"><img src="{(in_array('newicon', $white)||$inverse) ? {asset path='/images/newicon-white.svg'}:{asset path='/images/newicon.svg'}}" alt="Newicon logo" width="70" height="15"></a>
					</li>
					<li class="navServices has_dropdown
						{(in_array('services', $white)||$inverse) ? 'textLight' : ''}
						{({on_page id=['architecture', 'software', 'web-development', 'digital-marketing']}) ? 'isActive': ''}">
						<a class="nav_link" href="#">services</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item_original.tpl" link="architecture" title="Architecture &amp; UX Design" note="Rapid prototyping, design, and user experience services." icon='ico-architecture'}
                                    {include file="nav_menu_item_original.tpl" link="software" title="Software Development" note="Software for desktop, mobile and everything in between." icon='ico-software-dev'}
                                    {include file="nav_menu_item_original.tpl" link="web-development" title="Web Development" note="Websites, e-commerce and CMSs to boost your business." icon='ico-web-dev'}
                                    {include file="nav_menu_item_original.tpl" link="digital-marketing" title="Digital Marketing" note="Grow your business with SEO, PPC and Social media." icon='ico-digital-marketing'}
								</ul>
							</div>
						</div>
					</li>

					<li class="{(in_array('work', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='work'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='work'}">work</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item_original.tpl" link="work" title="Our Work" note="Our work" icon='ico-work'}
								</ul>
							</div>
						</div>
					</li>

					<li class="{(in_array('about', $white)||$inverse) ? 'textLight' : ''}
					{({on_page id=['about', 'culture', 'history', 'team', 'brand-values']}) ? 'isActive':''} has_dropdown">
						<a class="nav_link" href="#">about</a>
						<div class="dropdown dropdown_hasTwoColumn">
							<div class="dropdown_group" >
								<div class="dropdown_col">
									<ul>
										{include file="nav_menu_item_original.tpl" link="about" title="About us" note="Our mission, vision and mantra." icon='ico-about-us'}
										{include file="nav_menu_item_original.tpl" link="culture" title="Culture" note="Learn about the way we do things around here." icon='ico-culture'}
										{include file="nav_menu_item_original.tpl" link="history" title="History" note="See where we started and how we’ve grown." icon='ico-history'}
										{include file="nav_menu_item_original.tpl" link="team" title="The Team" note="Meet the people that make it all happen." icon='ico-team'}
									</ul>
								</div>
								<div class="dropdown_col">
									<ul>
										{include file="nav_menu_item_original.tpl" link="brand-values" title="Brand Values" note="Values that dirve our business" icon='ico-dna'}
										{include file="nav_menu_item_original.tpl" link="join" title="Join the team" note="Open job opportunities in Newicon" icon='ico-join'}
										{include file="nav_menu_item_original.tpl" link="why-join" title="Why join us?" note="Why choose Newicon to grow your career" icon='ico-pizza'}
										{include file="nav_menu_item_original.tpl" link="blog" title="Blog" note="News, thoughts and feelings" icon='ico-blog'}
									</ul>
								</div>
							</div>
						</div>
					</li>

					<li class="{(in_array('approach', $white)||$inverse) ? 'textLight' : ''}
						{({on_page id=['approach', 'architecture-process', 'technologies', 'neon']}) ? 'isActive': ''}
						has_dropdown
						">
						<a class="nav_link" href="#">approach</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item_original.tpl" link="approach" title="Our Approach" note="How we build innovative digital products and services." icon='ico-approach'}
                                    {include file="nav_menu_item_original.tpl" link="architecture-process" title="Architecture process" note="Our unique process for visual and technical design." icon='ico-process'}
                                    {include file="nav_menu_item_original.tpl" link="technologies" title="Technologies" note="Our philosophies and most used technologies." icon='ico-technologies'}
                                    {include file="nav_menu_item_original.tpl" link="neon" title="Neon Framework" note="Our innovative framework, helping to create the future." icon='ico-neon'}
								</ul>
							</div>
						</div>
					</li>

					<li class="md:overflow-hidden {(in_array('contact', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='contact'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='contact'}" >contact</a>
						<div class="dropdown md:hidden">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item_original.tpl" link="contact" title="Contact us" note="Contact" icon='ico-contact'}
								</ul>
							</div>
						</div>
					</li>

				</ul>
			</nav>

			<a href="{page_url nice="home"}" class="w-24 mx-auto header_mobileLogo">
				<img src="{asset path='/images/newicon.svg'}" alt="Newicon logo" width="80">
			</a>

			<a href="#" class="navTrigger" @click.prevent="isOpen = !isOpen; ">
{*				isOpen ? document.documentElement.classList.add('noScroll') : document.documentElement.classList.remove('noScroll');*}
				<span></span>
				<span></span>
			</a>
		</div>
	</div>
</header>
{jsFile src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v1.11.1/dist/alpine.js" attributes=['async', 'defer']}

