{* Is this necessary in smarty? :puke: *}
{if (!isset($inverse ))} {$inverse=false} {/if}
{if (!isset($white ))} {$white=[]} {/if}
{*
<style>
	Rather neat css only way of adjusting text color based on bg
	https://css-tricks.com/switch-font-color-for-different-backgrounds-with-css/
	:root {
		/* theme color variables to use in RGB declarations */
		--bgred: 200;
		--bggreen: 60;
		--bgblue: 255;
		/* the threshold at which colors are considered "light".
		Range: decimals from 0 to 1, recommended 0.5 - 0.6 */
		--threshold: 0.5;
		/* the threshold at which a darker border will be applied.
		Range: decimals from 0 to 1, recommended 0.8+ */
		--border-threshold: 0.8;
	}

	.nav {
		/* sets the background for the base class */
		/*background: rgb(var(--bgred), var(--bggreen), var(--bgblue));*/

		/* calculates perceived lightness using the sRGB Luma method
		Luma = (red * 0.2126 + green * 0.7152 + blue * 0.0722) / 255 */
		--r: calc(var(--bgred) * 0.2126);
		--g: calc(var(--bggreen) * 0.7152);
		--b: calc(var(--bgblue) * 0.0722);
		--sum: calc(var(--r) + var(--g) + var(--b));
		--perceived-lightness: calc(var(--sum) / 255);

		/* shows either white or black color depending on perceived darkness */
		color: hsl(0, 0%, calc((var(--perceived-lightness) - var(--threshold)) * -10000000%));
	}
</style>
*}

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

										<li class="dropdown_item {(on_url({page_url nice='about'}))?'isActive':''}">
											<a href="{page_url nice='about'}">
												<div class="dropdown_image"><i class="ico-peak"></i></div>
												<div class="dropdown_content">
													<h5>About us</h5>
													<p>Our mission, vision and mantra</p>
												</div>
											</a>
										</li>

										<li class="dropdown_item {(on_url({page_url nice='culture'}))?'isActive':''}">
											<a href="{page_url nice='culture'}">
												<div class="dropdown_image"><i class="ico-social-circle"></i></div>
												<div class="dropdown_content">
													<h5>Culture</h5>
													<p>Learn about the way we do things around here</p>
												</div>
											</a>
										</li>

										<li class="dropdown_item {(on_url({page_url nice='history'}))?'isActive':''}">
											<a href="{page_url nice='history'}">
												<div class="dropdown_image"><i class="ico-history"></i></div>
												<div class="dropdown_content">
													<h5>History</h5>
													<p>See where we started and how we’ve grown</p>
												</div>
											</a>
										</li>

										<li class="dropdown_item  {(on_url({page_url nice='team'}))?'isActive':''}">
											<a href="{page_url nice='team'}">
												<div class="dropdown_image"><i class="ico-team"></i></div>
												<div class="dropdown_content">
													<h5>The team</h5>
													<p>Meet the people that make it all happen</p>
												</div>
											</a>
										</li>


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
									<li class="dropdown_item {(on_url({page_url nice='approach'}))?'isActive':''}">
										<a href="{page_url nice='approach'}">
											<div class="dropdown_image"><i class="ico-approach"></i></div>
											<div class="dropdown_content">
												<h5 class="dropdown_title">Our Approach</h5>
												<p>How we build innovative digital products and services</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='architecture-process'}))?'isActive':''}">
										<a href="{page_url nice='architecture-process'}">
											<div class="dropdown_image"><i class="ico-process"></i></div>
											<div class="dropdown_content">
												<h5 class="dropdown_title">Architecture process</h5>
												<p>Our unique process for visual and technical design</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='technologies'}))?'isActive':''}">
										<a href="{page_url nice='technologies'}">
											<div class="dropdown_image"><i class="ico-technologies"></i></div>

											<div class="dropdown_content">
												<h5>Technologies</h5>
												<p>Our philosophies and most used technologies</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='neon'}))?'isActive':''}">
										<a href="{page_url nice='neon'}">
											<div class="dropdown_image"><i class="ico-framework"></i></div>
											<div class="dropdown_content">
												<h5>Neon Framework</h5>
												<p>Our innovative framework, helping to create the future.</p>
											</div>
										</a>
									</li>
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
