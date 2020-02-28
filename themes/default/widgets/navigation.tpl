{* Is this necessary in smarty? :puke: *}
{if (!isset($inverse ))} {$inverse=false} {/if}
{if (!isset($white ))} {$white=[]} {/if}
<header class="header" style="{$style|default}">
	<div class="shell shell-fluid">
		<div class="header_inner" x-data="{ open: false }">
			<nav class="nav" :class="{ 'open': open }">
				<ul>
					<li class="navBrand navBrand hidden md:block pt-1 {(in_array('newicon', $white)||$inverse) ? 'textLight' : ''}">
						<a href="{page_url nice="home"}"><img src="{(in_array('newicon', $white)||$inverse) ? {asset path='/images/logo-white-secondary@2x.png'}:{asset path='/images/newicon.svg'}}" alt="" width="70" height="15"></a>
					</li>
					<li class="navServices has_dropdown
						{(in_array('services', $white)||$inverse) ? 'textLight' : ''}
						{({on_page id=['architecture', 'software', 'web-development', 'digital-marketing']}) ? 'isActive': ''}">
						<a class="nav_link" href="#">services</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item.tpl" link="architecture" title="Architecture &amp; UX Design" note="Rapid prototyping, design, and user experience services." icon='ico-draw'}
                                    {include file="nav_menu_item.tpl" link="software" title="Software Development" note="Software for desktop, mobile and everything in between." icon='ico-layers'}
                                    {include file="nav_menu_item.tpl" link="web-development" title="Web Development" note="Websites, e-commerce and CMSs to boost your business." icon='ico-website'}
                                    {include file="nav_menu_item.tpl" link="digital-marketing" title="Digital Marketing" note="Grow your business with SEO, PPC and Social media." icon='ico-chart'}
								</ul>
							</div>
						</div>
					</li>

					<li class="{(in_array('work', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='work'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='work'}">work</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item.tpl" link="work" title="Our Work" note="Our work" icon='ico-work'}
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
										{include file="nav_menu_item.tpl" link="about" title="About us" note="Our mission, vision and mantra." icon='ico-peak'}
										{include file="nav_menu_item.tpl" link="culture" title="Culture" note="Learn about the way we do things around here." icon='ico-social-circle'}
										{include file="nav_menu_item.tpl" link="history" title="History" note="See where we started and how we’ve grown." icon='ico-history'}
										{include file="nav_menu_item.tpl" link="team" title="The Team" note="Meet the people that make it all happen." icon='ico-team'}
									</ul>
								</div>
								<div class="dropdown_col">
									<ul>
										{include file="nav_menu_item.tpl" link="brand-values" title="Brand Values" note="Values that dirve our business" icon='ico-dna'}
										{include file="nav_menu_item.tpl" link="join" title="Join the team" note="Open job opportunities in Newicon" icon='ico-puzzle'}
										{include file="nav_menu_item.tpl" link="why-join" title="Why join us?" note="Why choose Newicon to grow your career" icon='ico-piece-pizza'}
										{include file="nav_menu_item.tpl" link="blog" title="Blog" note="News, thoughts and feelings" icon='ico-blog'}
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
                                    {include file="nav_menu_item.tpl" link="approach" title="Our Approach" note="How we build innovative digital products and services." icon='ico-approach'}
                                    {include file="nav_menu_item.tpl" link="architecture-process" title="Architecture process" note="Our unique process for visual and technical design." icon='ico-process'}
                                    {include file="nav_menu_item.tpl" link="technologies" title="Technologies" note="Our philosophies and most used technologies." icon='ico-technologies'}
                                    {include file="nav_menu_item.tpl" link="neon" title="Neon Framework" note="Our innovative framework, helping to create the future." icon='ico-framework'}
								</ul>
							</div>
						</div>
					</li>

					<li class="md:overflow-hidden {(in_array('contact', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='contact'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='contact'}" >contact</a>
						<div class="dropdown md:hidden">
							<div class="dropdown_group">
								<ul>
                                    {include file="nav_menu_item.tpl" link="contact" title="Contact us" note="Contact" icon='ico-contact'}
								</ul>
							</div>
						</div>
					</li>

				</ul>
			</nav>

			<a href="{page_url nice="home"}" class="header_mobileLogo">
				<img src="{asset path='/images/newicon.svg'}" alt="Newicon logo" width="80">
			</a>

			<a href="#" class="navTrigger" @click="tab = 'foo'; alert('oi')">
				<span></span>
				<span></span>
			</a>
		</div>
	</div>
</header>
