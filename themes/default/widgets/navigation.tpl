{* Is this necessary in smarty? :puke: *}
{if (!isset($inverse ))} {$inverse=false} {/if}
{if (!isset($white ))} {$white=[]} {/if}
{*
<style>
	Rather css only way of adjusting text color based on bg
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
					<li class="visible-xs-block visible-sm-block">
						<a href="#"></a>
					</li>
					<li class="navBrand hidden-xs hidden-sm {(in_array('newicon', $white)||$inverse) ? 'text-white' : ''}">
						<a href="{page_url nice="home"}">
							<img src="{(in_array('newicon', $white)||$inverse) ? {asset path='/images/logo-white-secondary@2x.png'}:{asset path='/images/newicon.svg'}}" alt="" width="70" height="15">
						</a>
					</li>
					<li class="navServices
							{(in_array('services', $white)||$inverse) ? 'text-white' : ''}
							{(on_url(
								{page_url nice='architecture'},
								{page_url nice='software'},
								{page_url nice='web-development'},
								{page_url nice='digital-marketing'}
							)) ? 'isActive': ''}">
						<a href="#">services</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<h6>Featured Services</h6>
								<ul>
									<li class="dropdown_item {(on_url({page_url nice='architecture'}))?'isActive':''}">
										<a href="{page_url nice='architecture'}">
											<div class="dropdown_image">
												<i class="ico-draw"></i>
											</div>
											<div class="dropdown_content">
												<h5>Architecture &amp; UX Design</h5>
												<p>Rapid prototyping, design, and user experience services.</p>
											</div>
										</a>
									</li>
									<li class="dropdown_item {(on_url({page_url nice='software'}))?'isActive':''}">
										<a href="{page_url nice='software'}">
											<div class="dropdown_image">
												<i class="ico-layers"></i>
											</div>

											<div class="dropdown_content">
												<h5>Software Development</h5>
												<p>Software for desktop, mobile and everything in between.</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='web-development'}))?'isActive':''}">
										<a href="{page_url nice='web-development'}">
											<div class="dropdown_image">
												<i class="ico-website"></i>
											</div>
											<div class="dropdown_content">
												<h5>Web Development</h5>
												<p>Websites, e-commerce and CMSs to boost your business.</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='digital-marketing'}))?'isActive':''}">
										<a href="{page_url nice='digital-marketing'}">
											<div class="dropdown_image">
												<i class="ico-chart"></i>
											</div>
											<div class="dropdown_content">
												<h5>Digital Marketing</h5>
												<p>Grow your business with SEO, PPC and Social media.</p>
											</div>
										</a>
									</li>
								</ul>
							</div><!-- /.dropdown_group -->

							<div class="dropdown_group">
								<h6>Enterprise Services</h6>
								<ul>
									<li class="dropdown_item">
										<a href="{page_url nice='digital-transformation'}">
											<div class="dropdown_image">
												<i class="ico-idea"></i>
											</div>
											<div class="dropdown_content">
												<h5>Digital Transformation</h5>
												<p>
													New digital projects to digitise, humanise and optimise.
												</p>
											</div>
										</a>
									</li>
								</ul>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('work', $white)||$inverse) ? 'text-white' : ''} {(on_url({page_url nice='work'}))?'isActive':''}">
						<a href="{page_url nice='work'}">our work</a>
					</li>

					<li class="{(in_array('blog', $white)||$inverse) ? 'text-white' : ''} {(on_url({page_url nice='blog'}))?'isActive':''}">
						<a href="{page_url nice='blog'}">insights</a>
					</li>

					<li class="{(in_array('about', $white)||$inverse) ? 'text-white' : ''}
						{(on_url({page_url nice='about'}, {page_url nice='culture'},{page_url nice='history'},{page_url nice='team'},{page_url nice='brand-values'})) ? 'isActive' : ''}">
						<a href="{page_url nice='about'}">about us</a>
						<div class="dropdown">
							<div class="dropdown_group">
								<h6>About us {on_url({page_url nice='about'},{page_url nice='culture'},{page_url nice='history'},{page_url nice='team'},{page_url nice='brand-values'})}</h6>

								<ul>
									<li class="dropdown_item {(on_url({page_url nice='about'}))?'isActive':''}">
										<a href="{page_url nice='about'}">
											<div class="dropdown_image">
												<i class="ico-peak"></i>
											</div>

											<div class="dropdown_content">
												<h5>About us</h5>
												<p>
													Our mission, vision and mantra
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='culture'}))?'isActive':''}">
										<a href="{page_url nice='culture'}">
											<div class="dropdown_image">
												<i class="ico-social-circle"></i>
											</div>

											<div class="dropdown_content">
												<h5>Culture</h5>

												<p>
													Learn about the way we do things around here
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='history'}))?'isActive':''}">
										<a href="{page_url nice='history'}">
											<div class="dropdown_image">
												<i class="ico-history"></i>
											</div>

											<div class="dropdown_content">
												<h5>History</h5>

												<p>
													Learn about where we started and how we’ve grown
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item  {(on_url({page_url nice='team'}))?'isActive':''}">
										<a href="{page_url nice='team'}">
											<div class="dropdown_image">
												<i class="ico-team"></i>
											</div>

											<div class="dropdown_content">
												<h5>The team</h5>

												<p>
													Meet the people that make it all happen
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item  {(on_url({page_url nice='brand-values'}))?'isActive':''}">
										<a href="{page_url nice='brand-values'}">
											<div class="dropdown_image">
												<i class="ico-dna"></i>
											</div>

											<div class="dropdown_content">
												<h5>Brand values</h5>

												<p>
													Get more info on the 3 core values that drive our business
												</p>
											</div>
										</a>
									</li>
									{*
									<li class="dropdown_item {(on_url({page_url nice='join'}))?'isActive':''}">
										<a href="{page_url nice='join'}"><div class="dropdown_image"><i class="ico-puzzle"></i></div><div class="dropdown_content">
												<h5>Join the team</h5>
												<p>Open job oportunities in Newicon</p></div>
										</a>
									</li>
									<li class="dropdown_item {(on_url({page_url nice='why-join'}))?'isActive':''}">
										<a href="{page_url nice='why-join'}"><div class="dropdown_image"><i class="ico-piece-pizza"></i></div><div class="dropdown_content">
												<h5>Why join us?</h5>
												<p>Why choose Newicon to grow your career</p></div>
										</a>
									</li>
									*}
								</ul>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('approach', $white)||$inverse) ? 'text-white' : ''}
						{(on_url({page_url nice='approach'}))?'isActive':''}
						{(on_url({page_url nice='architecture-process'}))?'isActive':''}
						{(on_url({page_url nice='technologies'}))?'isActive':''}
						{(on_url({page_url nice='neon'}))?'isActive':''}
						">
						<a href="{page_url nice='approach'}">our approach</a>

						<div class="dropdown">
							<div class="dropdown_group">
								<h6>Our Approach</h6>

								<ul>
									<li class="dropdown_item {(on_url({page_url nice='approach'}))?'isActive':''}">
										<a href="{page_url nice='approach'}">
											<div class="dropdown_image">
												<i class="ico-approach"></i>
											</div>

											<div class="dropdown_content">
												<h5>Our Approach</h5>

												<p>
													How we build innovative digital products and services
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='architecture-process'}))?'isActive':''}">
										<a href="{page_url nice='architecture-process'}">
											<div class="dropdown_image">
												<i class="ico-process"></i>
											</div>

											<div class="dropdown_content">
												<h5>Architecture process</h5>

												<p>
													Our unique process for visual and technical design
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='technologies'}))?'isActive':''}">
										<a href="{page_url nice='technologies'}">
											<div class="dropdown_image">
												<i class="ico-technologies"></i>
											</div>

											<div class="dropdown_content">
												<h5>Technologies</h5>

												<p>
													Our philosophies and most used technologies
												</p>
											</div>
										</a>
									</li>

									<li class="dropdown_item {(on_url({page_url nice='neon'}))?'isActive':''}">
										<a href="{page_url nice='neon'}">
											<div class="dropdown_image">
												<i class="ico-framework"></i>
											</div>

											<div class="dropdown_content">
												<h5>Neon Framework</h5>

												<p>
													Our innovative framework, helping to create the future.
												</p>
											</div>
										</a>
									</li>
								</ul>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('join', $white)||$inverse) ? 'text-white' : ''}
						{(on_url({page_url nice='join'}))?'isActive':''}
						{(on_url({page_url nice='why-join'}))?'isActive':''}
						">
						<a href="{page_url nice='join'}">careers</a>

						<div class="dropdown">
							<div class="dropdown_group">
								<h6>Careers</h6>
								<ul>
									<li class="dropdown_item {(on_url({page_url nice='join'}))?'isActive':''}">
										<a href="{page_url nice='join'}"><div class="dropdown_image"><i class="ico-puzzle"></i></div><div class="dropdown_content">
												<h5>Join the team</h5>
												<p>Open job oportunities in Newicon</p></div>
										</a>
									</li>
									<li class="dropdown_item {(on_url({page_url nice='why-join'}))?'isActive':''}">
										<a href="{page_url nice='why-join'}"><div class="dropdown_image"><i class="ico-piece-pizza"></i></div><div class="dropdown_content">
												<h5>Why join us?</h5>
												<p>Why choose Newicon to grow your career</p></div>
										</a>
									</li>
								</ul>
							</div><!-- /.dropdown_group -->
						</div><!-- /.dropdown -->
					</li>

					<li class="{(in_array('contact', $white)||$inverse) ? 'text-white' : ''} {(on_url({page_url nice='contact'}))?'isActive':''}">
						<a href="{page_url nice='contact'}">contact us</a>
					</li>

					<li class="{(in_array('login', $white)||$inverse) ? 'text-white' : ''} {(on_url({page_url nice='login'}))?'isActive':''}">
						<a href="#">login</a>
					</li>
				</ul>
			</nav><!-- /.nav -->

			<a href="{page_url nice="home"}" class="logo">
				<img src="{asset path='/images/logo-mobile@2x.png'}" alt="" width="70" height="15">
			</a>

			<a href="#" class="navTrigger {(in_array('contact', $white)||$inverse) ? 'text-white' : ''}">
				<span></span>

				<span></span>
			</a>
		</div><!-- /.header_inner -->
	</div><!-- /.shell -->
</header><!-- /.header -->
