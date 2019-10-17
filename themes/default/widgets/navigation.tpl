{* Is this necessary in smarty? :puke: *}
{if (!isset($inverse ))} {$inverse=false} {/if}
{if (!isset($white ))} {$white=[]} {/if}

<header class="header">
	<div class="shell shell-fluid">
		<div class="header_inner">
			<nav class="nav">
				<ul>
					<li class="visible-xs-block visible-sm-block"><a href="#"></a></li>
					<li class="navBrand hidden-xs hidden-sm {(in_array('newicon', $white)||$inverse) ? 'textLight' : ''}">
						<a href="{page_url nice="home"}"><img src="{(in_array('newicon', $white)||$inverse) ? {asset path='/images/logo-white-secondary@2x.png'}:{asset path='/images/newicon.svg'}}" alt="" width="70" height="15"></a>
					</li>
					<li class="navServices has_dropdown
						{(in_array('services', $white)||$inverse) ? 'textLight' : ''}
						{({on_page id=['architecture', 'software', 'web-development', 'digital-marketing']}) ? 'isActive': ''}">
						<a class="nav_link" href="#">services</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {nav_menu_item link="architecture" title="Architecture &amp; UX Design" note="Rapid prototyping, design, and user experience services." icon='ico-draw'}
                                    {nav_menu_item link="software" title="Software Development" note="Software for desktop, mobile and everything in between." icon='ico-layers'}
                                    {nav_menu_item link="web-development" title="Web Development" note="Websites, e-commerce and CMSs to boost your business." icon='ico-website'}
                                    {nav_menu_item link="digital-marketing" title="Digital Marketing" note="Grow your business with SEO, PPC and Social media." icon='ico-chart'}
								</ul>
							</div><!-- /.dropdown_group -->
						</div>
					</li>

					<li class="{(in_array('work', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='work'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='work'}">work</a>
					</li>

					<li class="{(in_array('about', $white)||$inverse) ? 'textLight' : ''}
					{({on_page id=['about', 'culture', 'history', 'team', 'brand-values']}) ? 'isActive':''} has_dropdown">
						<a class="nav_link" href="{page_url nice='about'}">about</a>
						<div class="dropdown dropdown_hasTwoColumn">
							<div class="dropdown_group" >
								<div class="dropdown_col">
									<ul>
										{nav_menu_item link="about" title="About us" note="Our mission, vision and mantra." icon='ico-peak'}
										{nav_menu_item link="culture" title="Culture" note="Learn about the way we do things around here." icon='ico-social-circle'}
										{nav_menu_item link="history" title="History" note="See where we started and how we’ve grown." icon='ico-history'}
										{nav_menu_item link="team" title="The Team" note="Meet the people that make it all happen." icon='ico-team'}
									</ul>
								</div>
								<div class="dropdown_col">
									<ul>
										{nav_menu_item link="brand-values" title="Brand Values" note="Values that dirve our business" icon='ico-dna'}
										{nav_menu_item link="join" title="Join the team" note="Open job opportunities in Newicon" icon='ico-puzzle'}
										{nav_menu_item link="why-join" title="Why join us?" note="Why choose Newicon to grow your career" icon='ico-piece-pizza'}
										{nav_menu_item link="blog" title="Blog" note="News, thoughts and feelings" icon='ico-blog'}
									</ul>
								</div>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('approach', $white)||$inverse) ? 'textLight' : ''}
						{({on_page id=['approach', 'architecture-process', 'technologies', 'neon']}) ? 'isActive': ''}
						has_dropdown
						">
						<a class="nav_link" href="{page_url nice='approach'}">approach</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<ul>
                                    {nav_menu_item link="approach" title="Our Approach" note="How we build innovative digital products and services." icon='ico-approach'}
                                    {nav_menu_item link="architecture-process" title="Architecture process" note="Our unique process for visual and technical design." icon='ico-process'}
                                    {nav_menu_item link="technologies" title="Technologies" note="Our philosophies and most used technologies." icon='ico-technologies'}
                                    {nav_menu_item link="neon" title="Neon Framework" note="Our innovative framework, helping to create the future." icon='ico-framework'}
								</ul>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('contact', $white)||$inverse) ? 'textLight' : ''} {(on_url({page_url nice='contact'}))?'isActive':''}">
						<a class="nav_link" href="{page_url nice='contact'}">contact</a>
					</li>

				</ul>
			</nav><!-- /.nav -->

			<a href="{page_url nice="home"}" class="header_mobileLogo">
				<img src="{asset path='/images/newicon.svg'}" alt="Newicon logo" width="80">
			</a>

			<a href="#" class="navTrigger">
				<span></span>
				<span></span>
			</a>
		</div><!-- /.header_inner -->
	</div><!-- /.shell -->
</header><!-- /.header -->
